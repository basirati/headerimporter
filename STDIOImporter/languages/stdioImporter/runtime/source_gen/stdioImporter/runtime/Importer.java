package stdioImporter.runtime;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import stdio_parser.CodeGenerator;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.smodel.behaviour.BehaviorReflection;

public class Importer {


  public static boolean doImport(SNode module, String filename, SNode vs) {
    try {
      // parsing the header file into a java class 
      CodeGenerator cg = ParserAdapter.Parse(filename);
      if (cg == null) {
        return false;
      }

      // adding header file refrence to mps file 
      boolean headercheck = true;
      for (SNode headerfile : ListSequence.fromList(SLinkOperations.getTargets(module, "descriptors", true))) {
        if (SPropertyOperations.getString(headerfile, "path").equals("\"" + filename + "\"")) {
          headercheck = false;
        }
      }
      if (headercheck) {
        SNode header = SConceptOperations.createNewNode("com.mbeddr.core.modules.structure.HeaderDescriptor", null);
        SPropertyOperations.set(header, "path", "\"" + filename + "\"");
        ListSequence.fromList(SLinkOperations.getTargets(module, "descriptors", true)).addElement(header);
      }

      // Importing into VariabilitySupport file 
      VariabilityImporter vimporter = new VariabilityImporter();
      SLinkOperations.getTargets(vs, "contents", true).clear();
      vimporter.addVariabilitys(vs, cg.declarations);


      // <node> 

      // adding VariabilitySupport file to imports 
      boolean importcheck = true;
      for (SNode file : ListSequence.fromList(SLinkOperations.getTargets(module, "imports", true))) {
        if (SPropertyOperations.getString(BehaviorReflection.invokeVirtual((Class<SNode>) ((Class) Object.class), file, "virtual_chunk_7139820346881814627", new Object[]{}), "name").equals(SPropertyOperations.getString(vs, "name"))) {
          importcheck = false;
        }
      }
      if (importcheck) {
        SNode dgc = SConceptOperations.createNewNode("com.mbeddr.core.base.structure.DefaultGenericChunkDependency", null);
        SLinkOperations.setTarget(dgc, "chunk", vs, false);
        ListSequence.fromList(SLinkOperations.getTargets(module, "imports", true)).addElement(dgc);
      }

      // adding parsed header to mps file 
      ImporterCore core = new ImporterCore();
      core.varS = vs;
      core.addDeclarations(cg.declarations, module);

    } catch (Exception e) {
      return false;
    }
    return true;
  }
}
