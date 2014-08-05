package stdioImporter.intentions;

/*Generated by MPS */

import jetbrains.mps.intentions.BaseIntentionsDescriptor;
import jetbrains.mps.project.structure.modules.ModuleReference;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import jetbrains.mps.intentions.IntentionsManager;

public class IntentionsDescriptor extends BaseIntentionsDescriptor {
  public IntentionsDescriptor() {
    super(new ModuleReference("4552c9e5-a342-4299-8de1-338d8e5679fc(stdioImporter)"), PersistenceFacade.getInstance().createModelReference("r:47fa5ae6-e2a8-4e26-a7ba-1938668b3c74(stdioImporter.intentions)"));
  }

  public void init() {
    IntentionsManager.getInstance().registerIntentionFactory(new ClearImport_Intention());
    IntentionsManager.getInstance().registerIntentionFactory(new PerformImport_Intention());
  }
}