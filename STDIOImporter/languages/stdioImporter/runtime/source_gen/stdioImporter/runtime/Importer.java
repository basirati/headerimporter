package stdioImporter.runtime;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import stdio_parser.CodeGenerator;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SModelOperations;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.AttributeOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.IAttributeDescriptor;

public class Importer {
  public static boolean doImport(SNode module, String filename, String folder) {
    try {
      String fileaddr = "";
      if (folder.endsWith("/")) {
        fileaddr = folder + filename;
      } else {
        fileaddr = folder + "/" + filename;
      }

      // parsing the header file into a java class 
      CodeGenerator cg = ParserAdapter.Parse(fileaddr);
      if (cg == null) {
        return false;
      }

      // adding header file refrence to mps file 
      boolean headercheck = true;
      for (SNode headerfile : ListSequence.fromList(SLinkOperations.getChildren(module, MetaAdapterFactory.getContainmentLink(0x6d11763d483d4b2bL, 0x8efc09336c1b0001L, 0x54e261614fd1abc1L, 0x54e261614fd1abfaL, "descriptors")))) {
        if (SPropertyOperations.getString(headerfile, MetaAdapterFactory.getProperty(0x6d11763d483d4b2bL, 0x8efc09336c1b0001L, 0x54e261614fd1abceL, 0x54e261614fd1abd0L, "path")).equals("\"" + filename + "\"") || SPropertyOperations.getString(headerfile, MetaAdapterFactory.getProperty(0x6d11763d483d4b2bL, 0x8efc09336c1b0001L, 0x54e261614fd1abceL, 0x54e261614fd1abd0L, "path")).equals("<" + filename + ">")) {
          headercheck = false;
        }
      }
      if (headercheck) {
        SNode header = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x6d11763d483d4b2bL, 0x8efc09336c1b0001L, 0x54e261614fd1abe0L, "com.mbeddr.core.modules.structure.HeaderDescriptor")));
        SPropertyOperations.set(header, MetaAdapterFactory.getProperty(0x6d11763d483d4b2bL, 0x8efc09336c1b0001L, 0x54e261614fd1abceL, 0x54e261614fd1abd0L, "path"), "<" + filename + ">");
        ListSequence.fromList(SLinkOperations.getChildren(module, MetaAdapterFactory.getContainmentLink(0x6d11763d483d4b2bL, 0x8efc09336c1b0001L, 0x54e261614fd1abc1L, 0x54e261614fd1abfaL, "descriptors"))).addElement(header);
      }

      // creating Variability support file 
      SNode vs = null;
      String VSname = SPropertyOperations.getString(module, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")) + "_IFDEFS";
      for (SNode file : ListSequence.fromList(SModelOperations.roots(SNodeOperations.getModel(module), MetaAdapterFactory.getConcept(0xe401b44780194ccdL, 0xa72cbfb0230f5782L, 0x5eb8f6e2708d4ff0L, "com.mbeddr.cc.var.fm.structure.VariabilitySupport")))) {
        if (SPropertyOperations.getString(file, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")).equals(VSname)) {
          vs = file;
        }
      }
      if (vs == null) {
        vs = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xe401b44780194ccdL, 0xa72cbfb0230f5782L, 0x5eb8f6e2708d4ff0L, "com.mbeddr.cc.var.fm.structure.VariabilitySupport")));
        SPropertyOperations.set(vs, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"), VSname);
        SModelOperations.addRootNode(SNodeOperations.getModel(module), vs);
      }


      // Importing into VariabilitySupport file 
      VariabilityImporter vimporter = new VariabilityImporter();
      SLinkOperations.getChildren(vs, MetaAdapterFactory.getContainmentLink(0xe401b44780194ccdL, 0xa72cbfb0230f5782L, 0x5eb8f6e2708d4ff0L, 0x5eb8f6e2708d4ff1L, "contents")).clear();
      vimporter.addVariabilitys(vs, cg.declarations);


      // adding VariabilitySupport file to imports 
      boolean importcheck = true;
      for (SNode file : ListSequence.fromList(SLinkOperations.getChildren(module, MetaAdapterFactory.getContainmentLink(0x6d11763d483d4b2bL, 0x8efc09336c1b0001L, 0x595522006a5b933dL, 0x124a1a47a698847aL, "imports")))) {
        if (SPropertyOperations.getString(BehaviorReflection.invokeVirtual((Class<SNode>) ((Class) Object.class), file, "virtual_chunk_7139820346881814627", new Object[]{}), MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")).equals(SPropertyOperations.getString(vs, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name")))) {
          importcheck = false;
        }
      }
      if (importcheck) {
        SNode dgc = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xd4280a54f6df4383L, 0xaa41d1b2bffa7eb1L, 0xa5e2d2ae6f5954dL, "com.mbeddr.core.base.structure.DefaultGenericChunkDependency")));
        SLinkOperations.setTarget(dgc, MetaAdapterFactory.getReferenceLink(0xd4280a54f6df4383L, 0xaa41d1b2bffa7eb1L, 0xa5e2d2ae6f5954dL, 0xa5e2d2ae6f69c27L, "chunk"), vs);
        ListSequence.fromList(SLinkOperations.getChildren(module, MetaAdapterFactory.getContainmentLink(0x6d11763d483d4b2bL, 0x8efc09336c1b0001L, 0x595522006a5b933dL, 0x124a1a47a698847aL, "imports"))).addElement(dgc);
      }

      // adding parsed header to mps file 
      ImporterCore core = new ImporterCore();
      core.varS = vs;
      core.addDeclarations(cg.declarations, module);

      // adding variant mode to mps file 
      SNodeOperations.deleteNode(AttributeOperations.getAttribute(module, new IAttributeDescriptor.NodeAttribute(MetaAdapterFactory.getConcept(0x17fba0eaf154a23L, 0xb0a802b5c1141e75L, 0x92cd87784518100L, "com.mbeddr.cc.var.annotations.structure.FeatureModelConfiguration"))));
      SNode fmc = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0x17fba0eaf154a23L, 0xb0a802b5c1141e75L, 0x92cd87784518100L, "com.mbeddr.cc.var.annotations.structure.FeatureModelConfiguration")));
      SLinkOperations.setTarget(fmc, MetaAdapterFactory.getReferenceLink(0x17fba0eaf154a23L, 0xb0a802b5c1141e75L, 0x92cd87784518100L, 0x92cd87784518101L, "featureModel"), (SNode) ListSequence.fromList(SLinkOperations.getChildren(vs, MetaAdapterFactory.getContainmentLink(0xe401b44780194ccdL, 0xa72cbfb0230f5782L, 0x5eb8f6e2708d4ff0L, 0x5eb8f6e2708d4ff1L, "contents"))).getElement(0));
      SLinkOperations.setTarget(fmc, MetaAdapterFactory.getReferenceLink(0x17fba0eaf154a23L, 0xb0a802b5c1141e75L, 0x92cd87784518100L, 0x67770841413d6b51L, "configModel"), (SNode) ListSequence.fromList(SLinkOperations.getChildren(vs, MetaAdapterFactory.getContainmentLink(0xe401b44780194ccdL, 0xa72cbfb0230f5782L, 0x5eb8f6e2708d4ff0L, 0x5eb8f6e2708d4ff1L, "contents"))).getElement(1));
      AttributeOperations.setAttribute(module, new IAttributeDescriptor.NodeAttribute(MetaAdapterFactory.getConcept(0x17fba0eaf154a23L, 0xb0a802b5c1141e75L, 0x92cd87784518100L, "com.mbeddr.cc.var.annotations.structure.FeatureModelConfiguration")), fmc);


    } catch (Exception e) {
      return false;
    }
    return true;
  }
}
