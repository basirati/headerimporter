package stdioImporter.runtime;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.internal.collections.runtime.backports.Deque;
import jetbrains.mps.internal.collections.runtime.DequeSequence;
import jetbrains.mps.internal.collections.runtime.backports.LinkedList;
import stdio_parser.Function;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
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
  private Deque<Boolean> conditions = DequeSequence.fromDeque(new LinkedList<Boolean>());
  private Deque<SNode> feature_stack = DequeSequence.fromDeque(new LinkedList<SNode>());
  public SNode varS;
  private VariabilityImporter vimporter = new VariabilityImporter();

  private SNode makeFuncPointer(Function v) {
    // badan in if then else ro bebar to buildType ke object begire asan 
    SNode frt = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x6d11763d483d4b2bL, 0x8efc09336c1b0001L, 0x76ad8d576f00349bL, "com.mbeddr.core.modules.structure.FunctionRefType")));
    Typer typer = new Typer();
    SLinkOperations.setTarget(frt, MetaAdapterFactory.getContainmentLink(0x6d11763d483d4b2bL, 0x8efc09336c1b0001L, 0x76ad8d576f00349bL, 0x76ad8d576f00349cL, "returnType"), typer.buildType((String) v.getReturn_type(), module));
    for (Object p : v.getParams()) {
      if (p instanceof Function) {
        ListSequence.fromList(SLinkOperations.getChildren(frt, MetaAdapterFactory.getContainmentLink(0x6d11763d483d4b2bL, 0x8efc09336c1b0001L, 0x76ad8d576f00349bL, 0x76ad8d576f00349dL, "argTypes"))).addElement(this.makeFuncPointer((Function) p));
      } else {
        ListSequence.fromList(SLinkOperations.getChildren(frt, MetaAdapterFactory.getContainmentLink(0x6d11763d483d4b2bL, 0x8efc09336c1b0001L, 0x76ad8d576f00349bL, 0x76ad8d576f00349dL, "argTypes"))).addElement(typer.buildType((String) p, module));
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
        DequeSequence.fromDeque(feature_stack).pushElement(vimporter.getFeaturebyName(varS, cb.getID()));
        DequeSequence.fromDeque(conditions).pushElement(true);
        this.addDeclarations(cb.getBlock(DequeSequence.fromDeque(conditions).peekElement()), module);
        DequeSequence.fromDeque(conditions).popElement();
        DequeSequence.fromDeque(conditions).pushElement(false);
        this.addDeclarations(cb.getBlock(DequeSequence.fromDeque(conditions).peekElement()), module);
        DequeSequence.fromDeque(conditions).popElement();
        DequeSequence.fromDeque(feature_stack).popElement();
      }

    }
  }

  private void addStructMember(SNode sd, Declaration dec) {
    if (dec instanceof Variable) {
      SNode nt;
      nt = this.makeVar((Variable) dec);
      SNode mm = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xefda956e491e4f00L, 0xba1436af2f213ecfL, 0x51a277741cc50918L, "com.mbeddr.core.udt.structure.Member")));
      SLinkOperations.setTarget(mm, MetaAdapterFactory.getContainmentLink(0x61c69711ed614850L, 0x81d97714ff227fb0L, 0x46a2a92ac61b183L, 0x46a2a92ac61b184L, "type"), nt);
      SPropertyOperations.set(mm, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"), dec.getID());
      ListSequence.fromList(SLinkOperations.getChildren(sd, MetaAdapterFactory.getContainmentLink(0xefda956e491e4f00L, 0xba1436af2f213ecfL, 0x6285e27d4ff6c9f5L, 0x6285e27d4ff7db92L, "members"))).addElement(mm);
      if (DequeSequence.fromDeque(feature_stack).count() > 0) {
        vimporter.addPresenceConditionToSMember(mm, DequeSequence.fromDeque(feature_stack).peekElement(), DequeSequence.fromDeque(conditions).peekElement());
      }

    } else if (dec instanceof ConditionalBlock) {
      ConditionalBlock cb = (ConditionalBlock) dec;
      DequeSequence.fromDeque(feature_stack).pushElement(vimporter.getFeaturebyName(varS, cb.getID()));
      DequeSequence.fromDeque(conditions).pushElement(true);
      for (Declaration blockdec : ListSequence.fromList(cb.getBlock(DequeSequence.fromDeque(conditions).peekElement()))) {
        this.addStructMember(sd, blockdec);
      }
      DequeSequence.fromDeque(conditions).popElement();
      DequeSequence.fromDeque(conditions).pushElement(false);
      for (Declaration blockdec : ListSequence.fromList(cb.getBlock(DequeSequence.fromDeque(conditions).peekElement()))) {
        this.addStructMember(sd, blockdec);
      }
      DequeSequence.fromDeque(conditions).popElement();
      DequeSequence.fromDeque(feature_stack).popElement();
    }
  }

  private void addStruct(Struct s) {
    SNode sd = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xefda956e491e4f00L, 0xba1436af2f213ecfL, 0x58bef62304fc0a2fL, "com.mbeddr.core.udt.structure.StructDeclaration")));
    SPropertyOperations.set(sd, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"), s.getID());
    ListSequence.fromList(SLinkOperations.getChildren(module, MetaAdapterFactory.getContainmentLink(0x6d11763d483d4b2bL, 0x8efc09336c1b0001L, 0x595522006a5b933dL, 0x595522006a5b9351L, "contents"))).addElement(sd);
    if (DequeSequence.fromDeque(feature_stack).count() > 0) {
      vimporter.addPresenceCondition(sd, DequeSequence.fromDeque(feature_stack).peekElement(), DequeSequence.fromDeque(conditions).peekElement());
    }
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
    SNode tdef = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xefda956e491e4f00L, 0xba1436af2f213ecfL, 0x54e261614fd09a11L, "com.mbeddr.core.udt.structure.TypeDef")));
    SPropertyOperations.set(tdef, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"), td.getAs());
    SLinkOperations.setTarget(tdef, MetaAdapterFactory.getContainmentLink(0xefda956e491e4f00L, 0xba1436af2f213ecfL, 0x54e261614fd09a11L, 0x54e261614fd09a16L, "original"), typer.buildType(td.getID(), module));
    ListSequence.fromList(SLinkOperations.getChildren(module, MetaAdapterFactory.getContainmentLink(0x6d11763d483d4b2bL, 0x8efc09336c1b0001L, 0x595522006a5b933dL, 0x595522006a5b9351L, "contents"))).addElement(tdef);
    if (DequeSequence.fromDeque(feature_stack).count() > 0) {
      vimporter.addPresenceCondition(tdef, DequeSequence.fromDeque(feature_stack).peekElement(), DequeSequence.fromDeque(conditions).peekElement());
    }


  }

  private void addDefine(Define df) {
    if (df.getExp() instanceof Integer) {
      SNode gcd = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x6d11763d483d4b2bL, 0x8efc09336c1b0001L, 0x349531423067ef96L, "com.mbeddr.core.modules.structure.GlobalConstantDeclaration")));
      SPropertyOperations.set(gcd, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"), (df.getID()));
      SNode val = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x61c69711ed614850L, 0x81d97714ff227fb0L, 0x7af69e2e83a1ba67L, "com.mbeddr.core.expressions.structure.NumberLiteral")));
      SPropertyOperations.set(val, MetaAdapterFactory.getProperty(0x61c69711ed614850L, 0x81d97714ff227fb0L, 0x1eb611a68febd3e5L, 0x1eb611a68fec38b0L, "value"), ((Integer) df.getExp()).toString());
      SLinkOperations.setTarget(gcd, MetaAdapterFactory.getContainmentLink(0x6d11763d483d4b2bL, 0x8efc09336c1b0001L, 0x2edcb73a870319c4L, 0x2edcb73a87047d88L, "value"), val);
      ListSequence.fromList(SLinkOperations.getChildren(module, MetaAdapterFactory.getContainmentLink(0x6d11763d483d4b2bL, 0x8efc09336c1b0001L, 0x595522006a5b933dL, 0x595522006a5b9351L, "contents"))).addElement(gcd);
      if (DequeSequence.fromDeque(feature_stack).count() > 0) {
        vimporter.addPresenceCondition(gcd, DequeSequence.fromDeque(feature_stack).peekElement(), DequeSequence.fromDeque(conditions).peekElement());
      }

    } else {
      if (df.isStruct) {
        SNode tdef = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xefda956e491e4f00L, 0xba1436af2f213ecfL, 0x54e261614fd09a11L, "com.mbeddr.core.udt.structure.TypeDef")));
        SPropertyOperations.set(tdef, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"), df.getID());
        SLinkOperations.setTarget(tdef, MetaAdapterFactory.getContainmentLink(0xefda956e491e4f00L, 0xba1436af2f213ecfL, 0x54e261614fd09a11L, 0x54e261614fd09a16L, "original"), typer.buildType((String) df.getExp(), module));

        ListSequence.fromList(SLinkOperations.getChildren(module, MetaAdapterFactory.getContainmentLink(0x6d11763d483d4b2bL, 0x8efc09336c1b0001L, 0x595522006a5b933dL, 0x595522006a5b9351L, "contents"))).addElement(tdef);
        if (DequeSequence.fromDeque(feature_stack).count() > 0) {
          vimporter.addPresenceCondition(tdef, DequeSequence.fromDeque(feature_stack).peekElement(), DequeSequence.fromDeque(conditions).peekElement());
        }

      } else if (!(df.getParams().isEmpty())) {
        SNode macro = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x6d11763d483d4b2bL, 0x8efc09336c1b0001L, 0x539093cd7477722bL, "com.mbeddr.core.modules.structure.GlobalConstantFunctionDeclaration")));
        for (String param : df.getParams()) {
          if (param != "") {
            SNode arg = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x6d11763d483d4b2bL, 0x8efc09336c1b0001L, 0x539093cd74798b55L, "com.mbeddr.core.modules.structure.GlobalConstantFunctionArgument")));
            SPropertyOperations.set(arg, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"), param);
            ListSequence.fromList(SLinkOperations.getChildren(macro, MetaAdapterFactory.getContainmentLink(0x6d11763d483d4b2bL, 0x8efc09336c1b0001L, 0x539093cd7477722bL, 0x539093cd74777237L, "arguments"))).addElement(arg);
          }
        }
        SPropertyOperations.set(macro, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"), df.getID());
        ListSequence.fromList(SLinkOperations.getChildren(module, MetaAdapterFactory.getContainmentLink(0x6d11763d483d4b2bL, 0x8efc09336c1b0001L, 0x595522006a5b933dL, 0x595522006a5b9351L, "contents"))).addElement(macro);
        if (DequeSequence.fromDeque(feature_stack).count() > 0) {
          vimporter.addPresenceCondition(macro, DequeSequence.fromDeque(feature_stack).peekElement(), DequeSequence.fromDeque(conditions).peekElement());
        }
      } else {
        SNode val = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x6d11763d483d4b2bL, 0x8efc09336c1b0001L, 0x2edcb73a870a3eddL, "com.mbeddr.core.modules.structure.StaticMemoryLocation")));
        SPropertyOperations.set(val, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"), df.getID());
        SNode exp = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x3bf5377ae9044dedL, 0x97545a516023bfaaL, 0x54d65a836190f177L, "com.mbeddr.core.pointers.structure.StringLiteral")));
        SPropertyOperations.set(exp, MetaAdapterFactory.getProperty(0x3bf5377ae9044dedL, 0x97545a516023bfaaL, 0x54d65a836190f177L, 0x54d65a836190f17aL, "value"), (String) df.getExp());
        SLinkOperations.setTarget(val, MetaAdapterFactory.getContainmentLink(0x6d11763d483d4b2bL, 0x8efc09336c1b0001L, 0x2edcb73a870319c4L, 0x2edcb73a87047d88L, "value"), exp);
        ListSequence.fromList(SLinkOperations.getChildren(module, MetaAdapterFactory.getContainmentLink(0x6d11763d483d4b2bL, 0x8efc09336c1b0001L, 0x595522006a5b933dL, 0x595522006a5b9351L, "contents"))).addElement(val);
        if (DequeSequence.fromDeque(feature_stack).count() > 0) {
          vimporter.addPresenceCondition(val, DequeSequence.fromDeque(feature_stack).peekElement(), DequeSequence.fromDeque(conditions).peekElement());
        }

      }
    }
  }

  private void addVariable(Variable v) {
    SNode gvd = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x6d11763d483d4b2bL, 0x8efc09336c1b0001L, 0x5bbe8a6d23a1b6ceL, "com.mbeddr.core.modules.structure.GlobalVariableDeclaration")));
    SPropertyOperations.set(gvd, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"), v.getID());
    SLinkOperations.setTarget(gvd, MetaAdapterFactory.getContainmentLink(0x61c69711ed614850L, 0x81d97714ff227fb0L, 0x46a2a92ac61b183L, 0x46a2a92ac61b184L, "type"), this.makeVar(v));
    ListSequence.fromList(SLinkOperations.getChildren(module, MetaAdapterFactory.getContainmentLink(0x6d11763d483d4b2bL, 0x8efc09336c1b0001L, 0x595522006a5b933dL, 0x595522006a5b9351L, "contents"))).addElement(gvd);
    if (DequeSequence.fromDeque(feature_stack).count() > 0) {
      vimporter.addPresenceCondition(gvd, DequeSequence.fromDeque(feature_stack).peekElement(), DequeSequence.fromDeque(conditions).peekElement());
    }

  }


  private void addFunction(Function f) {
    SNode fp = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x6d11763d483d4b2bL, 0x8efc09336c1b0001L, 0x595522006a5b97e0L, "com.mbeddr.core.modules.structure.FunctionPrototype")));
    SPropertyOperations.set(fp, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"), f.getID());
    SLinkOperations.setTarget(fp, MetaAdapterFactory.getContainmentLink(0x61c69711ed614850L, 0x81d97714ff227fb0L, 0x46a2a92ac61b183L, 0x46a2a92ac61b184L, "type"), typer.buildType((String) f.getReturn_type(), module));
    int n = 0;
    for (int i = f.getParams().size() - 1; i > -1; i--) {
      Object p = f.getParams().get(i);
      SNode arg = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x6d11763d483d4b2bL, 0x8efc09336c1b0001L, 0x6d872ef9245a20d7L, "com.mbeddr.core.modules.structure.Argument")));
      SPropertyOperations.set(arg, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"), "p" + n++);
      if (p instanceof Function) {
        SLinkOperations.setTarget(arg, MetaAdapterFactory.getContainmentLink(0x61c69711ed614850L, 0x81d97714ff227fb0L, 0x46a2a92ac61b183L, 0x46a2a92ac61b184L, "type"), this.makeFuncPointer(((Function) p)));
      } else {
        SLinkOperations.setTarget(arg, MetaAdapterFactory.getContainmentLink(0x61c69711ed614850L, 0x81d97714ff227fb0L, 0x46a2a92ac61b183L, 0x46a2a92ac61b184L, "type"), typer.buildType(((String) p), module));
        if (SNodeOperations.getConceptDeclaration(SLinkOperations.getTarget(arg, MetaAdapterFactory.getContainmentLink(0x61c69711ed614850L, 0x81d97714ff227fb0L, 0x46a2a92ac61b183L, 0x46a2a92ac61b184L, "type"))) == SNodeOperations.getNode("r:c371cf98-dcc8-4a43-8eb8-8a8096de18b2(com.mbeddr.core.expressions.structure)", "7892328519581699353")) {
          continue;
        }
      }
      ListSequence.fromList(SLinkOperations.getChildren(fp, MetaAdapterFactory.getContainmentLink(0x6d11763d483d4b2bL, 0x8efc09336c1b0001L, 0x707ac195dd5d51f2L, 0x4f39f90935e92f45L, "arguments"))).addElement(arg);

    }
    ListSequence.fromList(SLinkOperations.getChildren(module, MetaAdapterFactory.getContainmentLink(0x6d11763d483d4b2bL, 0x8efc09336c1b0001L, 0x595522006a5b933dL, 0x595522006a5b9351L, "contents"))).addElement(fp);
    if (DequeSequence.fromDeque(feature_stack).count() > 0) {
      vimporter.addPresenceCondition(fp, DequeSequence.fromDeque(feature_stack).peekElement(), DequeSequence.fromDeque(conditions).peekElement());
    }

  }

}
