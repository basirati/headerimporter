<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:d17c9bb5-62f3-4052-a0e0-71c9e5eda24a(stdioImporter.editor)">
  <persistence version="9" />
  <languages>
    <use id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor" version="-1" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" implicit="true" />
    <import index="tyg9" ref="r:f7c4fd39-46a1-4ed5-868e-f31cb019e359(stdioImporter.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="18bc6592-03a6-4e29-a83a-7ff23bde13ba" name="jetbrains.mps.lang.editor">
      <concept id="1071666914219" name="jetbrains.mps.lang.editor.structure.ConceptEditorDeclaration" flags="ig" index="24kQdi" />
      <concept id="1140524381322" name="jetbrains.mps.lang.editor.structure.CellModel_ListWithRole" flags="ng" index="2czfm3">
        <child id="1140524464360" name="cellLayout" index="2czzBx" />
      </concept>
      <concept id="1106270571710" name="jetbrains.mps.lang.editor.structure.CellLayout_Vertical" flags="nn" index="2iRkQZ" />
      <concept id="1237303669825" name="jetbrains.mps.lang.editor.structure.CellLayout_Indent" flags="nn" index="l2Vlx" />
      <concept id="1237307900041" name="jetbrains.mps.lang.editor.structure.IndentLayoutIndentStyleClassItem" flags="ln" index="lj46D" />
      <concept id="1080736578640" name="jetbrains.mps.lang.editor.structure.BaseEditorComponent" flags="ig" index="2wURMF">
        <child id="1080736633877" name="cellModel" index="2wV5jI" />
      </concept>
      <concept id="1186414536763" name="jetbrains.mps.lang.editor.structure.BooleanStyleSheetItem" flags="ln" index="VOi$J">
        <property id="1186414551515" name="flag" index="VOm3f" />
      </concept>
      <concept id="1088013125922" name="jetbrains.mps.lang.editor.structure.CellModel_RefCell" flags="sg" stub="730538219795941030" index="1iCGBv">
        <child id="1088186146602" name="editorComponent" index="1sWHZn" />
      </concept>
      <concept id="1088185857835" name="jetbrains.mps.lang.editor.structure.InlineEditorComponent" flags="ig" index="1sVBvm" />
      <concept id="1139848536355" name="jetbrains.mps.lang.editor.structure.CellModel_WithRole" flags="ng" index="1$h60E">
        <property id="1140017977771" name="readOnly" index="1Intyy" />
        <reference id="1140103550593" name="relationDeclaration" index="1NtTu8" />
      </concept>
      <concept id="1073389446423" name="jetbrains.mps.lang.editor.structure.CellModel_Collection" flags="sn" stub="3013115976261988961" index="3EZMnI">
        <child id="1106270802874" name="cellLayout" index="2iSdaV" />
        <child id="1073389446424" name="childCellModel" index="3EZMnx" />
      </concept>
      <concept id="1073389577006" name="jetbrains.mps.lang.editor.structure.CellModel_Constant" flags="sn" stub="3610246225209162225" index="3F0ifn">
        <property id="1073389577007" name="text" index="3F0ifm" />
      </concept>
      <concept id="1073389658414" name="jetbrains.mps.lang.editor.structure.CellModel_Property" flags="sg" stub="730538219796134133" index="3F0A7n" />
      <concept id="1219418625346" name="jetbrains.mps.lang.editor.structure.IStyleContainer" flags="ng" index="3F0Thp">
        <child id="1219418656006" name="styleItem" index="3F10Kt" />
      </concept>
      <concept id="1073390211982" name="jetbrains.mps.lang.editor.structure.CellModel_RefNodeList" flags="sg" stub="2794558372793454595" index="3F2HdR" />
      <concept id="1166049232041" name="jetbrains.mps.lang.editor.structure.AbstractComponent" flags="ng" index="1XWOmA">
        <reference id="1166049300910" name="conceptDeclaration" index="1XX52x" />
      </concept>
    </language>
  </registry>
  <node concept="24kQdi" id="6o6ZEFe6Hxi">
    <ref role="1XX52x" to="tyg9:3n2QZq3jlKh" resolve="ImportConfig" />
    <node concept="3EZMnI" id="6o6ZEFe6Ix_" role="2wV5jI">
      <node concept="3F0ifn" id="6o6ZEFe6Ixy" role="3EZMnx">
        <property role="3F0ifm" value="import" />
      </node>
      <node concept="3F0A7n" id="6o6ZEFe6IxI" role="3EZMnx">
        <ref role="1NtTu8" to="tyg9:3n2QZq3jpni" resolve="filename" />
      </node>
      <node concept="3F0ifn" id="6o6ZEFe6IxP" role="3EZMnx">
        <property role="3F0ifm" value="into" />
      </node>
      <node concept="1iCGBv" id="6o6ZEFe6IxZ" role="3EZMnx">
        <ref role="1NtTu8" to="tyg9:3n2QZq3jpuY" />
        <node concept="1sVBvm" id="6o6ZEFe6Iy0" role="1sWHZn">
          <node concept="3F0A7n" id="6o6ZEFe6Iy8" role="2wV5jI">
            <property role="1Intyy" value="true" />
            <ref role="1NtTu8" to="tpck:h0TrG11" resolve="name" />
          </node>
        </node>
        <node concept="lj46D" id="cVN7JXTU2Y" role="3F10Kt">
          <property role="VOm3f" value="true" />
        </node>
      </node>
      <node concept="3F0ifn" id="cVN7JXTUJT" role="3EZMnx">
        <property role="3F0ifm" value="from" />
      </node>
      <node concept="3F0A7n" id="cVN7JXTUKd" role="3EZMnx">
        <ref role="1NtTu8" to="tyg9:cVN7JXTU2N" resolve="containingfolder" />
      </node>
      <node concept="l2Vlx" id="6I4IJhud4d1" role="2iSdaV" />
    </node>
  </node>
  <node concept="24kQdi" id="6o6ZEFe6I$a">
    <ref role="1XX52x" to="tyg9:3n2QZq3jpva" resolve="ImportConfigs" />
    <node concept="3EZMnI" id="6o6ZEFe6I$i" role="2wV5jI">
      <node concept="2iRkQZ" id="6o6ZEFe6I$j" role="2iSdaV" />
      <node concept="3F0ifn" id="6o6ZEFe6I$f" role="3EZMnx">
        <property role="3F0ifm" value="Import Configurations" />
      </node>
      <node concept="3F2HdR" id="6o6ZEFe6I$K" role="3EZMnx">
        <ref role="1NtTu8" to="tyg9:3n2QZq3jpvb" />
        <node concept="2iRkQZ" id="6o6ZEFe6I$L" role="2czzBx" />
      </node>
    </node>
  </node>
</model>

