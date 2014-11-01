package stdioImporter.runtime;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import stdio_parser.Function;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import stdio_parser.Variable;
import stdio_parser.Declaration;
import jetbrains.mps.internal.collections.runtime.Sequence;
import stdio_parser.Struct;
import stdio_parser.Typedef;
import stdio_parser.Define;
import stdio_parser.ConditionalBlock;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import java.util.Iterator;

public class ImporterCore {
  private Typer typer = new Typer();
  private SNode module;
  private boolean condition = true;



  private SNode makeFuncPointer(Function v) {
    // badan in if then else ro bebar to buildType ke object begire asan 
    SNode frt = SConceptOperations.createNewNode("com.mbeddr.core.modules.structure.FunctionRefType", null);
    Typer typer = new Typer();
    SLinkOperations.setTarget(frt, "returnType", typer.buildType((String) v.getReturn_type(), module), true);
    for (Object p : v.getParams()) {
      if (p instanceof Function) {
        ListSequence.fromList(SLinkOperations.getTargets(frt, "argTypes", true)).addElement(this.makeFuncPointer((Function) p));
      } else {
        ListSequence.fromList(SLinkOperations.getTargets(frt, "argTypes", true)).addElement(typer.buildType((String) p, module));
      }
    }
    return frt;
  }

  private SNode makeVar(Variable v) {
    if (v.getFuncpointer() != null) {
      return this.makeFuncPointer(v.getFuncpointer());
    } else {
      return typer.buildType(v.getType(), module);
    }
  }



  public void addDeclarations(Iterable<Declaration> declarations, SNode moduleNode) {
    this.module = moduleNode;

    for (Declaration dec : Sequence.fromIterable(declarations)) {
      if (dec instanceof Struct) {
        // importing structs ................................ 
        this.addStruct((Struct) dec);
      } else if (dec instanceof Typedef) {
        // importing typedefs ............................ 
        this.addTypedef((Typedef) dec);
      } else if (dec instanceof Define) {
        // importing defines .............................. 
        this.addDefine((Define) dec);
      } else if (dec instanceof Variable) {
        // importing global variables ............................. 
        this.addVariable((Variable) dec);
      } else if (dec instanceof Function) {
        // importing function prototypes ...................... 
        this.addFunction((Function) dec);
      } else if (dec instanceof ConditionalBlock) {
        // importing conditional blocks ...................... 
        ConditionalBlock cb = (ConditionalBlock) dec;
        this.addDeclarations(cb.getBlock(condition), module);
      }

    }
  }



  private void addStructMember(SNode sd, Declaration dec) {
    if (dec instanceof Variable) {
      SNode nt = SConceptOperations.createNewNode("com.mbeddr.core.expressions.structure.Type", null);
      nt = this.makeVar((Variable) dec);
      SNode mm = SConceptOperations.createNewNode("com.mbeddr.core.udt.structure.Member", null);
      SLinkOperations.setTarget(mm, "type", nt, true);
      SPropertyOperations.set(mm, "name", dec.getID());
      ListSequence.fromList(SLinkOperations.getTargets(sd, "members", true)).addElement(mm);
    } else if (dec instanceof ConditionalBlock) {
      ConditionalBlock cb = (ConditionalBlock) dec;
      for (Declaration blockdec : ListSequence.fromList(cb.getBlock(this.condition))) {
        this.addStructMember(sd, blockdec);
      }

    }
  }



  private void addStruct(Struct s) {
    SNode sd = SConceptOperations.createNewNode("com.mbeddr.core.udt.structure.StructDeclaration", null);
    SPropertyOperations.set(sd, "name", s.getID());
    ListSequence.fromList(SLinkOperations.getTargets(module, "contents", true)).addElement(sd);
    {
      Iterator<Declaration> dec_it = ListSequence.fromList(s.getDecs()).iterator();
      Declaration dec_var;
      while (dec_it.hasNext()) {
        dec_var = dec_it.next();
        this.addStructMember(sd, dec_var);
      }
    }
  }



  private void addTypedef(Typedef td) {
    SNode tdef = SConceptOperations.createNewNode("com.mbeddr.core.udt.structure.TypeDef", null);
    SPropertyOperations.set(tdef, "name", td.getID());
    SLinkOperations.setTarget(tdef, "original", typer.buildType(td.getAs(), module), true);

    ListSequence.fromList(SLinkOperations.getTargets(module, "contents", true)).addElement(tdef);
  }



  private void addDefine(Define df) {
    if (df.getExp() instanceof Integer) {
      SNode gcd = SConceptOperations.createNewNode("com.mbeddr.core.modules.structure.GlobalConstantDeclaration", null);
      SPropertyOperations.set(gcd, "name", (df.getID()));
      SNode val = SConceptOperations.createNewNode("com.mbeddr.core.expressions.structure.NumberLiteral", null);
      SPropertyOperations.set(val, "value", ((Integer) df.getExp()).toString());
      SLinkOperations.setTarget(gcd, "value", val, true);
      ListSequence.fromList(SLinkOperations.getTargets(module, "contents", true)).addElement(gcd);
    } else {
      if (df.isStruct) {
        SNode tdef = SConceptOperations.createNewNode("com.mbeddr.core.udt.structure.TypeDef", null);
        SPropertyOperations.set(tdef, "name", df.getID());
        SLinkOperations.setTarget(tdef, "original", typer.buildType((String) df.getExp(), module), true);

        ListSequence.fromList(SLinkOperations.getTargets(module, "contents", true)).addElement(tdef);
      } else {
        SNode val = SConceptOperations.createNewNode("com.mbeddr.core.modules.structure.StaticMemoryLocation", null);
        SPropertyOperations.set(val, "name", df.getID());
        SNode exp = SConceptOperations.createNewNode("com.mbeddr.core.pointers.structure.StringLiteral", null);
        SPropertyOperations.set(exp, "value", (String) df.getExp());
        SLinkOperations.setTarget(val, "value", exp, true);
        ListSequence.fromList(SLinkOperations.getTargets(module, "contents", true)).addElement(val);
      }
    }
  }



  private void addVariable(Variable v) {
    SNode gvd = SConceptOperations.createNewNode("com.mbeddr.core.modules.structure.GlobalVariableDeclaration", null);
    SPropertyOperations.set(gvd, "name", v.getID());
    SLinkOperations.setTarget(gvd, "type", this.makeVar(v), true);
    ListSequence.fromList(SLinkOperations.getTargets(module, "contents", true)).addElement(gvd);
  }



  private void addFunction(Function f) {
    SNode fp = SConceptOperations.createNewNode("com.mbeddr.core.modules.structure.FunctionPrototype", null);
    SPropertyOperations.set(fp, "name", f.getID());
    SLinkOperations.setTarget(fp, "type", typer.buildType((String) f.getReturn_type(), module), true);
    int n = 0;
    for (Object p : f.getParams()) {
      SNode arg = SConceptOperations.createNewNode("com.mbeddr.core.modules.structure.Argument", null);
      SPropertyOperations.set(arg, "name", "p" + n++);
      if (p instanceof Function) {
        SLinkOperations.setTarget(arg, "type", this.makeFuncPointer(((Function) p)), true);
      } else {
        SLinkOperations.setTarget(arg, "type", typer.buildType(((String) p), module), true);
      }
      ListSequence.fromList(SLinkOperations.getTargets(fp, "arguments", true)).addElement(arg);
    }
    ListSequence.fromList(SLinkOperations.getTargets(module, "contents", true)).addElement(fp);
  }


}
