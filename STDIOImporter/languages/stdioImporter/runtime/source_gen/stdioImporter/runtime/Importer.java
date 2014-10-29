package stdioImporter.runtime;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import stdio_parser.func_decl;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import stdio_parser.var_decl;
import stdio_parser.CodeGenerator;
import java.util.Iterator;
import stdio_parser.struct_decl;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import stdio_parser.vartypedef_decl;
import stdio_parser.def_expr;

public class Importer {


  public SNode makeFuncPointer(func_decl v, SNode mymodule) {
    // badan in if then else ro bebar to buildType ke object begire asan 
    SNode frt = SConceptOperations.createNewNode("com.mbeddr.core.modules.structure.FunctionRefType", null);
    Typer typer = new Typer();
    SLinkOperations.setTarget(frt, "returnType", typer.buildType((String) v.getReturn_type(), mymodule), true);
    for (Object p : v.getParams()) {
      if (p instanceof func_decl) {
        ListSequence.fromList(SLinkOperations.getTargets(frt, "argTypes", true)).addElement(this.makeFuncPointer((func_decl) p, mymodule));
      } else {
        ListSequence.fromList(SLinkOperations.getTargets(frt, "argTypes", true)).addElement(typer.buildType((String) p, mymodule));
      }
    }
    return frt;
  }

  public SNode makeVar(var_decl v, SNode mymodule) {
    Typer typer = new Typer();
    if (v.getFuncpointer() != null) {
      return this.makeFuncPointer(v.getFuncpointer(), mymodule);
    } else {
      return typer.buildType(v.getType(), mymodule);
    }
  }




  public static boolean doImport(SNode module, String filename) {
    try {
      CodeGenerator cg = ParserAdapter.Parse(filename);
      if (cg == null) {
        return false;
      }
      Typer typer = new Typer();
      Importer imp = new Importer();

      // importing structs ................................ 
      {
        Iterator<struct_decl> s_it = ListSequence.fromList(cg.getStructs()).iterator();
        struct_decl s_var;
        while (s_it.hasNext()) {
          s_var = s_it.next();
          SNode sd = SConceptOperations.createNewNode("com.mbeddr.core.udt.structure.StructDeclaration", null);
          SPropertyOperations.set(sd, "name", s_var.getName());
          ListSequence.fromList(SLinkOperations.getTargets(module, "contents", true)).addElement(sd);
          SNode sdi = SConceptOperations.createNewNode("com.mbeddr.core.udt.structure.StructInitExpression", null);
          {
            Iterator<var_decl> dec_it = ListSequence.fromList(s_var.getDecs()).iterator();
            var_decl dec_var;
            while (dec_it.hasNext()) {
              dec_var = dec_it.next();
              SNode nt = SConceptOperations.createNewNode("com.mbeddr.core.expressions.structure.Type", null);
              nt = imp.makeVar(dec_var, module);
              SNode mm = SConceptOperations.createNewNode("com.mbeddr.core.udt.structure.Member", null);
              SLinkOperations.setTarget(mm, "type", nt, true);
              SPropertyOperations.set(mm, "name", dec_var.getID());
              ListSequence.fromList(SLinkOperations.getTargets(sd, "members", true)).addElement(mm);

            }
          }
        }
      }


      // importing typedefs ............................ 
      for (vartypedef_decl td : ListSequence.fromList(cg.getTypedef_vars())) {
        SNode tdef = SConceptOperations.createNewNode("com.mbeddr.core.udt.structure.TypeDef", null);
        SPropertyOperations.set(tdef, "name", td.getAs());
        SLinkOperations.setTarget(tdef, "original", typer.buildType(td.getDef(), module), true);

        ListSequence.fromList(SLinkOperations.getTargets(module, "contents", true)).addElement(tdef);
      }

      // importing defines .............................. 
      for (def_expr df : ListSequence.fromList(cg.defines)) {
        if (df.exp instanceof Integer) {
          SNode gcd = SConceptOperations.createNewNode("com.mbeddr.core.modules.structure.GlobalConstantDeclaration", null);
          SPropertyOperations.set(gcd, "name", ((String) df.ID));
          SNode val = SConceptOperations.createNewNode("com.mbeddr.core.expressions.structure.NumberLiteral", null);
          SPropertyOperations.set(val, "value", ((Integer) df.exp).toString());
          SLinkOperations.setTarget(gcd, "value", val, true);
          ListSequence.fromList(SLinkOperations.getTargets(module, "contents", true)).addElement(gcd);
        } else {
          if (df.isStruct) {
            SNode tdef = SConceptOperations.createNewNode("com.mbeddr.core.udt.structure.TypeDef", null);
            SPropertyOperations.set(tdef, "name", (String) df.ID);
            SLinkOperations.setTarget(tdef, "original", typer.buildType((String) df.exp, module), true);

            ListSequence.fromList(SLinkOperations.getTargets(module, "contents", true)).addElement(tdef);
          } else {
            SNode val = SConceptOperations.createNewNode("com.mbeddr.core.modules.structure.StaticMemoryLocation", null);
            SPropertyOperations.set(val, "name", (String) df.ID);
            SNode exp = SConceptOperations.createNewNode("com.mbeddr.core.pointers.structure.StringLiteral", null);
            SPropertyOperations.set(exp, "value", (String) df.exp);
            SLinkOperations.setTarget(val, "value", exp, true);
            ListSequence.fromList(SLinkOperations.getTargets(module, "contents", true)).addElement(val);
          }
        }
      }

      // importing global variables ............................. 
      for (var_decl v : ListSequence.fromList(cg.getVars())) {
        SNode gvd = SConceptOperations.createNewNode("com.mbeddr.core.modules.structure.GlobalVariableDeclaration", null);
        SPropertyOperations.set(gvd, "name", v.getID());
        SLinkOperations.setTarget(gvd, "type", imp.makeVar(v, module), true);
        ListSequence.fromList(SLinkOperations.getTargets(module, "contents", true)).addElement(gvd);
      }

      // importing functions' prototypes ...................... 
      for (func_decl f : ListSequence.fromList(cg.getFunctions())) {
        SNode fp = SConceptOperations.createNewNode("com.mbeddr.core.modules.structure.FunctionPrototype", null);
        SPropertyOperations.set(fp, "name", f.getID());
        SLinkOperations.setTarget(fp, "type", typer.buildType((String) f.getReturn_type(), module), true);
        int n = 0;
        for (Object p : f.getParams()) {
          SNode arg = SConceptOperations.createNewNode("com.mbeddr.core.modules.structure.Argument", null);
          SPropertyOperations.set(arg, "name", "p" + n++);
          if (p instanceof func_decl) {
            SLinkOperations.setTarget(arg, "type", imp.makeFuncPointer(((func_decl) p), module), true);
          } else {
            SLinkOperations.setTarget(arg, "type", typer.buildType(((String) p), module), true);
          }
          ListSequence.fromList(SLinkOperations.getTargets(fp, "arguments", true)).addElement(arg);
        }
        ListSequence.fromList(SLinkOperations.getTargets(module, "contents", true)).addElement(fp);
      }


    } catch (Exception e) {
      return false;
    }
    return true;
  }
}
