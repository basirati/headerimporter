<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:56c48711-bf46-4489-b509-90d3acd252dc(stdioImporter.behavior)">
  <persistence version="9" />
  <languages>
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="y402" ref="r:0a61a9e7-a709-43f0-abe2-8e147f2ba2c1(stdioImporter.runtime)" />
    <import index="x27k" ref="r:75ecab8a-8931-4140-afc6-4b46398710fc(com.mbeddr.core.modules.structure)" />
    <import index="qd6m" ref="r:c4c3f7d3-0acf-4671-a134-5fab66c4e637(com.mbeddr.core.modules.behavior)" />
    <import index="exl8" ref="r:9058158e-0926-42f8-8d00-d1d86f1ff722(com.mbeddr.core.debug.behavior)" />
    <import index="2gv2" ref="r:055bac8c-a50b-42ec-a317-e20a256152b4(com.mbeddr.core.debug.structure)" />
    <import index="tyg9" ref="r:f7c4fd39-46a1-4ed5-868e-f31cb019e359(stdioImporter.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="6496299201655527393" name="jetbrains.mps.lang.behavior.structure.LocalBehaviorMethodCall" flags="nn" index="BsUDl" />
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz" />
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1225271177708" name="jetbrains.mps.baseLanguage.structure.StringType" flags="in" index="17QB3L" />
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1138056022639" name="jetbrains.mps.lang.smodel.structure.SPropertyAccess" flags="nn" index="3TrcHB">
        <reference id="1138056395725" name="property" index="3TsBF5" />
      </concept>
      <concept id="1138056143562" name="jetbrains.mps.lang.smodel.structure.SLinkAccess" flags="nn" index="3TrEf2">
        <reference id="1138056516764" name="link" index="3Tt5mk" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
  </registry>
  <node concept="13h7C7" id="3n2QZq3ku8U">
    <ref role="13h7C2" to="tyg9:3n2QZq3jlKh" resolve="ImportConfig" />
    <node concept="13i0hz" id="3n2QZq3kubk" role="13h7CS">
      <property role="TrG5h" value="getFileName" />
      <node concept="3Tm1VV" id="3n2QZq3kubl" role="1B3o_S" />
      <node concept="17QB3L" id="3n2QZq3kuc4" role="3clF45" />
      <node concept="3clFbS" id="3n2QZq3kubn" role="3clF47">
        <node concept="3cpWs6" id="3n2QZq3kC8f" role="3cqZAp">
          <node concept="2OqwBi" id="3n2QZq3kCaA" role="3cqZAk">
            <node concept="13iPFW" id="3n2QZq3kC8A" role="2Oq$k0" />
            <node concept="3TrcHB" id="3n2QZq3kCim" role="2OqNvi">
              <ref role="3TsBF5" to="tyg9:3n2QZq3jpni" resolve="filename" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="cVN7JXU09x" role="13h7CS">
      <property role="TrG5h" value="getContainingFolder" />
      <node concept="3Tm1VV" id="cVN7JXU0eg" role="1B3o_S" />
      <node concept="17QB3L" id="cVN7JXU1Um" role="3clF45" />
      <node concept="3clFbS" id="cVN7JXU0ei" role="3clF47">
        <node concept="3cpWs6" id="cVN7JXUhW0" role="3cqZAp">
          <node concept="2OqwBi" id="cVN7JXUjx3" role="3cqZAk">
            <node concept="13iPFW" id="cVN7JXUjv4" role="2Oq$k0" />
            <node concept="3TrcHB" id="cVN7JXUjJR" role="2OqNvi">
              <ref role="3TsBF5" to="tyg9:cVN7JXTU2N" resolve="containingfolder" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="3n2QZq3kCk0" role="13h7CS">
      <property role="TrG5h" value="performImport" />
      <node concept="3Tm1VV" id="3n2QZq3kCk1" role="1B3o_S" />
      <node concept="10P_77" id="3n2QZq3kClE" role="3clF45" />
      <node concept="3clFbS" id="3n2QZq3kCk3" role="3clF47">
        <node concept="3clFbF" id="1tCykVAXev0" role="3cqZAp">
          <node concept="2YIFZM" id="1tCykVAXevj" role="3clFbG">
            <ref role="37wK5l" to="y402:3n2QZq3kSCW" resolve="doImport" />
            <ref role="1Pybhc" to="y402:3gXYkW$qiXk" resolve="Importer" />
            <node concept="2OqwBi" id="Yv_F9RtyJd" role="37wK5m">
              <node concept="13iPFW" id="Yv_F9RtyH2" role="2Oq$k0" />
              <node concept="3TrEf2" id="Yv_F9RtyYd" role="2OqNvi">
                <ref role="3Tt5mk" to="tyg9:3n2QZq3jpuY" />
              </node>
            </node>
            <node concept="BsUDl" id="Yv_F9Rtz1p" role="37wK5m">
              <ref role="37wK5l" node="3n2QZq3kubk" resolve="getFileName" />
            </node>
            <node concept="BsUDl" id="cVN7JXUjQa" role="37wK5m">
              <ref role="37wK5l" node="cVN7JXU09x" resolve="getContainingFolder" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="13hLZK" id="3n2QZq3kubi" role="13h7CW">
      <node concept="3clFbS" id="3n2QZq3kubj" role="2VODD2" />
    </node>
  </node>
</model>

