<?xml version="1.0" encoding="UTF-8"?>
<solution name="stdioImporter.runtime" uuid="d1a1b00e-e5c0-4fee-bd03-df702239c847" compileInMPS="true">
  <models>
    <modelRoot contentPath="${module}" type="default">
      <sourceRoot location="models" />
    </modelRoot>
    <modelRoot contentPath="${headerimporter.home}/bparser" type="java_classes">
      <sourceRoot location="out/artifacts/bparser_jar/bparser.jar" />
    </modelRoot>
  </models>
  <stubModelEntries>
    <stubModelEntry path="${headerimporter.home}/bparser/out/artifacts/bparser_jar/bparser.jar" />
  </stubModelEntries>
  <sourcePath />
  <dependencies>
    <dependency reexport="false">6354ebe7-c22a-4a0f-ac54-50b52ab9b065(JDK)</dependency>
    <dependency reexport="false">017fba0e-af15-4a23-b0a8-02b5c1141e75(com.mbeddr.cc.var.annotations)</dependency>
    <dependency reexport="false">3bf5377a-e904-4ded-9754-5a516023bfaa(com.mbeddr.core.pointers)</dependency>
    <dependency reexport="false">efda956e-491e-4f00-ba14-36af2f213ecf(com.mbeddr.core.udt)</dependency>
    <dependency reexport="false">ceab5195-25ea-4f22-9b92-103b95ca8c0c(jetbrains.mps.lang.core)</dependency>
    <dependency reexport="false">4552c9e5-a342-4299-8de1-338d8e5679fc(stdioImporter)</dependency>
  </dependencies>
  <usedLanguages>
    <usedLanguage>017fba0e-af15-4a23-b0a8-02b5c1141e75(com.mbeddr.cc.var.annotations)</usedLanguage>
    <usedLanguage>e401b447-8019-4ccd-a72c-bfb0230f5782(com.mbeddr.cc.var.fm)</usedLanguage>
    <usedLanguage>f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)</usedLanguage>
    <usedLanguage>7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)</usedLanguage>
  </usedLanguages>
</solution>

