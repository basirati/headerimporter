<?xml version="1.0" encoding="UTF-8"?>
<language namespace="stdio_importer" uuid="bf3a99ee-2929-443f-ab00-3806605fc5e7">
  <models>
    <modelRoot contentPath="${module}" type="default">
      <sourceRoot location="languageModels" />
    </modelRoot>
  </models>
  <accessoryModels />
  <generators>
    <generator generatorUID="stdio_importer#9034667011425327963" uuid="9dbd9d1d-483b-437b-bd5b-44ba2ba35de1">
      <models>
        <modelRoot contentPath="${module}" type="default">
          <sourceRoot location="generator/template" />
        </modelRoot>
      </models>
      <external-templates />
      <usedLanguages>
        <usedLanguage>b401a680-8325-4110-8fd3-84331ff25bef(jetbrains.mps.lang.generator)</usedLanguage>
        <usedLanguage>d7706f63-9be2-479c-a3da-ae92af1e64d5(jetbrains.mps.lang.generator.generationContext)</usedLanguage>
        <usedLanguage>bf3a99ee-2929-443f-ab00-3806605fc5e7(stdio_importer)</usedLanguage>
      </usedLanguages>
      <usedDevKits>
        <usedDevKit>fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)</usedDevKit>
      </usedDevKits>
      <mapping-priorities />
    </generator>
  </generators>
  <sourcePath />
  <dependencies>
    <dependency reexport="true">dca8f507-0665-4521-8b6d-f34b73933d72(stdio_importer.runtime)</dependency>
  </dependencies>
  <usedDevKits>
    <usedDevKit>2677cb18-f558-4e33-bc38-a5139cee06dc(jetbrains.mps.devkit.language-design)</usedDevKit>
  </usedDevKits>
  <runtime>
    <dependency reexport="false">dca8f507-0665-4521-8b6d-f34b73933d72(stdio_importer.runtime)</dependency>
  </runtime>
  <extendedLanguages />
</language>

