<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:47fa5ae6-e2a8-4e26-a7ba-1938668b3c74(stdioImporter.intentions)">
  <persistence version="9" />
  <languages>
    <use id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="niqf" ref="r:56c48711-bf46-4489-b509-90d3acd252dc(stdioImporter.behavior)" implicit="true" />
    <import index="x27k" ref="r:75ecab8a-8931-4140-afc6-4b46398710fc(com.mbeddr.core.modules.structure)" implicit="true" />
    <import index="tyg9" ref="r:f7c4fd39-46a1-4ed5-868e-f31cb019e359(stdioImporter.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1070475926800" name="jetbrains.mps.baseLanguage.structure.StringLiteral" flags="nn" index="Xl_RD">
        <property id="1070475926801" name="value" index="Xl_RC" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
      </concept>
    </language>
    <language id="d7a92d38-f7db-40d0-8431-763b0c3c9f20" name="jetbrains.mps.lang.intentions">
      <concept id="1192794744107" name="jetbrains.mps.lang.intentions.structure.IntentionDeclaration" flags="ig" index="2S6QgY" />
      <concept id="1192794782375" name="jetbrains.mps.lang.intentions.structure.DescriptionBlock" flags="in" index="2S6ZIM" />
      <concept id="1192795911897" name="jetbrains.mps.lang.intentions.structure.ExecuteBlock" flags="in" index="2Sbjvc" />
      <concept id="1192796902958" name="jetbrains.mps.lang.intentions.structure.ConceptFunctionParameter_node" flags="nn" index="2Sf5sV" />
      <concept id="2522969319638091381" name="jetbrains.mps.lang.intentions.structure.BaseIntentionDeclaration" flags="ig" index="2ZfUlf">
        <property id="2522969319638091386" name="isAvailableInChildNodes" index="2ZfUl0" />
        <reference id="2522969319638198290" name="forConcept" index="2ZfgGC" />
        <child id="2522969319638198291" name="executeFunction" index="2ZfgGD" />
        <child id="2522969319638093993" name="descriptionFunction" index="2ZfVej" />
      </concept>
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1227022210526" name="jetbrains.mps.baseLanguage.collections.structure.ClearAllElementsOperation" flags="nn" index="2Kehj3" />
    </language>
  </registry>
  <node concept="2S6QgY" id="3D9OvS0$DMX">
    <property role="TrG5h" value="ClearImport" />
    <property role="2ZfUl0" value="true" />
    <ref role="2ZfgGC" to="x27k:5jyom5fOqJ1" resolve="ExternalModule" />
    <node concept="2S6ZIM" id="3D9OvS0$DV1" role="2ZfVej">
      <node concept="3clFbS" id="3D9OvS0$JSE" role="2VODD2">
        <node concept="3clFbF" id="3D9OvS0$QYf" role="3cqZAp">
          <node concept="Xl_RD" id="3D9OvS0$QYe" role="3clFbG">
            <property role="Xl_RC" value="Clear Import Module" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="3D9OvS0$JSF" role="2ZfgGD">
      <node concept="3clFbS" id="3D9OvS0$JSG" role="2VODD2">
        <node concept="3clFbF" id="3D9OvS0$RL$" role="3cqZAp">
          <node concept="2OqwBi" id="3D9OvS0_95W" role="3clFbG">
            <node concept="2OqwBi" id="3D9OvS0$RS$" role="2Oq$k0">
              <node concept="2Sf5sV" id="3D9OvS0$RLz" role="2Oq$k0" />
              <node concept="3Tsc0h" id="3D9OvS0_7tE" role="2OqNvi">
                <ref role="3TtcxE" to="x27k:5_l8w1EmTdh" />
              </node>
            </node>
            <node concept="2Kehj3" id="3D9OvS0_fOQ" role="2OqNvi" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="2S6QgY" id="3D9OvS0_hb$">
    <property role="TrG5h" value="PerformImport" />
    <ref role="2ZfgGC" to="tyg9:3n2QZq3jlKh" resolve="ImportConfig" />
    <node concept="2S6ZIM" id="3D9OvS0_hb_" role="2ZfVej">
      <node concept="3clFbS" id="3D9OvS0_hbA" role="2VODD2">
        <node concept="3clFbF" id="3D9OvS0_jYF" role="3cqZAp">
          <node concept="Xl_RD" id="3D9OvS0_jYE" role="3clFbG">
            <property role="Xl_RC" value="Perform Import" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2Sbjvc" id="3D9OvS0_hbB" role="2ZfgGD">
      <node concept="3clFbS" id="3D9OvS0_hbC" role="2VODD2">
        <node concept="3clFbF" id="3D9OvS0_kJa" role="3cqZAp">
          <node concept="2OqwBi" id="3D9OvS0_nco" role="3clFbG">
            <node concept="2OqwBi" id="3D9OvS0_l9g" role="2Oq$k0">
              <node concept="2OqwBi" id="3D9OvS0_kKm" role="2Oq$k0">
                <node concept="2Sf5sV" id="3D9OvS0_kJ9" role="2Oq$k0" />
                <node concept="3TrEf2" id="3D9OvS0_kSc" role="2OqNvi">
                  <ref role="3Tt5mk" to="tyg9:3n2QZq3jpuY" />
                </node>
              </node>
              <node concept="3Tsc0h" id="3D9OvS0_lHn" role="2OqNvi">
                <ref role="3TtcxE" to="x27k:5_l8w1EmTdh" />
              </node>
            </node>
            <node concept="2Kehj3" id="3D9OvS0_qvI" role="2OqNvi" />
          </node>
        </node>
        <node concept="3clFbF" id="3D9OvS0_s3w" role="3cqZAp">
          <node concept="2OqwBi" id="3D9OvS0_s4J" role="3clFbG">
            <node concept="2Sf5sV" id="3D9OvS0_s3u" role="2Oq$k0" />
            <node concept="2qgKlT" id="3D9OvS0_skG" role="2OqNvi">
              <ref role="37wK5l" to="niqf:3n2QZq3kCk0" resolve="performImport" />
            </node>
          </node>
        </node>
      </node>
    </node>
  </node>
</model>

