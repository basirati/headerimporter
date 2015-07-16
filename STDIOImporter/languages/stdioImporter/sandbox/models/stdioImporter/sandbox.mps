<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:9170e8ec-2d5a-4608-8f86-cdc24f14796e(stdioImporter.sandbox)">
  <persistence version="9" />
  <languages>
    <use id="4552c9e5-a342-4299-8de1-338d8e5679fc" name="stdioImporter" version="-1" />
    <use id="017fba0e-af15-4a23-b0a8-02b5c1141e75" name="com.mbeddr.cc.var.annotations" version="-1" />
    <use id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core" version="1" />
    <use id="e401b447-8019-4ccd-a72c-bfb0230f5782" name="com.mbeddr.cc.var.fm" version="1" />
    <devkit ref="0ca77142-1eea-4b14-b369-69bdaa1c44fb(com.mbeddr.analyses.core)" />
    <devkit ref="d2a9c55c-6bdc-4cc2-97e1-4ba7552f5584(com.mbeddr.core)" />
  </languages>
  <imports>
    <import index="ay9h" ref="r:09ea4c62-7199-36e2-9ca1-1f2a40bf3d5f(STDIOImporter.__spreferences.PlatformTemplates)" />
  </imports>
  <registry>
    <language id="a9d69647-0840-491e-bf39-2eb0805d2011" name="com.mbeddr.core.statements">
      <concept id="7763322639126652757" name="com.mbeddr.core.statements.structure.ITypeContainingType" flags="ng" index="2umbIr">
        <child id="7763322639126652758" name="baseType" index="2umbIo" />
      </concept>
      <concept id="4185783222026475861" name="com.mbeddr.core.statements.structure.StatementList" flags="ng" index="3XIRFW">
        <child id="4185783222026475862" name="statements" index="3XIRFZ" />
      </concept>
      <concept id="4185783222026464515" name="com.mbeddr.core.statements.structure.Statement" flags="ng" index="3XISUE" />
    </language>
    <language id="2d7fadf5-33f6-4e80-a78f-0f739add2bde" name="com.mbeddr.core.buildconfig">
      <concept id="5046689135693761556" name="com.mbeddr.core.buildconfig.structure.Binary" flags="ng" index="2eOfOj">
        <child id="5046689135693761559" name="referencedModules" index="2eOfOg" />
      </concept>
      <concept id="5046689135693761554" name="com.mbeddr.core.buildconfig.structure.Executable" flags="ng" index="2eOfOl">
        <property id="3431613015799084476" name="isTest" index="iO3LB" />
      </concept>
      <concept id="7717755763392524104" name="com.mbeddr.core.buildconfig.structure.BuildConfiguration" flags="ng" index="2v9HqL">
        <child id="5046689135694070731" name="binaries" index="2ePNbc" />
        <child id="5323740605968447026" name="target" index="2AWWZH" />
      </concept>
      <concept id="7717755763392524107" name="com.mbeddr.core.buildconfig.structure.ModuleRef" flags="ng" index="2v9HqM">
        <reference id="7717755763392524108" name="module" index="2v9HqP" />
      </concept>
      <concept id="5323740605968447022" name="com.mbeddr.core.buildconfig.structure.DesktopPlatform" flags="ng" index="2AWWZL">
        <property id="5323740605968447025" name="compilerOptions" index="2AWWZI" />
        <property id="5323740605968447024" name="compiler" index="2AWWZJ" />
      </concept>
      <concept id="2736179788492003936" name="com.mbeddr.core.buildconfig.structure.IDebuggablePlatform" flags="ng" index="1FkSt_">
        <property id="2736179788492003937" name="debugOptions" index="1FkSt$" />
      </concept>
    </language>
    <language id="3bf5377a-e904-4ded-9754-5a516023bfaa" name="com.mbeddr.core.pointers">
      <concept id="6113173064526131575" name="com.mbeddr.core.pointers.structure.StringLiteral" flags="ng" index="PhEJO">
        <property id="6113173064526131578" name="value" index="PhEJT" />
      </concept>
      <concept id="6113173064528067332" name="com.mbeddr.core.pointers.structure.StringType" flags="ng" index="Pu267" />
      <concept id="279446265608459824" name="com.mbeddr.core.pointers.structure.PointerType" flags="ng" index="3wxxNl" />
      <concept id="5679441017214012545" name="com.mbeddr.core.pointers.structure.ArrayType" flags="ng" index="3J0A42" />
    </language>
    <language id="2693fc71-9b0e-4b05-ab13-f57227d675f2" name="com.mbeddr.core.util">
      <concept id="4459718605982051949" name="com.mbeddr.core.util.structure.ReportingConfiguration" flags="ng" index="2Q9Fgs">
        <child id="4459718605982051999" name="strategy" index="2Q9FjI" />
      </concept>
      <concept id="4459718605982051980" name="com.mbeddr.core.util.structure.PrintfReportingStrategy" flags="ng" index="2Q9FjX" />
    </language>
    <language id="efda956e-491e-4f00-ba14-36af2f213ecf" name="com.mbeddr.core.udt">
      <concept id="6116558314501347857" name="com.mbeddr.core.udt.structure.TypeDef" flags="ng" index="rcJHK">
        <child id="6116558314501347862" name="original" index="rcJHR" />
      </concept>
      <concept id="6116558314501347863" name="com.mbeddr.core.udt.structure.TypeDefType" flags="ng" index="rcJHQ">
        <reference id="6116558314501347864" name="typeDef" index="rcJHT" />
      </concept>
      <concept id="7099329415459817973" name="com.mbeddr.core.udt.structure.SUDeclaration" flags="ng" index="HsMI8">
        <child id="7099329415459888018" name="members" index="HszBJ" />
      </concept>
      <concept id="5882395403881875736" name="com.mbeddr.core.udt.structure.Member" flags="ng" index="1dpRTG" />
      <concept id="6394819151180597807" name="com.mbeddr.core.udt.structure.StructDeclaration" flags="ng" index="1sgJKc" />
    </language>
    <language id="d4280a54-f6df-4383-aa41-d1b2bffa7eb1" name="com.mbeddr.core.base">
      <concept id="4459718605982007337" name="com.mbeddr.core.base.structure.IConfigurationContainer" flags="ng" index="2Q9xDo">
        <child id="4459718605982007338" name="configurationItems" index="2Q9xDr" />
      </concept>
      <concept id="747084250476811597" name="com.mbeddr.core.base.structure.DefaultGenericChunkDependency" flags="ng" index="3GEVxB">
        <reference id="747084250476878887" name="chunk" index="3GEb4d" />
      </concept>
    </language>
    <language id="6d11763d-483d-4b2b-8efc-09336c1b0001" name="com.mbeddr.core.modules">
      <concept id="3788988821851860886" name="com.mbeddr.core.modules.structure.GlobalConstantDeclaration" flags="ng" index="4WHVk" />
      <concept id="8551646674110395547" name="com.mbeddr.core.modules.structure.FunctionRefType" flags="ng" index="pFrBc">
        <child id="8551646674110395548" name="returnType" index="pFrBb" />
      </concept>
      <concept id="6116558314501417952" name="com.mbeddr.core.modules.structure.HeaderDescriptor" flags="ng" index="rcWE1" />
      <concept id="6116558314501417921" name="com.mbeddr.core.modules.structure.ExternalModule" flags="ng" index="rcWEw">
        <child id="6116558314501417978" name="descriptors" index="rcWEr" />
      </concept>
      <concept id="6116558314501417934" name="com.mbeddr.core.modules.structure.ExternalResourceDescriptor" flags="ng" index="rcWEJ">
        <property id="6116558314501417936" name="path" index="rcWEL" />
      </concept>
      <concept id="8967919205527146149" name="com.mbeddr.core.modules.structure.ReturnStatement" flags="ng" index="2BFjQ_">
        <child id="8967919205527146150" name="expression" index="2BFjQA" />
      </concept>
      <concept id="6021475212425916971" name="com.mbeddr.core.modules.structure.GlobalConstantFunctionDeclaration" flags="ng" index="BTY7A">
        <child id="6021475212425916983" name="arguments" index="BTY7U" />
      </concept>
      <concept id="6021475212426054485" name="com.mbeddr.core.modules.structure.GlobalConstantFunctionArgument" flags="ng" index="BUhyo" />
      <concept id="3376775282622611165" name="com.mbeddr.core.modules.structure.StaticMemoryLocation" flags="ng" index="2DPCBB" />
      <concept id="3376775282622142916" name="com.mbeddr.core.modules.structure.AbstractDefineLike" flags="ng" index="2DRUVY">
        <child id="3376775282622233992" name="value" index="2DQcEM" />
      </concept>
      <concept id="8105003328814797298" name="com.mbeddr.core.modules.structure.IFunctionLike" flags="ng" index="2H9T1B">
        <child id="5708867820623310661" name="arguments" index="1UOdpc" />
      </concept>
      <concept id="6437088627575722813" name="com.mbeddr.core.modules.structure.Module" flags="ng" index="N3F4X">
        <child id="6437088627575722833" name="contents" index="N3F5h" />
        <child id="1317894735999304826" name="imports" index="2OODSX" />
      </concept>
      <concept id="6437088627575722830" name="com.mbeddr.core.modules.structure.ImplementationModule" flags="ng" index="N3F5e" />
      <concept id="6437088627575722831" name="com.mbeddr.core.modules.structure.IModuleContent" flags="ng" index="N3F5f">
        <property id="1317894735999272944" name="exported" index="2OOxQR" />
      </concept>
      <concept id="6437088627575724000" name="com.mbeddr.core.modules.structure.FunctionPrototype" flags="ng" index="N3Fnw" />
      <concept id="6437088627575724001" name="com.mbeddr.core.modules.structure.Function" flags="ng" index="N3Fnx">
        <child id="4185783222026475860" name="body" index="3XIRFX" />
      </concept>
      <concept id="8934095934011938595" name="com.mbeddr.core.modules.structure.EmptyModuleContent" flags="ng" index="2NXPZ9" />
      <concept id="7892328519581704407" name="com.mbeddr.core.modules.structure.Argument" flags="ng" index="19RgSI" />
      <concept id="6610873504380335822" name="com.mbeddr.core.modules.structure.GlobalVariableDeclaration" flags="ng" index="1S7NMz" />
    </language>
    <language id="017fba0e-af15-4a23-b0a8-02b5c1141e75" name="com.mbeddr.cc.var.annotations">
      <concept id="661141253149262080" name="com.mbeddr.cc.var.annotations.structure.FeatureModelConfiguration" flags="ng" index="2dvl_R">
        <reference id="661141253149262081" name="featureModel" index="2dvl_Q" />
        <reference id="7455436784495586129" name="configModel" index="AiAcg" />
      </concept>
      <concept id="661141253149231475" name="com.mbeddr.cc.var.annotations.structure.PresenceCondition" flags="ng" index="2dvt44">
        <child id="661141253149231543" name="condition" index="2dvt70" />
      </concept>
      <concept id="6617704999132114000" name="com.mbeddr.cc.var.annotations.structure.ConfigurationMapping" flags="ng" index="IjAfM">
        <reference id="6617704999132114002" name="featureModel" index="IjAfK" />
        <reference id="6617704999132114003" name="configurationModel" index="IjAfL" />
      </concept>
      <concept id="6514264311693667923" name="com.mbeddr.cc.var.annotations.structure.VariabilityConfigItem" flags="ng" index="35TzUN">
        <child id="4920787109780106774" name="mappings" index="19yoJo" />
      </concept>
      <concept id="2613872510229282925" name="com.mbeddr.cc.var.annotations.structure.FeatureCondition" flags="ng" index="3o9_tv">
        <child id="2613872510229282926" name="expr" index="3o9_ts" />
      </concept>
    </language>
    <language id="e401b447-8019-4ccd-a72c-bfb0230f5782" name="com.mbeddr.cc.var.fm">
      <concept id="8473958930087782177" name="com.mbeddr.cc.var.fm.structure.RootFeature" flags="ng" index="28I2Iu" />
      <concept id="7642065485959505457" name="com.mbeddr.cc.var.fm.structure.FeatureRef" flags="ng" index="2qVrgw">
        <reference id="7642065485959505458" name="feature" index="2qVrgz" />
      </concept>
      <concept id="6825476687691297416" name="com.mbeddr.cc.var.fm.structure.ConfigurationModel" flags="ng" index="Id4hE">
        <reference id="6825476687691297418" name="configures" index="Id4hC" />
        <child id="6825476687691297417" name="rootFeature" index="Id4hF" />
      </concept>
      <concept id="6825476687691297422" name="com.mbeddr.cc.var.fm.structure.SelectedFeature" flags="ng" index="Id4hG">
        <reference id="6825476687691297425" name="feature" index="Id4hN" />
        <child id="6825476687691297423" name="children" index="Id4hH" />
      </concept>
      <concept id="6825476687691297426" name="com.mbeddr.cc.var.fm.structure.Feature" flags="ng" index="Id4hK">
        <child id="6825476687691297427" name="constraint" index="Id4hL" />
        <child id="6825476687691297428" name="children" index="Id4hQ" />
      </concept>
      <concept id="6825476687691297434" name="com.mbeddr.cc.var.fm.structure.FeatureModel" flags="ng" index="Id4hS">
        <child id="6825476687691297435" name="root" index="Id4hT" />
      </concept>
      <concept id="6825476687691337712" name="com.mbeddr.cc.var.fm.structure.VariabilitySupport" flags="ng" index="Idr$i">
        <child id="6825476687691337713" name="contents" index="Idr$j" />
      </concept>
      <concept id="6825476687691317627" name="com.mbeddr.cc.var.fm.structure.OptionalConstraint" flags="ng" index="Idvup" />
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <child id="5169995583184591170" name="smodelAttribute" index="lGtFl" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="4552c9e5-a342-4299-8de1-338d8e5679fc" name="stdioImporter">
      <concept id="3873900481303386058" name="stdioImporter.structure.ImportConfigs" flags="ng" index="2QzOKW">
        <child id="3873900481303386059" name="configs" index="2QzOKX" />
      </concept>
      <concept id="3873900481303370769" name="stdioImporter.structure.ImportConfig" flags="ng" index="2QzSvB">
        <property id="3873900481303385554" name="filename" index="2QzOS$" />
        <property id="233004638652571827" name="containingfolder" index="3YR6N8" />
        <reference id="3873900481303386046" name="module" index="2QzOL8" />
      </concept>
    </language>
    <language id="61c69711-ed61-4850-81d9-7714ff227fb0" name="com.mbeddr.core.expressions">
      <concept id="8463282783691618456" name="com.mbeddr.core.expressions.structure.UnsignedInt64tType" flags="ng" index="26Vqp1" />
      <concept id="8463282783691618461" name="com.mbeddr.core.expressions.structure.UnsignedInt8tType" flags="ng" index="26Vqp4" />
      <concept id="8463282783691618450" name="com.mbeddr.core.expressions.structure.UnsignedInt32tType" flags="ng" index="26Vqpb" />
      <concept id="8463282783691618440" name="com.mbeddr.core.expressions.structure.Int32tType" flags="ng" index="26Vqph" />
      <concept id="8463282783691618445" name="com.mbeddr.core.expressions.structure.Int64tType" flags="ng" index="26Vqpk" />
      <concept id="8463282783691618435" name="com.mbeddr.core.expressions.structure.Int16tType" flags="ng" index="26Vqpq" />
      <concept id="8463282783691618466" name="com.mbeddr.core.expressions.structure.UnsignedInt16tType" flags="ng" index="26VqpV" />
      <concept id="8463282783691618471" name="com.mbeddr.core.expressions.structure.UnsignedLongLongType" flags="ng" index="26VqpY" />
      <concept id="8463282783691618426" name="com.mbeddr.core.expressions.structure.Int8tType" flags="ng" index="26Vqqz" />
      <concept id="8463282783691596316" name="com.mbeddr.core.expressions.structure.LongLongType" flags="ng" index="26VBN5" />
      <concept id="8463282783691596310" name="com.mbeddr.core.expressions.structure.UnsignedLongType" flags="ng" index="26VBNf" />
      <concept id="8463282783691492730" name="com.mbeddr.core.expressions.structure.UnsignedIntType" flags="ng" index="26VXez" />
      <concept id="8463282783691492716" name="com.mbeddr.core.expressions.structure.UnsignedCharType" flags="ng" index="26VXeP" />
      <concept id="3005510381523579442" name="com.mbeddr.core.expressions.structure.UnaryExpression" flags="ng" index="2aKSnQ">
        <child id="7254843406768839760" name="expression" index="1_9fRO" />
      </concept>
      <concept id="1664480272136207708" name="com.mbeddr.core.expressions.structure.CharType" flags="ng" index="biTqx" />
      <concept id="8864856114140038681" name="com.mbeddr.core.expressions.structure.DoubleType" flags="ng" index="2fgwQN" />
      <concept id="2212975673976017893" name="com.mbeddr.core.expressions.structure.NumericLiteral" flags="ng" index="2hns93">
        <property id="2212975673976043696" name="value" index="2hmy$m" />
      </concept>
      <concept id="9149785691755093694" name="com.mbeddr.core.expressions.structure.IEEE754TypeSizeSpecification" flags="ng" index="2mYgW_">
        <property id="9149785691755093695" name="exists" index="2mYgW$" />
        <child id="9149785691755093698" name="ieee754Type" index="2mYgXp" />
        <child id="9149785691755093697" name="basicType" index="2mYgXq" />
      </concept>
      <concept id="9149785691754701072" name="com.mbeddr.core.expressions.structure.LongDoubleType" flags="ng" index="2p1N2b" />
      <concept id="318113533128716675" name="com.mbeddr.core.expressions.structure.ITyped" flags="ng" index="2C2TGh">
        <child id="318113533128716676" name="type" index="2C2TGm" />
      </concept>
      <concept id="595416243537320771" name="com.mbeddr.core.expressions.structure.UnsignedShortType" flags="ng" index="LMkMC" />
      <concept id="3335993110369949928" name="com.mbeddr.core.expressions.structure.ShortType" flags="ng" index="MySNB" />
      <concept id="3335993110369795381" name="com.mbeddr.core.expressions.structure.TypeSizeSpecification" flags="ng" index="MXy$U">
        <property id="3335993110370236888" name="exists" index="MzQRn" />
        <child id="7496733358578231499" name="c99Type" index="15Utue" />
        <child id="7496733358578231498" name="basicType" index="15Utuf" />
      </concept>
      <concept id="3335993110369795380" name="com.mbeddr.core.expressions.structure.TypeSizeConfiguration" flags="ng" index="MXy$V">
        <child id="9149785691755067704" name="ieee754Specifications" index="2mYqyz" />
        <child id="3335993110369805710" name="specifications" index="MXv61" />
        <child id="8863019357864392147" name="sizeTType" index="2O5j3Q" />
        <child id="3813668170744198630" name="pointerDiffType" index="3kxMGo" />
        <child id="5598157691785092886" name="vaList" index="3EM3Bk" />
        <child id="6658270785788810330" name="minFloatValue" index="3LaRDq" />
        <child id="6658270785788810339" name="maxDoubleValue" index="3LaRDz" />
        <child id="6658270785788810349" name="minDoubleValue" index="3LaRDH" />
        <child id="6658270785788810029" name="maxFloatValue" index="3LaROH" />
      </concept>
      <concept id="3830958861296781575" name="com.mbeddr.core.expressions.structure.NotExpression" flags="ng" index="19$8ne" />
      <concept id="7892328519581699353" name="com.mbeddr.core.expressions.structure.VoidType" flags="ng" index="19Rifw" />
      <concept id="4739982148980385695" name="com.mbeddr.core.expressions.structure.FloatType" flags="ng" index="3AreGT" />
      <concept id="8860443239512128054" name="com.mbeddr.core.expressions.structure.Type" flags="ng" index="3TlMgo">
        <property id="2941277002445651368" name="const" index="2c7vTL" />
        <property id="2941277002448691247" name="volatile" index="2caQfQ" />
      </concept>
      <concept id="8860443239512128108" name="com.mbeddr.core.expressions.structure.IntType" flags="ng" index="3TlMh2" />
      <concept id="8860443239512128103" name="com.mbeddr.core.expressions.structure.NumberLiteral" flags="ng" index="3TlMh9" />
      <concept id="1670233242589902798" name="com.mbeddr.core.expressions.structure.ScientificNumber" flags="ng" index="3VGQI6">
        <property id="1670233242589904217" name="prefix" index="3VGQ4h" />
        <property id="1670233242589904219" name="postfix" index="3VGQ4j" />
      </concept>
      <concept id="86532984527104137" name="com.mbeddr.core.expressions.structure.LongType" flags="ng" index="1X9cn3" />
    </language>
  </registry>
  <node concept="2QzOKW" id="Yv_F9RsoTP">
    <node concept="2QzSvB" id="Yv_F9Rsu9g" role="2QzOKX">
      <property role="2QzOS$" value="stdio.h" />
      <property role="3YR6N8" value="/home/basirati/Desktop/impo/" />
      <ref role="2QzOL8" node="Yv_F9Rsp95" resolve="Test" />
    </node>
  </node>
  <node concept="rcWEw" id="Yv_F9Rsp95">
    <property role="TrG5h" value="Test" />
    <node concept="rcWE1" id="3K5ngtdDKi_" role="rcWEr">
      <property role="rcWEL" value="&lt;stdio.h&gt;" />
    </node>
    <node concept="3GEVxB" id="3K5ngtdDKiP" role="2OODSX">
      <ref role="3GEb4d" node="6_NQeTaYkCa" resolve="IFDEFVariability" />
    </node>
    <node concept="4WHVk" id="3K5ngtdDKiQ" role="N3F5h">
      <property role="TrG5h" value="BUFSIZ" />
      <node concept="3TlMh9" id="3K5ngtdDKiR" role="2DQcEM">
        <property role="2hmy$m" value="512" />
      </node>
    </node>
    <node concept="1sgJKc" id="3K5ngtdDKiS" role="N3F5h">
      <property role="TrG5h" value="_iobuf" />
      <node concept="2dvt44" id="3K5ngtdDKiU" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKiT" role="2dvt70">
          <node concept="2qVrgw" id="3K5ngtdDKiW" role="3o9_ts">
            <ref role="2qVrgz" node="3K5ngtdDKiD" resolve="FILE" />
          </node>
        </node>
      </node>
      <node concept="1dpRTG" id="3K5ngtdDKj0" role="HszBJ">
        <property role="TrG5h" value="_ptr" />
        <node concept="3wxxNl" id="3K5ngtdDKiZ" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKiY" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
        <node concept="2dvt44" id="3K5ngtdDKj2" role="lGtFl">
          <node concept="3o9_tv" id="3K5ngtdDKj1" role="2dvt70">
            <node concept="2qVrgw" id="3K5ngtdDKj4" role="3o9_ts">
              <ref role="2qVrgz" node="3K5ngtdDKiE" resolve="pdp11" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1dpRTG" id="3K5ngtdDKj7" role="HszBJ">
        <property role="TrG5h" value="_cnt" />
        <node concept="3TlMh2" id="3K5ngtdDKj6" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
        <node concept="2dvt44" id="3K5ngtdDKj9" role="lGtFl">
          <node concept="3o9_tv" id="3K5ngtdDKj8" role="2dvt70">
            <node concept="2qVrgw" id="3K5ngtdDKjb" role="3o9_ts">
              <ref role="2qVrgz" node="3K5ngtdDKiE" resolve="pdp11" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1dpRTG" id="3K5ngtdDKje" role="HszBJ">
        <property role="TrG5h" value="_cnt" />
        <node concept="3TlMh2" id="3K5ngtdDKjd" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
        <node concept="2dvt44" id="3K5ngtdDKjg" role="lGtFl">
          <node concept="3o9_tv" id="3K5ngtdDKjf" role="2dvt70">
            <node concept="19$8ne" id="3K5ngtdDKjj" role="3o9_ts">
              <node concept="2qVrgw" id="3K5ngtdDKji" role="1_9fRO">
                <ref role="2qVrgz" node="3K5ngtdDKiE" resolve="pdp11" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1dpRTG" id="3K5ngtdDKjn" role="HszBJ">
        <property role="TrG5h" value="_ptr" />
        <node concept="3wxxNl" id="3K5ngtdDKjm" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKjl" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
        <node concept="2dvt44" id="3K5ngtdDKjp" role="lGtFl">
          <node concept="3o9_tv" id="3K5ngtdDKjo" role="2dvt70">
            <node concept="19$8ne" id="3K5ngtdDKjs" role="3o9_ts">
              <node concept="2qVrgw" id="3K5ngtdDKjr" role="1_9fRO">
                <ref role="2qVrgz" node="3K5ngtdDKiE" resolve="pdp11" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="1dpRTG" id="3K5ngtdDKjw" role="HszBJ">
        <property role="TrG5h" value="_base" />
        <node concept="3wxxNl" id="3K5ngtdDKjv" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKju" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
        <node concept="2dvt44" id="3K5ngtdDKjy" role="lGtFl">
          <node concept="3o9_tv" id="3K5ngtdDKjx" role="2dvt70">
            <node concept="2qVrgw" id="3K5ngtdDKj$" role="3o9_ts">
              <ref role="2qVrgz" node="3K5ngtdDKiD" resolve="FILE" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1dpRTG" id="3K5ngtdDKjB" role="HszBJ">
        <property role="TrG5h" value="_bufsiz" />
        <node concept="3TlMh2" id="3K5ngtdDKjA" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
        <node concept="2dvt44" id="3K5ngtdDKjD" role="lGtFl">
          <node concept="3o9_tv" id="3K5ngtdDKjC" role="2dvt70">
            <node concept="2qVrgw" id="3K5ngtdDKjF" role="3o9_ts">
              <ref role="2qVrgz" node="3K5ngtdDKiD" resolve="FILE" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1dpRTG" id="3K5ngtdDKjI" role="HszBJ">
        <property role="TrG5h" value="_flag" />
        <node concept="MySNB" id="3K5ngtdDKjH" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
        <node concept="2dvt44" id="3K5ngtdDKjK" role="lGtFl">
          <node concept="3o9_tv" id="3K5ngtdDKjJ" role="2dvt70">
            <node concept="2qVrgw" id="3K5ngtdDKjM" role="3o9_ts">
              <ref role="2qVrgz" node="3K5ngtdDKiD" resolve="FILE" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1dpRTG" id="3K5ngtdDKjP" role="HszBJ">
        <property role="TrG5h" value="_file" />
        <node concept="3TlMh2" id="3K5ngtdDKjO" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
        <node concept="2dvt44" id="3K5ngtdDKjR" role="lGtFl">
          <node concept="3o9_tv" id="3K5ngtdDKjQ" role="2dvt70">
            <node concept="2qVrgw" id="3K5ngtdDKjT" role="3o9_ts">
              <ref role="2qVrgz" node="3K5ngtdDKiD" resolve="FILE" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1dpRTG" id="3K5ngtdDKjX" role="HszBJ">
        <property role="TrG5h" value="_fptr" />
        <node concept="3wxxNl" id="3K5ngtdDKjW" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKjV" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
        <node concept="2dvt44" id="3K5ngtdDKjZ" role="lGtFl">
          <node concept="3o9_tv" id="3K5ngtdDKjY" role="2dvt70">
            <node concept="2qVrgw" id="3K5ngtdDKk1" role="3o9_ts">
              <ref role="2qVrgz" node="3K5ngtdDKiD" resolve="FILE" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1dpRTG" id="3K5ngtdDKk4" role="HszBJ">
        <property role="TrG5h" value="_tinybuf" />
        <node concept="biTqx" id="3K5ngtdDKk3" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
        <node concept="2dvt44" id="3K5ngtdDKk6" role="lGtFl">
          <node concept="3o9_tv" id="3K5ngtdDKk5" role="2dvt70">
            <node concept="2qVrgw" id="3K5ngtdDKk8" role="3o9_ts">
              <ref role="2qVrgz" node="3K5ngtdDKiD" resolve="FILE" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1dpRTG" id="3K5ngtdDKkc" role="HszBJ">
        <property role="TrG5h" value="_filename" />
        <node concept="3wxxNl" id="3K5ngtdDKkb" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKka" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
        <node concept="2dvt44" id="3K5ngtdDKke" role="lGtFl">
          <node concept="3o9_tv" id="3K5ngtdDKkd" role="2dvt70">
            <node concept="2qVrgw" id="3K5ngtdDKkg" role="3o9_ts">
              <ref role="2qVrgz" node="3K5ngtdDKiD" resolve="FILE" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1dpRTG" id="3K5ngtdDKkl" role="HszBJ">
        <property role="TrG5h" value="_filbuf" />
        <node concept="pFrBc" id="3K5ngtdDKkh" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="3wxxNl" id="3K5ngtdDKkk" role="pFrBb">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
            <node concept="3TlMh2" id="3K5ngtdDKkj" role="2umbIo">
              <property role="2caQfQ" value="false" />
              <property role="2c7vTL" value="false" />
            </node>
          </node>
        </node>
        <node concept="2dvt44" id="3K5ngtdDKkn" role="lGtFl">
          <node concept="3o9_tv" id="3K5ngtdDKkm" role="2dvt70">
            <node concept="2qVrgw" id="3K5ngtdDKkp" role="3o9_ts">
              <ref role="2qVrgz" node="3K5ngtdDKiD" resolve="FILE" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1dpRTG" id="3K5ngtdDKku" role="HszBJ">
        <property role="TrG5h" value="_flsbuf" />
        <node concept="pFrBc" id="3K5ngtdDKkq" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="3wxxNl" id="3K5ngtdDKkt" role="pFrBb">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
            <node concept="3TlMh2" id="3K5ngtdDKks" role="2umbIo">
              <property role="2caQfQ" value="false" />
              <property role="2c7vTL" value="false" />
            </node>
          </node>
        </node>
        <node concept="2dvt44" id="3K5ngtdDKkw" role="lGtFl">
          <node concept="3o9_tv" id="3K5ngtdDKkv" role="2dvt70">
            <node concept="2qVrgw" id="3K5ngtdDKky" role="3o9_ts">
              <ref role="2qVrgz" node="3K5ngtdDKiD" resolve="FILE" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1dpRTG" id="3K5ngtdDKkB" role="HszBJ">
        <property role="TrG5h" value="_readfunc" />
        <node concept="pFrBc" id="3K5ngtdDKkz" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="3wxxNl" id="3K5ngtdDKkA" role="pFrBb">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
            <node concept="3TlMh2" id="3K5ngtdDKk_" role="2umbIo">
              <property role="2caQfQ" value="false" />
              <property role="2c7vTL" value="false" />
            </node>
          </node>
        </node>
        <node concept="2dvt44" id="3K5ngtdDKkD" role="lGtFl">
          <node concept="3o9_tv" id="3K5ngtdDKkC" role="2dvt70">
            <node concept="2qVrgw" id="3K5ngtdDKkF" role="3o9_ts">
              <ref role="2qVrgz" node="3K5ngtdDKiD" resolve="FILE" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1dpRTG" id="3K5ngtdDKkK" role="HszBJ">
        <property role="TrG5h" value="_writefunc" />
        <node concept="pFrBc" id="3K5ngtdDKkG" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="3wxxNl" id="3K5ngtdDKkJ" role="pFrBb">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
            <node concept="3TlMh2" id="3K5ngtdDKkI" role="2umbIo">
              <property role="2caQfQ" value="false" />
              <property role="2c7vTL" value="false" />
            </node>
          </node>
        </node>
        <node concept="2dvt44" id="3K5ngtdDKkM" role="lGtFl">
          <node concept="3o9_tv" id="3K5ngtdDKkL" role="2dvt70">
            <node concept="2qVrgw" id="3K5ngtdDKkO" role="3o9_ts">
              <ref role="2qVrgz" node="3K5ngtdDKiD" resolve="FILE" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1dpRTG" id="3K5ngtdDKkT" role="HszBJ">
        <property role="TrG5h" value="_seekfunc" />
        <node concept="pFrBc" id="3K5ngtdDKkP" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="3wxxNl" id="3K5ngtdDKkS" role="pFrBb">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
            <node concept="1X9cn3" id="3K5ngtdDKkR" role="2umbIo">
              <property role="2caQfQ" value="false" />
              <property role="2c7vTL" value="false" />
            </node>
          </node>
        </node>
        <node concept="2dvt44" id="3K5ngtdDKkV" role="lGtFl">
          <node concept="3o9_tv" id="3K5ngtdDKkU" role="2dvt70">
            <node concept="2qVrgw" id="3K5ngtdDKkX" role="3o9_ts">
              <ref role="2qVrgz" node="3K5ngtdDKiD" resolve="FILE" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1dpRTG" id="3K5ngtdDKl2" role="HszBJ">
        <property role="TrG5h" value="_closefunc" />
        <node concept="pFrBc" id="3K5ngtdDKkY" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="3wxxNl" id="3K5ngtdDKl1" role="pFrBb">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
            <node concept="3TlMh2" id="3K5ngtdDKl0" role="2umbIo">
              <property role="2caQfQ" value="false" />
              <property role="2c7vTL" value="false" />
            </node>
          </node>
        </node>
        <node concept="2dvt44" id="3K5ngtdDKl4" role="lGtFl">
          <node concept="3o9_tv" id="3K5ngtdDKl3" role="2dvt70">
            <node concept="2qVrgw" id="3K5ngtdDKl6" role="3o9_ts">
              <ref role="2qVrgz" node="3K5ngtdDKiD" resolve="FILE" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1dpRTG" id="3K5ngtdDKlb" role="HszBJ">
        <property role="TrG5h" value="_errfunc" />
        <node concept="pFrBc" id="3K5ngtdDKl7" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="3wxxNl" id="3K5ngtdDKla" role="pFrBb">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
            <node concept="3TlMh2" id="3K5ngtdDKl9" role="2umbIo">
              <property role="2caQfQ" value="false" />
              <property role="2c7vTL" value="false" />
            </node>
          </node>
        </node>
        <node concept="2dvt44" id="3K5ngtdDKld" role="lGtFl">
          <node concept="3o9_tv" id="3K5ngtdDKlc" role="2dvt70">
            <node concept="2qVrgw" id="3K5ngtdDKlf" role="3o9_ts">
              <ref role="2qVrgz" node="3K5ngtdDKiD" resolve="FILE" />
            </node>
          </node>
        </node>
      </node>
      <node concept="1dpRTG" id="3K5ngtdDKli" role="HszBJ">
        <property role="TrG5h" value="_next" />
        <node concept="3wxxNl" id="3K5ngtdDKlh" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="rcJHQ" id="3K5ngtdDKlg" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
            <ref role="rcJHT" node="3K5ngtdDKiS" resolve="_iobuf" />
          </node>
        </node>
        <node concept="2dvt44" id="3K5ngtdDKlk" role="lGtFl">
          <node concept="3o9_tv" id="3K5ngtdDKlj" role="2dvt70">
            <node concept="2qVrgw" id="3K5ngtdDKlm" role="3o9_ts">
              <ref role="2qVrgz" node="3K5ngtdDKiD" resolve="FILE" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="rcJHK" id="3K5ngtdDKln" role="N3F5h">
      <property role="TrG5h" value="FILE" />
      <node concept="rcJHQ" id="3K5ngtdDKlo" role="rcJHR">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
        <ref role="rcJHT" node="3K5ngtdDKiS" resolve="_iobuf" />
      </node>
      <node concept="2dvt44" id="3K5ngtdDKlq" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKlp" role="2dvt70">
          <node concept="2qVrgw" id="3K5ngtdDKls" role="3o9_ts">
            <ref role="2qVrgz" node="3K5ngtdDKiD" resolve="FILE" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2DPCBB" id="3K5ngtdDKlt" role="N3F5h">
      <property role="TrG5h" value="EOF" />
      <node concept="PhEJO" id="3K5ngtdDKlu" role="2DQcEM">
        <property role="PhEJT" value="(-1)" />
      </node>
    </node>
    <node concept="4WHVk" id="3K5ngtdDKlv" role="N3F5h">
      <property role="TrG5h" value="_IOFBF" />
      <node concept="3TlMh9" id="3K5ngtdDKlw" role="2DQcEM">
        <property role="2hmy$m" value="0" />
      </node>
    </node>
    <node concept="4WHVk" id="3K5ngtdDKlx" role="N3F5h">
      <property role="TrG5h" value="_IOREAD" />
      <node concept="3TlMh9" id="3K5ngtdDKly" role="2DQcEM">
        <property role="2hmy$m" value="1" />
      </node>
    </node>
    <node concept="4WHVk" id="3K5ngtdDKlz" role="N3F5h">
      <property role="TrG5h" value="_IOWRT" />
      <node concept="3TlMh9" id="3K5ngtdDKl$" role="2DQcEM">
        <property role="2hmy$m" value="2" />
      </node>
    </node>
    <node concept="4WHVk" id="3K5ngtdDKl_" role="N3F5h">
      <property role="TrG5h" value="_IONBF" />
      <node concept="3TlMh9" id="3K5ngtdDKlA" role="2DQcEM">
        <property role="2hmy$m" value="4" />
      </node>
    </node>
    <node concept="4WHVk" id="3K5ngtdDKlB" role="N3F5h">
      <property role="TrG5h" value="_IOMYBUF" />
      <node concept="3TlMh9" id="3K5ngtdDKlC" role="2DQcEM">
        <property role="2hmy$m" value="10" />
      </node>
    </node>
    <node concept="4WHVk" id="3K5ngtdDKlD" role="N3F5h">
      <property role="TrG5h" value="_IOEOF" />
      <node concept="3TlMh9" id="3K5ngtdDKlE" role="2DQcEM">
        <property role="2hmy$m" value="20" />
      </node>
    </node>
    <node concept="4WHVk" id="3K5ngtdDKlF" role="N3F5h">
      <property role="TrG5h" value="_IOERR" />
      <node concept="3TlMh9" id="3K5ngtdDKlG" role="2DQcEM">
        <property role="2hmy$m" value="40" />
      </node>
    </node>
    <node concept="4WHVk" id="3K5ngtdDKlH" role="N3F5h">
      <property role="TrG5h" value="_IOSTRG" />
      <node concept="3TlMh9" id="3K5ngtdDKlI" role="2DQcEM">
        <property role="2hmy$m" value="100" />
      </node>
    </node>
    <node concept="4WHVk" id="3K5ngtdDKlJ" role="N3F5h">
      <property role="TrG5h" value="_IOLBF" />
      <node concept="3TlMh9" id="3K5ngtdDKlK" role="2DQcEM">
        <property role="2hmy$m" value="200" />
      </node>
    </node>
    <node concept="4WHVk" id="3K5ngtdDKlL" role="N3F5h">
      <property role="TrG5h" value="_IORW" />
      <node concept="3TlMh9" id="3K5ngtdDKlM" role="2DQcEM">
        <property role="2hmy$m" value="400" />
      </node>
    </node>
    <node concept="4WHVk" id="3K5ngtdDKlN" role="N3F5h">
      <property role="TrG5h" value="_IOFPTR" />
      <node concept="3TlMh9" id="3K5ngtdDKlO" role="2DQcEM">
        <property role="2hmy$m" value="2000" />
      </node>
    </node>
    <node concept="2DPCBB" id="3K5ngtdDKlP" role="N3F5h">
      <property role="TrG5h" value="_IOSTFN" />
      <node concept="PhEJO" id="3K5ngtdDKlQ" role="2DQcEM">
        <property role="PhEJT" value="(don't free) */" />
      </node>
    </node>
    <node concept="4WHVk" id="3K5ngtdDKlR" role="N3F5h">
      <property role="TrG5h" value="NULL" />
      <node concept="3TlMh9" id="3K5ngtdDKlS" role="2DQcEM">
        <property role="2hmy$m" value="0" />
      </node>
      <node concept="2dvt44" id="3K5ngtdDKlU" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKlT" role="2dvt70">
          <node concept="2qVrgw" id="3K5ngtdDKlW" role="3o9_ts">
            <ref role="2qVrgz" node="3K5ngtdDKiF" resolve="NULL" />
          </node>
        </node>
      </node>
    </node>
    <node concept="4WHVk" id="3K5ngtdDKlX" role="N3F5h">
      <property role="TrG5h" value="SEEK_SET" />
      <node concept="3TlMh9" id="3K5ngtdDKlY" role="2DQcEM">
        <property role="2hmy$m" value="0" />
      </node>
    </node>
    <node concept="4WHVk" id="3K5ngtdDKlZ" role="N3F5h">
      <property role="TrG5h" value="SEEK_CUR" />
      <node concept="3TlMh9" id="3K5ngtdDKm0" role="2DQcEM">
        <property role="2hmy$m" value="1" />
      </node>
    </node>
    <node concept="4WHVk" id="3K5ngtdDKm1" role="N3F5h">
      <property role="TrG5h" value="SEEK_END" />
      <node concept="3TlMh9" id="3K5ngtdDKm2" role="2DQcEM">
        <property role="2hmy$m" value="2" />
      </node>
    </node>
    <node concept="4WHVk" id="3K5ngtdDKm3" role="N3F5h">
      <property role="TrG5h" value="_NFILE" />
      <node concept="3TlMh9" id="3K5ngtdDKm4" role="2DQcEM">
        <property role="2hmy$m" value="3" />
      </node>
    </node>
    <node concept="1S7NMz" id="3K5ngtdDKm5" role="N3F5h">
      <property role="TrG5h" value="_iob" />
      <node concept="rcJHQ" id="3K5ngtdDKm6" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
        <ref role="rcJHT" node="3K5ngtdDKln" resolve="FILE" />
      </node>
    </node>
    <node concept="2DPCBB" id="3K5ngtdDKm7" role="N3F5h">
      <property role="TrG5h" value="stdin" />
      <node concept="PhEJO" id="3K5ngtdDKm8" role="2DQcEM">
        <property role="PhEJT" value="(&amp;_iob[0])" />
      </node>
    </node>
    <node concept="2DPCBB" id="3K5ngtdDKm9" role="N3F5h">
      <property role="TrG5h" value="stdout" />
      <node concept="PhEJO" id="3K5ngtdDKma" role="2DQcEM">
        <property role="PhEJT" value="(&amp;_iob[1])" />
      </node>
    </node>
    <node concept="2DPCBB" id="3K5ngtdDKmb" role="N3F5h">
      <property role="TrG5h" value="stderr" />
      <node concept="PhEJO" id="3K5ngtdDKmc" role="2DQcEM">
        <property role="PhEJT" value="(&amp;_iob[2])" />
      </node>
    </node>
    <node concept="BTY7A" id="3K5ngtdDKmd" role="N3F5h">
      <property role="TrG5h" value="getc" />
      <node concept="BUhyo" id="3K5ngtdDKme" role="BTY7U">
        <property role="TrG5h" value="fp" />
        <node concept="26Vqpk" id="3K5ngtdDKmf" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
    </node>
    <node concept="BTY7A" id="3K5ngtdDKmg" role="N3F5h">
      <property role="TrG5h" value="putc" />
      <node concept="BUhyo" id="3K5ngtdDKmh" role="BTY7U">
        <property role="TrG5h" value="c" />
        <node concept="26Vqpk" id="3K5ngtdDKmi" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="BUhyo" id="3K5ngtdDKmj" role="BTY7U">
        <property role="TrG5h" value="fp" />
        <node concept="26Vqpk" id="3K5ngtdDKmk" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKmm" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKml" role="2dvt70">
          <node concept="2qVrgw" id="3K5ngtdDKmo" role="3o9_ts">
            <ref role="2qVrgz" node="3K5ngtdDKiG" resolve="PUTCLBUF" />
          </node>
        </node>
      </node>
    </node>
    <node concept="BTY7A" id="3K5ngtdDKmp" role="N3F5h">
      <property role="TrG5h" value="putc" />
      <node concept="BUhyo" id="3K5ngtdDKmq" role="BTY7U">
        <property role="TrG5h" value="c" />
        <node concept="26Vqpk" id="3K5ngtdDKmr" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="BUhyo" id="3K5ngtdDKms" role="BTY7U">
        <property role="TrG5h" value="fp" />
        <node concept="26Vqpk" id="3K5ngtdDKmt" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKmv" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKmu" role="2dvt70">
          <node concept="19$8ne" id="3K5ngtdDKmy" role="3o9_ts">
            <node concept="2qVrgw" id="3K5ngtdDKmx" role="1_9fRO">
              <ref role="2qVrgz" node="3K5ngtdDKiG" resolve="PUTCLBUF" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="2DPCBB" id="3K5ngtdDKmz" role="N3F5h">
      <property role="TrG5h" value="getchar" />
      <node concept="PhEJO" id="3K5ngtdDKm$" role="2DQcEM">
        <property role="PhEJT" value="getc(stdin)" />
      </node>
    </node>
    <node concept="BTY7A" id="3K5ngtdDKm_" role="N3F5h">
      <property role="TrG5h" value="putchar" />
      <node concept="BUhyo" id="3K5ngtdDKmA" role="BTY7U">
        <property role="TrG5h" value="c" />
        <node concept="26Vqpk" id="3K5ngtdDKmB" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
    </node>
    <node concept="BTY7A" id="3K5ngtdDKmC" role="N3F5h">
      <property role="TrG5h" value="clearerr" />
      <node concept="BUhyo" id="3K5ngtdDKmD" role="BTY7U">
        <property role="TrG5h" value="fp" />
        <node concept="26Vqpk" id="3K5ngtdDKmE" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
    </node>
    <node concept="BTY7A" id="3K5ngtdDKmF" role="N3F5h">
      <property role="TrG5h" value="feof" />
      <node concept="BUhyo" id="3K5ngtdDKmG" role="BTY7U">
        <property role="TrG5h" value="fp" />
        <node concept="26Vqpk" id="3K5ngtdDKmH" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
    </node>
    <node concept="BTY7A" id="3K5ngtdDKmI" role="N3F5h">
      <property role="TrG5h" value="ferror" />
      <node concept="BUhyo" id="3K5ngtdDKmJ" role="BTY7U">
        <property role="TrG5h" value="fp" />
        <node concept="26Vqpk" id="3K5ngtdDKmK" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
    </node>
    <node concept="BTY7A" id="3K5ngtdDKmL" role="N3F5h">
      <property role="TrG5h" value="fileno" />
      <node concept="BUhyo" id="3K5ngtdDKmM" role="BTY7U">
        <property role="TrG5h" value="fp" />
        <node concept="26Vqpk" id="3K5ngtdDKmN" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
    </node>
    <node concept="BTY7A" id="3K5ngtdDKmO" role="N3F5h">
      <property role="TrG5h" value="_fileptr" />
      <node concept="BUhyo" id="3K5ngtdDKmP" role="BTY7U">
        <property role="TrG5h" value="fp" />
        <node concept="26Vqpk" id="3K5ngtdDKmQ" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKmR" role="N3F5h">
      <property role="TrG5h" value="fdopen" />
      <node concept="3wxxNl" id="3K5ngtdDKmT" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
        <node concept="rcJHQ" id="3K5ngtdDKmS" role="2umbIo">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <ref role="rcJHT" node="3K5ngtdDKln" resolve="FILE" />
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKmV" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKmU" role="2dvt70">
          <node concept="2qVrgw" id="3K5ngtdDKmX" role="3o9_ts">
            <ref role="2qVrgz" node="3K5ngtdDKiH" resolve="__STDC__" />
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKmY" role="N3F5h">
      <property role="TrG5h" value="fgets" />
      <node concept="3wxxNl" id="3K5ngtdDKn1" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
        <node concept="biTqx" id="3K5ngtdDKn0" role="2umbIo">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKn3" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKn2" role="2dvt70">
          <node concept="2qVrgw" id="3K5ngtdDKn5" role="3o9_ts">
            <ref role="2qVrgz" node="3K5ngtdDKiH" resolve="__STDC__" />
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKn6" role="N3F5h">
      <property role="TrG5h" value="fopen" />
      <node concept="3wxxNl" id="3K5ngtdDKn8" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
        <node concept="rcJHQ" id="3K5ngtdDKn7" role="2umbIo">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <ref role="rcJHT" node="3K5ngtdDKln" resolve="FILE" />
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKna" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKn9" role="2dvt70">
          <node concept="2qVrgw" id="3K5ngtdDKnc" role="3o9_ts">
            <ref role="2qVrgz" node="3K5ngtdDKiH" resolve="__STDC__" />
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKnd" role="N3F5h">
      <property role="TrG5h" value="freopen" />
      <node concept="3wxxNl" id="3K5ngtdDKnf" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
        <node concept="rcJHQ" id="3K5ngtdDKne" role="2umbIo">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <ref role="rcJHT" node="3K5ngtdDKln" resolve="FILE" />
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKnh" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKng" role="2dvt70">
          <node concept="2qVrgw" id="3K5ngtdDKnj" role="3o9_ts">
            <ref role="2qVrgz" node="3K5ngtdDKiH" resolve="__STDC__" />
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKnk" role="N3F5h">
      <property role="TrG5h" value="ftell" />
      <node concept="1X9cn3" id="3K5ngtdDKnm" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="2dvt44" id="3K5ngtdDKno" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKnn" role="2dvt70">
          <node concept="2qVrgw" id="3K5ngtdDKnq" role="3o9_ts">
            <ref role="2qVrgz" node="3K5ngtdDKiH" resolve="__STDC__" />
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKnr" role="N3F5h">
      <property role="TrG5h" value="gets" />
      <node concept="3wxxNl" id="3K5ngtdDKnu" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
        <node concept="biTqx" id="3K5ngtdDKnt" role="2umbIo">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKnw" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKnv" role="2dvt70">
          <node concept="2qVrgw" id="3K5ngtdDKny" role="3o9_ts">
            <ref role="2qVrgz" node="3K5ngtdDKiH" resolve="__STDC__" />
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKnz" role="N3F5h">
      <property role="TrG5h" value="saprintf" />
      <node concept="3wxxNl" id="3K5ngtdDKnA" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
        <node concept="biTqx" id="3K5ngtdDKn_" role="2umbIo">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKnC" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKnB" role="2dvt70">
          <node concept="2qVrgw" id="3K5ngtdDKnE" role="3o9_ts">
            <ref role="2qVrgz" node="3K5ngtdDKiI" resolve="EXTENSIONS" />
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKnF" role="N3F5h">
      <property role="TrG5h" value="stropen" />
      <node concept="3wxxNl" id="3K5ngtdDKnH" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
        <node concept="rcJHQ" id="3K5ngtdDKnG" role="2umbIo">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <ref role="rcJHT" node="3K5ngtdDKln" resolve="FILE" />
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKnJ" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKnI" role="2dvt70">
          <node concept="2qVrgw" id="3K5ngtdDKnL" role="3o9_ts">
            <ref role="2qVrgz" node="3K5ngtdDKiI" resolve="EXTENSIONS" />
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKnM" role="N3F5h">
      <property role="TrG5h" value="strnopen" />
      <node concept="3wxxNl" id="3K5ngtdDKnO" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
        <node concept="rcJHQ" id="3K5ngtdDKnN" role="2umbIo">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <ref role="rcJHT" node="3K5ngtdDKln" resolve="FILE" />
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKnQ" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKnP" role="2dvt70">
          <node concept="2qVrgw" id="3K5ngtdDKnS" role="3o9_ts">
            <ref role="2qVrgz" node="3K5ngtdDKiI" resolve="EXTENSIONS" />
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKnT" role="N3F5h">
      <property role="TrG5h" value="vsaprintf" />
      <node concept="3wxxNl" id="3K5ngtdDKnW" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
        <node concept="biTqx" id="3K5ngtdDKnV" role="2umbIo">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKnY" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKnX" role="2dvt70">
          <node concept="2qVrgw" id="3K5ngtdDKo0" role="3o9_ts">
            <ref role="2qVrgz" node="3K5ngtdDKiI" resolve="EXTENSIONS" />
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKo1" role="N3F5h">
      <property role="TrG5h" value="fclose" />
      <node concept="3TlMh2" id="3K5ngtdDKo3" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="19RgSI" id="3K5ngtdDKo4" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="3wxxNl" id="3K5ngtdDKo6" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="rcJHQ" id="3K5ngtdDKo5" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
            <ref role="rcJHT" node="3K5ngtdDKln" resolve="FILE" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKo8" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKo7" role="2dvt70">
          <node concept="19$8ne" id="3K5ngtdDKob" role="3o9_ts">
            <node concept="2qVrgw" id="3K5ngtdDKoa" role="1_9fRO">
              <ref role="2qVrgz" node="3K5ngtdDKiH" resolve="__STDC__" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKoc" role="N3F5h">
      <property role="TrG5h" value="fdopen" />
      <node concept="3wxxNl" id="3K5ngtdDKoe" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
        <node concept="rcJHQ" id="3K5ngtdDKod" role="2umbIo">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <ref role="rcJHT" node="3K5ngtdDKln" resolve="FILE" />
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKof" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="3wxxNl" id="3K5ngtdDKoi" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKoh" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKoj" role="1UOdpc">
        <property role="TrG5h" value="p1" />
        <node concept="3TlMh2" id="3K5ngtdDKol" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKon" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKom" role="2dvt70">
          <node concept="19$8ne" id="3K5ngtdDKoq" role="3o9_ts">
            <node concept="2qVrgw" id="3K5ngtdDKop" role="1_9fRO">
              <ref role="2qVrgz" node="3K5ngtdDKiH" resolve="__STDC__" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKor" role="N3F5h">
      <property role="TrG5h" value="fflush" />
      <node concept="3TlMh2" id="3K5ngtdDKot" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="19RgSI" id="3K5ngtdDKou" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="3wxxNl" id="3K5ngtdDKow" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="rcJHQ" id="3K5ngtdDKov" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
            <ref role="rcJHT" node="3K5ngtdDKln" resolve="FILE" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKoy" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKox" role="2dvt70">
          <node concept="19$8ne" id="3K5ngtdDKo_" role="3o9_ts">
            <node concept="2qVrgw" id="3K5ngtdDKo$" role="1_9fRO">
              <ref role="2qVrgz" node="3K5ngtdDKiH" resolve="__STDC__" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKoA" role="N3F5h">
      <property role="TrG5h" value="fgetc" />
      <node concept="3TlMh2" id="3K5ngtdDKoC" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="19RgSI" id="3K5ngtdDKoD" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="3wxxNl" id="3K5ngtdDKoF" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="rcJHQ" id="3K5ngtdDKoE" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
            <ref role="rcJHT" node="3K5ngtdDKln" resolve="FILE" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKoH" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKoG" role="2dvt70">
          <node concept="19$8ne" id="3K5ngtdDKoK" role="3o9_ts">
            <node concept="2qVrgw" id="3K5ngtdDKoJ" role="1_9fRO">
              <ref role="2qVrgz" node="3K5ngtdDKiH" resolve="__STDC__" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKoL" role="N3F5h">
      <property role="TrG5h" value="fgets" />
      <node concept="3wxxNl" id="3K5ngtdDKoO" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
        <node concept="biTqx" id="3K5ngtdDKoN" role="2umbIo">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKoP" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="3wxxNl" id="3K5ngtdDKoR" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="rcJHQ" id="3K5ngtdDKoQ" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
            <ref role="rcJHT" node="3K5ngtdDKln" resolve="FILE" />
          </node>
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKoS" role="1UOdpc">
        <property role="TrG5h" value="p1" />
        <node concept="3TlMh2" id="3K5ngtdDKoU" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKoV" role="1UOdpc">
        <property role="TrG5h" value="p2" />
        <node concept="3wxxNl" id="3K5ngtdDKoY" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKoX" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKp0" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKoZ" role="2dvt70">
          <node concept="19$8ne" id="3K5ngtdDKp3" role="3o9_ts">
            <node concept="2qVrgw" id="3K5ngtdDKp2" role="1_9fRO">
              <ref role="2qVrgz" node="3K5ngtdDKiH" resolve="__STDC__" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKp4" role="N3F5h">
      <property role="TrG5h" value="fopen" />
      <node concept="3wxxNl" id="3K5ngtdDKp6" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
        <node concept="rcJHQ" id="3K5ngtdDKp5" role="2umbIo">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <ref role="rcJHT" node="3K5ngtdDKln" resolve="FILE" />
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKp7" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="3wxxNl" id="3K5ngtdDKpa" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKp9" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKpb" role="1UOdpc">
        <property role="TrG5h" value="p1" />
        <node concept="3wxxNl" id="3K5ngtdDKpe" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKpd" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKpg" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKpf" role="2dvt70">
          <node concept="19$8ne" id="3K5ngtdDKpj" role="3o9_ts">
            <node concept="2qVrgw" id="3K5ngtdDKpi" role="1_9fRO">
              <ref role="2qVrgz" node="3K5ngtdDKiH" resolve="__STDC__" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKpk" role="N3F5h">
      <property role="TrG5h" value="fprintf" />
      <node concept="3TlMh2" id="3K5ngtdDKpm" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="19RgSI" id="3K5ngtdDKpn" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="3wxxNl" id="3K5ngtdDKpq" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKpp" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKpr" role="1UOdpc">
        <property role="TrG5h" value="p1" />
        <node concept="3wxxNl" id="3K5ngtdDKpt" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="rcJHQ" id="3K5ngtdDKps" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
            <ref role="rcJHT" node="3K5ngtdDKln" resolve="FILE" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKpv" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKpu" role="2dvt70">
          <node concept="19$8ne" id="3K5ngtdDKpy" role="3o9_ts">
            <node concept="2qVrgw" id="3K5ngtdDKpx" role="1_9fRO">
              <ref role="2qVrgz" node="3K5ngtdDKiH" resolve="__STDC__" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKpz" role="N3F5h">
      <property role="TrG5h" value="fputc" />
      <node concept="3TlMh2" id="3K5ngtdDKp_" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="19RgSI" id="3K5ngtdDKpA" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="3wxxNl" id="3K5ngtdDKpC" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="rcJHQ" id="3K5ngtdDKpB" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
            <ref role="rcJHT" node="3K5ngtdDKln" resolve="FILE" />
          </node>
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKpD" role="1UOdpc">
        <property role="TrG5h" value="p1" />
        <node concept="biTqx" id="3K5ngtdDKpF" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKpH" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKpG" role="2dvt70">
          <node concept="19$8ne" id="3K5ngtdDKpK" role="3o9_ts">
            <node concept="2qVrgw" id="3K5ngtdDKpJ" role="1_9fRO">
              <ref role="2qVrgz" node="3K5ngtdDKiH" resolve="__STDC__" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKpL" role="N3F5h">
      <property role="TrG5h" value="fputs" />
      <node concept="3TlMh2" id="3K5ngtdDKpN" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="19RgSI" id="3K5ngtdDKpO" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="3wxxNl" id="3K5ngtdDKpQ" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="rcJHQ" id="3K5ngtdDKpP" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
            <ref role="rcJHT" node="3K5ngtdDKln" resolve="FILE" />
          </node>
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKpR" role="1UOdpc">
        <property role="TrG5h" value="p1" />
        <node concept="3wxxNl" id="3K5ngtdDKpU" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKpT" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKpW" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKpV" role="2dvt70">
          <node concept="19$8ne" id="3K5ngtdDKpZ" role="3o9_ts">
            <node concept="2qVrgw" id="3K5ngtdDKpY" role="1_9fRO">
              <ref role="2qVrgz" node="3K5ngtdDKiH" resolve="__STDC__" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKq0" role="N3F5h">
      <property role="TrG5h" value="fread" />
      <node concept="3TlMh2" id="3K5ngtdDKq2" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="19RgSI" id="3K5ngtdDKq3" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="3wxxNl" id="3K5ngtdDKq5" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="rcJHQ" id="3K5ngtdDKq4" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
            <ref role="rcJHT" node="3K5ngtdDKln" resolve="FILE" />
          </node>
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKq6" role="1UOdpc">
        <property role="TrG5h" value="p1" />
        <node concept="3TlMh2" id="3K5ngtdDKq8" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKq9" role="1UOdpc">
        <property role="TrG5h" value="p2" />
        <node concept="26VXez" id="3K5ngtdDKqb" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKqc" role="1UOdpc">
        <property role="TrG5h" value="p3" />
        <node concept="3wxxNl" id="3K5ngtdDKqf" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKqe" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKqh" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKqg" role="2dvt70">
          <node concept="19$8ne" id="3K5ngtdDKqk" role="3o9_ts">
            <node concept="2qVrgw" id="3K5ngtdDKqj" role="1_9fRO">
              <ref role="2qVrgz" node="3K5ngtdDKiH" resolve="__STDC__" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKql" role="N3F5h">
      <property role="TrG5h" value="freopen" />
      <node concept="3wxxNl" id="3K5ngtdDKqn" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
        <node concept="rcJHQ" id="3K5ngtdDKqm" role="2umbIo">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <ref role="rcJHT" node="3K5ngtdDKln" resolve="FILE" />
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKqo" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="3wxxNl" id="3K5ngtdDKqq" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="rcJHQ" id="3K5ngtdDKqp" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
            <ref role="rcJHT" node="3K5ngtdDKln" resolve="FILE" />
          </node>
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKqr" role="1UOdpc">
        <property role="TrG5h" value="p1" />
        <node concept="3wxxNl" id="3K5ngtdDKqu" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKqt" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKqv" role="1UOdpc">
        <property role="TrG5h" value="p2" />
        <node concept="3wxxNl" id="3K5ngtdDKqy" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKqx" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKq$" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKqz" role="2dvt70">
          <node concept="19$8ne" id="3K5ngtdDKqB" role="3o9_ts">
            <node concept="2qVrgw" id="3K5ngtdDKqA" role="1_9fRO">
              <ref role="2qVrgz" node="3K5ngtdDKiH" resolve="__STDC__" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKqC" role="N3F5h">
      <property role="TrG5h" value="fscanf" />
      <node concept="3TlMh2" id="3K5ngtdDKqE" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="19RgSI" id="3K5ngtdDKqF" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="3wxxNl" id="3K5ngtdDKqI" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKqH" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKqJ" role="1UOdpc">
        <property role="TrG5h" value="p1" />
        <node concept="3wxxNl" id="3K5ngtdDKqL" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="rcJHQ" id="3K5ngtdDKqK" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
            <ref role="rcJHT" node="3K5ngtdDKln" resolve="FILE" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKqN" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKqM" role="2dvt70">
          <node concept="19$8ne" id="3K5ngtdDKqQ" role="3o9_ts">
            <node concept="2qVrgw" id="3K5ngtdDKqP" role="1_9fRO">
              <ref role="2qVrgz" node="3K5ngtdDKiH" resolve="__STDC__" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKqR" role="N3F5h">
      <property role="TrG5h" value="fseek" />
      <node concept="3TlMh2" id="3K5ngtdDKqT" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="19RgSI" id="3K5ngtdDKqU" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="3TlMh2" id="3K5ngtdDKqW" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKqX" role="1UOdpc">
        <property role="TrG5h" value="p1" />
        <node concept="1X9cn3" id="3K5ngtdDKqZ" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKr0" role="1UOdpc">
        <property role="TrG5h" value="p2" />
        <node concept="3wxxNl" id="3K5ngtdDKr2" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="rcJHQ" id="3K5ngtdDKr1" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
            <ref role="rcJHT" node="3K5ngtdDKln" resolve="FILE" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKr4" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKr3" role="2dvt70">
          <node concept="19$8ne" id="3K5ngtdDKr7" role="3o9_ts">
            <node concept="2qVrgw" id="3K5ngtdDKr6" role="1_9fRO">
              <ref role="2qVrgz" node="3K5ngtdDKiH" resolve="__STDC__" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKr8" role="N3F5h">
      <property role="TrG5h" value="ftell" />
      <node concept="1X9cn3" id="3K5ngtdDKra" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="19RgSI" id="3K5ngtdDKrb" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="3wxxNl" id="3K5ngtdDKrd" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="rcJHQ" id="3K5ngtdDKrc" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
            <ref role="rcJHT" node="3K5ngtdDKln" resolve="FILE" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKrf" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKre" role="2dvt70">
          <node concept="19$8ne" id="3K5ngtdDKri" role="3o9_ts">
            <node concept="2qVrgw" id="3K5ngtdDKrh" role="1_9fRO">
              <ref role="2qVrgz" node="3K5ngtdDKiH" resolve="__STDC__" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKrj" role="N3F5h">
      <property role="TrG5h" value="fwrite" />
      <node concept="3TlMh2" id="3K5ngtdDKrl" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="19RgSI" id="3K5ngtdDKrm" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="3wxxNl" id="3K5ngtdDKro" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="rcJHQ" id="3K5ngtdDKrn" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
            <ref role="rcJHT" node="3K5ngtdDKln" resolve="FILE" />
          </node>
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKrp" role="1UOdpc">
        <property role="TrG5h" value="p1" />
        <node concept="3TlMh2" id="3K5ngtdDKrr" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKrs" role="1UOdpc">
        <property role="TrG5h" value="p2" />
        <node concept="26VXez" id="3K5ngtdDKru" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKrv" role="1UOdpc">
        <property role="TrG5h" value="p3" />
        <node concept="3wxxNl" id="3K5ngtdDKry" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKrx" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKr$" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKrz" role="2dvt70">
          <node concept="19$8ne" id="3K5ngtdDKrB" role="3o9_ts">
            <node concept="2qVrgw" id="3K5ngtdDKrA" role="1_9fRO">
              <ref role="2qVrgz" node="3K5ngtdDKiH" resolve="__STDC__" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKrC" role="N3F5h">
      <property role="TrG5h" value="gets" />
      <node concept="3wxxNl" id="3K5ngtdDKrF" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
        <node concept="biTqx" id="3K5ngtdDKrE" role="2umbIo">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKrG" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="3wxxNl" id="3K5ngtdDKrJ" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKrI" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKrL" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKrK" role="2dvt70">
          <node concept="19$8ne" id="3K5ngtdDKrO" role="3o9_ts">
            <node concept="2qVrgw" id="3K5ngtdDKrN" role="1_9fRO">
              <ref role="2qVrgz" node="3K5ngtdDKiH" resolve="__STDC__" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKrP" role="N3F5h">
      <property role="TrG5h" value="printf" />
      <node concept="3TlMh2" id="3K5ngtdDKrR" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="19RgSI" id="3K5ngtdDKrS" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="3wxxNl" id="3K5ngtdDKrV" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKrU" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKrX" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKrW" role="2dvt70">
          <node concept="19$8ne" id="3K5ngtdDKs0" role="3o9_ts">
            <node concept="2qVrgw" id="3K5ngtdDKrZ" role="1_9fRO">
              <ref role="2qVrgz" node="3K5ngtdDKiH" resolve="__STDC__" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKs1" role="N3F5h">
      <property role="TrG5h" value="puts" />
      <node concept="3TlMh2" id="3K5ngtdDKs3" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="19RgSI" id="3K5ngtdDKs4" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="3wxxNl" id="3K5ngtdDKs7" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKs6" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKs9" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKs8" role="2dvt70">
          <node concept="19$8ne" id="3K5ngtdDKsc" role="3o9_ts">
            <node concept="2qVrgw" id="3K5ngtdDKsb" role="1_9fRO">
              <ref role="2qVrgz" node="3K5ngtdDKiH" resolve="__STDC__" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKsd" role="N3F5h">
      <property role="TrG5h" value="rewind" />
      <node concept="19Rifw" id="3K5ngtdDKsf" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="19RgSI" id="3K5ngtdDKsg" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="3wxxNl" id="3K5ngtdDKsi" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="rcJHQ" id="3K5ngtdDKsh" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
            <ref role="rcJHT" node="3K5ngtdDKln" resolve="FILE" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKsk" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKsj" role="2dvt70">
          <node concept="19$8ne" id="3K5ngtdDKsn" role="3o9_ts">
            <node concept="2qVrgw" id="3K5ngtdDKsm" role="1_9fRO">
              <ref role="2qVrgz" node="3K5ngtdDKiH" resolve="__STDC__" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKso" role="N3F5h">
      <property role="TrG5h" value="scanf" />
      <node concept="3TlMh2" id="3K5ngtdDKsq" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="19RgSI" id="3K5ngtdDKsr" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="3wxxNl" id="3K5ngtdDKsu" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKst" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKsw" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKsv" role="2dvt70">
          <node concept="19$8ne" id="3K5ngtdDKsz" role="3o9_ts">
            <node concept="2qVrgw" id="3K5ngtdDKsy" role="1_9fRO">
              <ref role="2qVrgz" node="3K5ngtdDKiH" resolve="__STDC__" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKs$" role="N3F5h">
      <property role="TrG5h" value="setbuf" />
      <node concept="3TlMh2" id="3K5ngtdDKsA" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="19RgSI" id="3K5ngtdDKsB" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="3wxxNl" id="3K5ngtdDKsE" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKsD" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKsF" role="1UOdpc">
        <property role="TrG5h" value="p1" />
        <node concept="3wxxNl" id="3K5ngtdDKsH" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="rcJHQ" id="3K5ngtdDKsG" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
            <ref role="rcJHT" node="3K5ngtdDKln" resolve="FILE" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKsJ" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKsI" role="2dvt70">
          <node concept="19$8ne" id="3K5ngtdDKsM" role="3o9_ts">
            <node concept="2qVrgw" id="3K5ngtdDKsL" role="1_9fRO">
              <ref role="2qVrgz" node="3K5ngtdDKiH" resolve="__STDC__" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKsN" role="N3F5h">
      <property role="TrG5h" value="setbuffer" />
      <node concept="3TlMh2" id="3K5ngtdDKsP" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="19RgSI" id="3K5ngtdDKsQ" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="3TlMh2" id="3K5ngtdDKsS" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKsT" role="1UOdpc">
        <property role="TrG5h" value="p1" />
        <node concept="3wxxNl" id="3K5ngtdDKsW" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKsV" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKsX" role="1UOdpc">
        <property role="TrG5h" value="p2" />
        <node concept="3wxxNl" id="3K5ngtdDKsZ" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="rcJHQ" id="3K5ngtdDKsY" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
            <ref role="rcJHT" node="3K5ngtdDKln" resolve="FILE" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKt1" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKt0" role="2dvt70">
          <node concept="19$8ne" id="3K5ngtdDKt4" role="3o9_ts">
            <node concept="2qVrgw" id="3K5ngtdDKt3" role="1_9fRO">
              <ref role="2qVrgz" node="3K5ngtdDKiH" resolve="__STDC__" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKt5" role="N3F5h">
      <property role="TrG5h" value="setlinebuf" />
      <node concept="3TlMh2" id="3K5ngtdDKt7" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="19RgSI" id="3K5ngtdDKt8" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="3wxxNl" id="3K5ngtdDKta" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="rcJHQ" id="3K5ngtdDKt9" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
            <ref role="rcJHT" node="3K5ngtdDKln" resolve="FILE" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKtc" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKtb" role="2dvt70">
          <node concept="19$8ne" id="3K5ngtdDKtf" role="3o9_ts">
            <node concept="2qVrgw" id="3K5ngtdDKte" role="1_9fRO">
              <ref role="2qVrgz" node="3K5ngtdDKiH" resolve="__STDC__" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKtg" role="N3F5h">
      <property role="TrG5h" value="setvbuf" />
      <node concept="3TlMh2" id="3K5ngtdDKti" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="19RgSI" id="3K5ngtdDKtj" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="3TlMh2" id="3K5ngtdDKtl" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKtm" role="1UOdpc">
        <property role="TrG5h" value="p1" />
        <node concept="3TlMh2" id="3K5ngtdDKto" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKtp" role="1UOdpc">
        <property role="TrG5h" value="p2" />
        <node concept="3wxxNl" id="3K5ngtdDKts" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKtr" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKtt" role="1UOdpc">
        <property role="TrG5h" value="p3" />
        <node concept="3wxxNl" id="3K5ngtdDKtv" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="rcJHQ" id="3K5ngtdDKtu" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
            <ref role="rcJHT" node="3K5ngtdDKln" resolve="FILE" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKtx" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKtw" role="2dvt70">
          <node concept="19$8ne" id="3K5ngtdDKt$" role="3o9_ts">
            <node concept="2qVrgw" id="3K5ngtdDKtz" role="1_9fRO">
              <ref role="2qVrgz" node="3K5ngtdDKiH" resolve="__STDC__" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKt_" role="N3F5h">
      <property role="TrG5h" value="sprintf" />
      <node concept="3TlMh2" id="3K5ngtdDKtB" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="19RgSI" id="3K5ngtdDKtC" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="3wxxNl" id="3K5ngtdDKtF" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKtE" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKtG" role="1UOdpc">
        <property role="TrG5h" value="p1" />
        <node concept="3wxxNl" id="3K5ngtdDKtJ" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKtI" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKtL" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKtK" role="2dvt70">
          <node concept="19$8ne" id="3K5ngtdDKtO" role="3o9_ts">
            <node concept="2qVrgw" id="3K5ngtdDKtN" role="1_9fRO">
              <ref role="2qVrgz" node="3K5ngtdDKiH" resolve="__STDC__" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKtP" role="N3F5h">
      <property role="TrG5h" value="sscanf" />
      <node concept="3TlMh2" id="3K5ngtdDKtR" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="19RgSI" id="3K5ngtdDKtS" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="3wxxNl" id="3K5ngtdDKtV" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKtU" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKtW" role="1UOdpc">
        <property role="TrG5h" value="p1" />
        <node concept="3wxxNl" id="3K5ngtdDKtZ" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKtY" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKu1" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKu0" role="2dvt70">
          <node concept="19$8ne" id="3K5ngtdDKu4" role="3o9_ts">
            <node concept="2qVrgw" id="3K5ngtdDKu3" role="1_9fRO">
              <ref role="2qVrgz" node="3K5ngtdDKiH" resolve="__STDC__" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKu5" role="N3F5h">
      <property role="TrG5h" value="ungetc" />
      <node concept="3TlMh2" id="3K5ngtdDKu7" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="19RgSI" id="3K5ngtdDKu8" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="3wxxNl" id="3K5ngtdDKua" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="rcJHQ" id="3K5ngtdDKu9" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
            <ref role="rcJHT" node="3K5ngtdDKln" resolve="FILE" />
          </node>
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKub" role="1UOdpc">
        <property role="TrG5h" value="p1" />
        <node concept="biTqx" id="3K5ngtdDKud" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKuf" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKue" role="2dvt70">
          <node concept="19$8ne" id="3K5ngtdDKui" role="3o9_ts">
            <node concept="2qVrgw" id="3K5ngtdDKuh" role="1_9fRO">
              <ref role="2qVrgz" node="3K5ngtdDKiH" resolve="__STDC__" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="rcJHK" id="3K5ngtdDKun" role="N3F5h">
      <property role="TrG5h" value="va_list" />
      <node concept="3wxxNl" id="3K5ngtdDKuo" role="rcJHR">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
        <node concept="19Rifw" id="3K5ngtdDKup" role="2umbIo">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKuj" role="N3F5h">
      <property role="TrG5h" value="vfprintf" />
      <node concept="3TlMh2" id="3K5ngtdDKul" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="19RgSI" id="3K5ngtdDKum" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="rcJHQ" id="3K5ngtdDKuq" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <ref role="rcJHT" node="3K5ngtdDKun" resolve="va_list" />
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKur" role="1UOdpc">
        <property role="TrG5h" value="p1" />
        <node concept="3wxxNl" id="3K5ngtdDKuu" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKut" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKuv" role="1UOdpc">
        <property role="TrG5h" value="p2" />
        <node concept="3wxxNl" id="3K5ngtdDKux" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="rcJHQ" id="3K5ngtdDKuw" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
            <ref role="rcJHT" node="3K5ngtdDKln" resolve="FILE" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKuz" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKuy" role="2dvt70">
          <node concept="19$8ne" id="3K5ngtdDKuA" role="3o9_ts">
            <node concept="2qVrgw" id="3K5ngtdDKu_" role="1_9fRO">
              <ref role="2qVrgz" node="3K5ngtdDKiH" resolve="__STDC__" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKuB" role="N3F5h">
      <property role="TrG5h" value="vprintf" />
      <node concept="3TlMh2" id="3K5ngtdDKuD" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="19RgSI" id="3K5ngtdDKuE" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="rcJHQ" id="3K5ngtdDKuF" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <ref role="rcJHT" node="3K5ngtdDKun" resolve="va_list" />
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKuG" role="1UOdpc">
        <property role="TrG5h" value="p1" />
        <node concept="3wxxNl" id="3K5ngtdDKuJ" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKuI" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKuL" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKuK" role="2dvt70">
          <node concept="19$8ne" id="3K5ngtdDKuO" role="3o9_ts">
            <node concept="2qVrgw" id="3K5ngtdDKuN" role="1_9fRO">
              <ref role="2qVrgz" node="3K5ngtdDKiH" resolve="__STDC__" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKuP" role="N3F5h">
      <property role="TrG5h" value="vsprintf" />
      <node concept="3TlMh2" id="3K5ngtdDKuR" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="19RgSI" id="3K5ngtdDKuS" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="rcJHQ" id="3K5ngtdDKuT" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <ref role="rcJHT" node="3K5ngtdDKun" resolve="va_list" />
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKuU" role="1UOdpc">
        <property role="TrG5h" value="p1" />
        <node concept="3wxxNl" id="3K5ngtdDKuX" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKuW" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKuY" role="1UOdpc">
        <property role="TrG5h" value="p2" />
        <node concept="3wxxNl" id="3K5ngtdDKv1" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKv0" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKv3" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKv2" role="2dvt70">
          <node concept="19$8ne" id="3K5ngtdDKv6" role="3o9_ts">
            <node concept="2qVrgw" id="3K5ngtdDKv5" role="1_9fRO">
              <ref role="2qVrgz" node="3K5ngtdDKiH" resolve="__STDC__" />
            </node>
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKv7" role="N3F5h">
      <property role="TrG5h" value="fabort" />
      <node concept="19Rifw" id="3K5ngtdDKv9" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="19RgSI" id="3K5ngtdDKva" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="3wxxNl" id="3K5ngtdDKvc" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="rcJHQ" id="3K5ngtdDKvb" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
            <ref role="rcJHT" node="3K5ngtdDKln" resolve="FILE" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKve" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKvd" role="2dvt70">
          <node concept="2qVrgw" id="3K5ngtdDKvg" role="3o9_ts">
            <ref role="2qVrgz" node="3K5ngtdDKiI" resolve="EXTENSIONS" />
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKvh" role="N3F5h">
      <property role="TrG5h" value="fdclose" />
      <node concept="3TlMh2" id="3K5ngtdDKvj" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="19RgSI" id="3K5ngtdDKvk" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="3wxxNl" id="3K5ngtdDKvm" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="rcJHQ" id="3K5ngtdDKvl" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
            <ref role="rcJHT" node="3K5ngtdDKln" resolve="FILE" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKvo" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKvn" role="2dvt70">
          <node concept="2qVrgw" id="3K5ngtdDKvq" role="3o9_ts">
            <ref role="2qVrgz" node="3K5ngtdDKiI" resolve="EXTENSIONS" />
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKvr" role="N3F5h">
      <property role="TrG5h" value="flushall" />
      <node concept="3TlMh2" id="3K5ngtdDKvt" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="19RgSI" id="3K5ngtdDKvu" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="19Rifw" id="3K5ngtdDKvw" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKvy" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKvx" role="2dvt70">
          <node concept="2qVrgw" id="3K5ngtdDKv$" role="3o9_ts">
            <ref role="2qVrgz" node="3K5ngtdDKiI" resolve="EXTENSIONS" />
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKv_" role="N3F5h">
      <property role="TrG5h" value="putpad" />
      <node concept="3TlMh2" id="3K5ngtdDKvB" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="19RgSI" id="3K5ngtdDKvC" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="3TlMh2" id="3K5ngtdDKvE" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKvF" role="1UOdpc">
        <property role="TrG5h" value="p1" />
        <node concept="3TlMh2" id="3K5ngtdDKvH" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKvI" role="1UOdpc">
        <property role="TrG5h" value="p2" />
        <node concept="3TlMh2" id="3K5ngtdDKvK" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKvL" role="1UOdpc">
        <property role="TrG5h" value="p3" />
        <node concept="3wxxNl" id="3K5ngtdDKvO" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKvN" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKvP" role="1UOdpc">
        <property role="TrG5h" value="p4" />
        <node concept="3wxxNl" id="3K5ngtdDKvR" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="rcJHQ" id="3K5ngtdDKvQ" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
            <ref role="rcJHT" node="3K5ngtdDKln" resolve="FILE" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKvT" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKvS" role="2dvt70">
          <node concept="2qVrgw" id="3K5ngtdDKvV" role="3o9_ts">
            <ref role="2qVrgz" node="3K5ngtdDKiI" resolve="EXTENSIONS" />
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKvW" role="N3F5h">
      <property role="TrG5h" value="saprintf" />
      <node concept="3wxxNl" id="3K5ngtdDKvZ" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
        <node concept="biTqx" id="3K5ngtdDKvY" role="2umbIo">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKw0" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="3wxxNl" id="3K5ngtdDKw3" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKw2" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKw5" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKw4" role="2dvt70">
          <node concept="2qVrgw" id="3K5ngtdDKw7" role="3o9_ts">
            <ref role="2qVrgz" node="3K5ngtdDKiI" resolve="EXTENSIONS" />
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKw8" role="N3F5h">
      <property role="TrG5h" value="scanfiles" />
      <node concept="3TlMh2" id="3K5ngtdDKwa" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="19RgSI" id="3K5ngtdDKwb" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="pFrBc" id="3K5ngtdDKwc" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="3TlMh2" id="3K5ngtdDKwe" role="pFrBb">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKwg" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKwf" role="2dvt70">
          <node concept="2qVrgw" id="3K5ngtdDKwi" role="3o9_ts">
            <ref role="2qVrgz" node="3K5ngtdDKiI" resolve="EXTENSIONS" />
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKwj" role="N3F5h">
      <property role="TrG5h" value="seterrfn" />
      <node concept="3TlMh2" id="3K5ngtdDKwl" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="19RgSI" id="3K5ngtdDKwm" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="pFrBc" id="3K5ngtdDKwn" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="3TlMh2" id="3K5ngtdDKwp" role="pFrBb">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKwq" role="1UOdpc">
        <property role="TrG5h" value="p1" />
        <node concept="3wxxNl" id="3K5ngtdDKws" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="rcJHQ" id="3K5ngtdDKwr" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
            <ref role="rcJHT" node="3K5ngtdDKln" resolve="FILE" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKwu" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKwt" role="2dvt70">
          <node concept="2qVrgw" id="3K5ngtdDKww" role="3o9_ts">
            <ref role="2qVrgz" node="3K5ngtdDKiI" resolve="EXTENSIONS" />
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKwx" role="N3F5h">
      <property role="TrG5h" value="setfuncs" />
      <node concept="3TlMh2" id="3K5ngtdDKwz" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="19RgSI" id="3K5ngtdDKw$" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="pFrBc" id="3K5ngtdDKw_" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="3TlMh2" id="3K5ngtdDKwB" role="pFrBb">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKwC" role="1UOdpc">
        <property role="TrG5h" value="p1" />
        <node concept="pFrBc" id="3K5ngtdDKwD" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="1X9cn3" id="3K5ngtdDKwF" role="pFrBb">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKwG" role="1UOdpc">
        <property role="TrG5h" value="p2" />
        <node concept="pFrBc" id="3K5ngtdDKwH" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="3TlMh2" id="3K5ngtdDKwJ" role="pFrBb">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKwK" role="1UOdpc">
        <property role="TrG5h" value="p3" />
        <node concept="pFrBc" id="3K5ngtdDKwL" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="3TlMh2" id="3K5ngtdDKwN" role="pFrBb">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKwO" role="1UOdpc">
        <property role="TrG5h" value="p4" />
        <node concept="3wxxNl" id="3K5ngtdDKwQ" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="rcJHQ" id="3K5ngtdDKwP" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
            <ref role="rcJHT" node="3K5ngtdDKln" resolve="FILE" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKwS" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKwR" role="2dvt70">
          <node concept="2qVrgw" id="3K5ngtdDKwU" role="3o9_ts">
            <ref role="2qVrgz" node="3K5ngtdDKiI" resolve="EXTENSIONS" />
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKwV" role="N3F5h">
      <property role="TrG5h" value="snprintf" />
      <node concept="3TlMh2" id="3K5ngtdDKwX" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="19RgSI" id="3K5ngtdDKwY" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="3wxxNl" id="3K5ngtdDKx1" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKx0" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKx2" role="1UOdpc">
        <property role="TrG5h" value="p1" />
        <node concept="3TlMh2" id="3K5ngtdDKx4" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKx5" role="1UOdpc">
        <property role="TrG5h" value="p2" />
        <node concept="3wxxNl" id="3K5ngtdDKx8" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKx7" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKxa" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKx9" role="2dvt70">
          <node concept="2qVrgw" id="3K5ngtdDKxc" role="3o9_ts">
            <ref role="2qVrgz" node="3K5ngtdDKiI" resolve="EXTENSIONS" />
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKxd" role="N3F5h">
      <property role="TrG5h" value="stropen" />
      <node concept="3wxxNl" id="3K5ngtdDKxf" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
        <node concept="rcJHQ" id="3K5ngtdDKxe" role="2umbIo">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <ref role="rcJHT" node="3K5ngtdDKln" resolve="FILE" />
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKxg" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="3wxxNl" id="3K5ngtdDKxj" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKxi" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKxk" role="1UOdpc">
        <property role="TrG5h" value="p1" />
        <node concept="3wxxNl" id="3K5ngtdDKxn" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKxm" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKxp" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKxo" role="2dvt70">
          <node concept="2qVrgw" id="3K5ngtdDKxr" role="3o9_ts">
            <ref role="2qVrgz" node="3K5ngtdDKiI" resolve="EXTENSIONS" />
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKxs" role="N3F5h">
      <property role="TrG5h" value="strnopen" />
      <node concept="3wxxNl" id="3K5ngtdDKxu" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
        <node concept="rcJHQ" id="3K5ngtdDKxt" role="2umbIo">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <ref role="rcJHT" node="3K5ngtdDKln" resolve="FILE" />
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKxv" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="3wxxNl" id="3K5ngtdDKxy" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKxx" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKxz" role="1UOdpc">
        <property role="TrG5h" value="p1" />
        <node concept="3TlMh2" id="3K5ngtdDKx_" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKxA" role="1UOdpc">
        <property role="TrG5h" value="p2" />
        <node concept="3wxxNl" id="3K5ngtdDKxD" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKxC" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKxF" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKxE" role="2dvt70">
          <node concept="2qVrgw" id="3K5ngtdDKxH" role="3o9_ts">
            <ref role="2qVrgz" node="3K5ngtdDKiI" resolve="EXTENSIONS" />
          </node>
        </node>
      </node>
    </node>
    <node concept="N3Fnw" id="3K5ngtdDKxI" role="N3F5h">
      <property role="TrG5h" value="vsaprintf" />
      <node concept="3wxxNl" id="3K5ngtdDKxL" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
        <node concept="biTqx" id="3K5ngtdDKxK" role="2umbIo">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKxM" role="1UOdpc">
        <property role="TrG5h" value="p0" />
        <node concept="rcJHQ" id="3K5ngtdDKxN" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <ref role="rcJHT" node="3K5ngtdDKun" resolve="va_list" />
        </node>
      </node>
      <node concept="19RgSI" id="3K5ngtdDKxO" role="1UOdpc">
        <property role="TrG5h" value="p1" />
        <node concept="3wxxNl" id="3K5ngtdDKxR" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="biTqx" id="3K5ngtdDKxQ" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
      <node concept="2dvt44" id="3K5ngtdDKxT" role="lGtFl">
        <node concept="3o9_tv" id="3K5ngtdDKxS" role="2dvt70">
          <node concept="2qVrgw" id="3K5ngtdDKxV" role="3o9_ts">
            <ref role="2qVrgz" node="3K5ngtdDKiI" resolve="EXTENSIONS" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2dvl_R" id="3K5ngtdDKxW" role="lGtFl">
      <ref role="2dvl_Q" node="3K5ngtdDKiA" resolve="IFDEFS" />
      <ref role="AiAcg" node="3K5ngtdDKiJ" resolve="allFeatures" />
    </node>
  </node>
  <node concept="MXy$V" id="Yv_F9RtKkZ">
    <node concept="26Vqpb" id="Yv_F9RtKlJ" role="3kxMGo">
      <property role="2caQfQ" value="false" />
      <property role="2c7vTL" value="false" />
    </node>
    <node concept="26Vqpb" id="Yv_F9RtKlK" role="2O5j3Q">
      <property role="2caQfQ" value="false" />
      <property role="2c7vTL" value="false" />
    </node>
    <node concept="26Vqpb" id="Yv_F9RtKlL" role="3EM3Bk">
      <property role="2caQfQ" value="false" />
      <property role="2c7vTL" value="false" />
    </node>
    <node concept="3VGQI6" id="Yv_F9RtKlN" role="3LaRDq">
      <property role="3VGQ4h" value="-1" />
      <property role="3VGQ4j" value="37" />
    </node>
    <node concept="3VGQI6" id="Yv_F9RtKlO" role="3LaRDH">
      <property role="3VGQ4h" value="-1" />
      <property role="3VGQ4j" value="37" />
    </node>
    <node concept="3VGQI6" id="Yv_F9RtKlP" role="3LaROH">
      <property role="3VGQ4h" value="1" />
      <property role="3VGQ4j" value="37" />
    </node>
    <node concept="3VGQI6" id="Yv_F9RtKlQ" role="3LaRDz">
      <property role="3VGQ4h" value="1" />
      <property role="3VGQ4j" value="37" />
    </node>
    <node concept="MXy$U" id="Yv_F9RtKlT" role="MXv61">
      <property role="MzQRn" value="true" />
      <node concept="biTqx" id="Yv_F9RtKlR" role="15Utuf">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="26Vqqz" id="Yv_F9RtKlS" role="15Utue">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
    </node>
    <node concept="MXy$U" id="Yv_F9RtKlW" role="MXv61">
      <property role="MzQRn" value="true" />
      <node concept="MySNB" id="Yv_F9RtKlU" role="15Utuf">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="26Vqpq" id="Yv_F9RtKlV" role="15Utue">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
    </node>
    <node concept="MXy$U" id="Yv_F9RtKlZ" role="MXv61">
      <property role="MzQRn" value="true" />
      <node concept="3TlMh2" id="Yv_F9RtKlX" role="15Utuf">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="26Vqph" id="Yv_F9RtKlY" role="15Utue">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
    </node>
    <node concept="MXy$U" id="Yv_F9RtKm2" role="MXv61">
      <property role="MzQRn" value="true" />
      <node concept="1X9cn3" id="Yv_F9RtKm0" role="15Utuf">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="26Vqph" id="Yv_F9RtKm1" role="15Utue">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
    </node>
    <node concept="MXy$U" id="Yv_F9RtKm5" role="MXv61">
      <property role="MzQRn" value="true" />
      <node concept="26VBN5" id="Yv_F9RtKm3" role="15Utuf">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="26Vqpk" id="Yv_F9RtKm4" role="15Utue">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
    </node>
    <node concept="MXy$U" id="Yv_F9RtKm8" role="MXv61">
      <property role="MzQRn" value="true" />
      <node concept="26VXeP" id="Yv_F9RtKm6" role="15Utuf">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="26Vqp4" id="Yv_F9RtKm7" role="15Utue">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
    </node>
    <node concept="MXy$U" id="Yv_F9RtKmb" role="MXv61">
      <property role="MzQRn" value="true" />
      <node concept="LMkMC" id="Yv_F9RtKm9" role="15Utuf">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="26VqpV" id="Yv_F9RtKma" role="15Utue">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
    </node>
    <node concept="MXy$U" id="Yv_F9RtKme" role="MXv61">
      <property role="MzQRn" value="true" />
      <node concept="26VXez" id="Yv_F9RtKmc" role="15Utuf">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="26Vqpb" id="Yv_F9RtKmd" role="15Utue">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
    </node>
    <node concept="MXy$U" id="Yv_F9RtKmh" role="MXv61">
      <property role="MzQRn" value="true" />
      <node concept="26VBNf" id="Yv_F9RtKmf" role="15Utuf">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="26Vqpb" id="Yv_F9RtKmg" role="15Utue">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
    </node>
    <node concept="MXy$U" id="Yv_F9RtKmk" role="MXv61">
      <property role="MzQRn" value="true" />
      <node concept="26VqpY" id="Yv_F9RtKmi" role="15Utuf">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="26Vqp1" id="Yv_F9RtKmj" role="15Utue">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
    </node>
    <node concept="2mYgW_" id="Yv_F9RtKmn" role="2mYqyz">
      <property role="2mYgW$" value="true" />
      <node concept="3AreGT" id="Yv_F9RtKml" role="2mYgXq">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="3AreGT" id="Yv_F9RtKmm" role="2mYgXp">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
    </node>
    <node concept="2mYgW_" id="Yv_F9RtKmq" role="2mYqyz">
      <property role="2mYgW$" value="true" />
      <node concept="2fgwQN" id="Yv_F9RtKmo" role="2mYgXq">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="2fgwQN" id="Yv_F9RtKmp" role="2mYgXp">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
    </node>
    <node concept="2mYgW_" id="Yv_F9RtKmt" role="2mYqyz">
      <property role="2mYgW$" value="true" />
      <node concept="2p1N2b" id="Yv_F9RtKmr" role="2mYgXq">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="2p1N2b" id="Yv_F9RtKms" role="2mYgXp">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
    </node>
  </node>
  <node concept="N3F5e" id="5R$JczI3m8R">
    <property role="TrG5h" value="importer" />
    <node concept="3GEVxB" id="5R$JczI3m8S" role="2OODSX">
      <ref role="3GEb4d" node="Yv_F9Rsp95" resolve="Test" />
    </node>
    <node concept="N3Fnx" id="5R$JczI3m8U" role="N3F5h">
      <property role="TrG5h" value="main" />
      <property role="2OOxQR" value="true" />
      <node concept="3XIRFW" id="5R$JczI3m8W" role="3XIRFX">
        <node concept="3XISUE" id="4kDdvVMxvY" role="3XIRFZ" />
        <node concept="2BFjQ_" id="5R$JczI3m94" role="3XIRFZ">
          <node concept="3TlMh9" id="6i5ngPZJBq6" role="2BFjQA">
            <property role="2hmy$m" value="0" />
          </node>
        </node>
      </node>
      <node concept="26Vqph" id="5R$JczI3m8Y" role="2C2TGm">
        <property role="2caQfQ" value="false" />
        <property role="2c7vTL" value="false" />
      </node>
      <node concept="19RgSI" id="5R$JczI3m8Z" role="1UOdpc">
        <property role="TrG5h" value="argc" />
        <node concept="26Vqph" id="5R$JczI3m90" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
        </node>
      </node>
      <node concept="19RgSI" id="5R$JczI3m91" role="1UOdpc">
        <property role="TrG5h" value="argv" />
        <node concept="3J0A42" id="5R$JczI3m92" role="2C2TGm">
          <property role="2caQfQ" value="false" />
          <property role="2c7vTL" value="false" />
          <node concept="Pu267" id="5R$JczI3m93" role="2umbIo">
            <property role="2caQfQ" value="false" />
            <property role="2c7vTL" value="false" />
          </node>
        </node>
      </node>
    </node>
    <node concept="2NXPZ9" id="9w2VdcDiGk" role="N3F5h">
      <property role="TrG5h" value="empty_1416818714126_7" />
    </node>
  </node>
  <node concept="2v9HqL" id="7u52nvbGwa6">
    <property role="TrG5h" value="BuildConfiguration (me.sandbox)" />
    <node concept="2Q9Fgs" id="4jzTn7ft6vx" role="2Q9xDr">
      <node concept="2Q9FjX" id="4jzTn7ft6vy" role="2Q9FjI" />
    </node>
    <node concept="35TzUN" id="46pw9xVTOmO" role="2Q9xDr">
      <node concept="IjAfM" id="46pw9xVTOmT" role="19yoJo">
        <ref role="IjAfK" node="46pw9xVTJ0K" resolve="IFDEFS" />
        <ref role="IjAfL" node="46pw9xVTJ0T" resolve="allFeatures" />
      </node>
    </node>
    <node concept="2eOfOl" id="9w2VdcDtSS" role="2ePNbc">
      <property role="iO3LB" value="false" />
      <property role="TrG5h" value="main" />
      <node concept="2v9HqM" id="9w2VdcDtSV" role="2eOfOg">
        <ref role="2v9HqP" node="5R$JczI3m8R" resolve="importer" />
      </node>
      <node concept="2v9HqM" id="9w2VdcDuzh" role="2eOfOg">
        <ref role="2v9HqP" node="Yv_F9Rsp95" resolve="Test" />
      </node>
    </node>
    <node concept="2AWWZL" id="9w2VdcE2C7" role="2AWWZH">
      <property role="2AWWZJ" value="gcc" />
      <property role="2AWWZI" value="-std=c99" />
      <property role="1FkSt$" value="-g" />
    </node>
  </node>
  <node concept="Idr$i" id="6_NQeTaYkCa">
    <property role="TrG5h" value="IFDEFVariability" />
    <node concept="Id4hS" id="3K5ngtdDKiA" role="Idr$j">
      <property role="TrG5h" value="IFDEFS" />
      <node concept="28I2Iu" id="3K5ngtdDKiB" role="Id4hT">
        <node concept="Idvup" id="3K5ngtdDKiC" role="Id4hL" />
        <node concept="Id4hK" id="3K5ngtdDKiD" role="Id4hQ">
          <property role="TrG5h" value="FILE" />
          <node concept="Id4hK" id="3K5ngtdDKiE" role="Id4hQ">
            <property role="TrG5h" value="pdp11" />
          </node>
        </node>
        <node concept="Id4hK" id="3K5ngtdDKiF" role="Id4hQ">
          <property role="TrG5h" value="NULL" />
        </node>
        <node concept="Id4hK" id="3K5ngtdDKiG" role="Id4hQ">
          <property role="TrG5h" value="PUTCLBUF" />
        </node>
        <node concept="Id4hK" id="3K5ngtdDKiH" role="Id4hQ">
          <property role="TrG5h" value="__STDC__" />
          <node concept="Id4hK" id="3K5ngtdDKiI" role="Id4hQ">
            <property role="TrG5h" value="EXTENSIONS" />
          </node>
        </node>
      </node>
    </node>
    <node concept="Id4hE" id="3K5ngtdDKiJ" role="Idr$j">
      <property role="TrG5h" value="allFeatures" />
      <ref role="Id4hC" node="3K5ngtdDKiA" resolve="IFDEFS" />
      <node concept="Id4hG" id="3K5ngtdDKiK" role="Id4hF">
        <ref role="Id4hN" node="3K5ngtdDKiB" resolve="IFDEFS_root" />
        <node concept="Id4hG" id="3K5ngtdDKiL" role="Id4hH">
          <ref role="Id4hN" node="3K5ngtdDKiD" resolve="FILE" />
        </node>
        <node concept="Id4hG" id="3K5ngtdDKiM" role="Id4hH">
          <ref role="Id4hN" node="3K5ngtdDKiF" resolve="NULL" />
        </node>
        <node concept="Id4hG" id="3K5ngtdDKiN" role="Id4hH">
          <ref role="Id4hN" node="3K5ngtdDKiG" resolve="PUTCLBUF" />
        </node>
        <node concept="Id4hG" id="3K5ngtdDKiO" role="Id4hH">
          <ref role="Id4hN" node="3K5ngtdDKiH" resolve="__STDC__" />
        </node>
      </node>
    </node>
  </node>
</model>

