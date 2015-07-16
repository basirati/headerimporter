package stdioImporter.intentions;

/*Generated by MPS */

import jetbrains.mps.intentions.IntentionFactory;
import java.util.Collection;
import jetbrains.mps.intentions.IntentionExecutable;
import jetbrains.mps.intentions.IntentionType;
import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.openapi.editor.EditorContext;
import org.jetbrains.mps.openapi.model.SNodeReference;
import jetbrains.mps.smodel.SNodePointer;
import java.util.Collections;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.intentions.IntentionDescriptor;

public class ClearImport_Intention implements IntentionFactory {
  private Collection<IntentionExecutable> myCachedExecutable;
  public ClearImport_Intention() {
  }
  public String getConcept() {
    return "com.mbeddr.core.modules.structure.ExternalModule";
  }
  public String getPresentation() {
    return "ClearImport";
  }
  public String getPersistentStateKey() {
    return "stdioImporter.intentions.ClearImport_Intention";
  }
  public String getLanguageFqName() {
    return "stdioImporter";
  }
  public IntentionType getType() {
    return IntentionType.NORMAL;
  }
  public boolean isAvailableInChildNodes() {
    return true;
  }
  public boolean isApplicable(final SNode node, final EditorContext editorContext) {
    return true;
  }
  public SNodeReference getIntentionNodeReference() {
    return new SNodePointer("r:47fa5ae6-e2a8-4e26-a7ba-1938668b3c74(stdioImporter.intentions)", "4200119016361204925");
  }
  public boolean isSurroundWith() {
    return false;
  }
  public Collection<IntentionExecutable> instances(final SNode node, final EditorContext context) {
    if (myCachedExecutable == null) {
      myCachedExecutable = Collections.<IntentionExecutable>singletonList(new ClearImport_Intention.IntentionImplementation());
    }
    return myCachedExecutable;
  }
  public class IntentionImplementation implements IntentionExecutable {
    public IntentionImplementation() {
    }
    public String getDescription(final SNode node, final EditorContext editorContext) {
      return "Clear Import Module";
    }
    public void execute(final SNode node, final EditorContext editorContext) {
      ListSequence.fromList(SLinkOperations.getChildren(node, MetaAdapterFactory.getContainmentLink(0x6d11763d483d4b2bL, 0x8efc09336c1b0001L, 0x595522006a5b933dL, 0x595522006a5b9351L, "contents"))).clear();
    }
    public IntentionDescriptor getDescriptor() {
      return ClearImport_Intention.this;
    }
  }
}
