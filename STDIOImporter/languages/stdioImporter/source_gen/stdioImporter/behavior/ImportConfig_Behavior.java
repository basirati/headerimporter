package stdioImporter.behavior;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import stdioImporter.runtime.Importer;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;

public class ImportConfig_Behavior {
  public static void init(SNode thisNode) {
  }

  public static String call_getFileName_3873900481303667412(SNode thisNode) {
    return SPropertyOperations.getString(thisNode, "filename");
  }

  public static boolean call_performImport_3873900481303708928(SNode thisNode) {
    return Importer.doImport(SLinkOperations.getTarget(thisNode, "module", false), ImportConfig_Behavior.call_getFileName_3873900481303667412(thisNode), SLinkOperations.getTarget(thisNode, "variabilitys", false));
  }
}
