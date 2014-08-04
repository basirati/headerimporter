<?xml version="1.0" encoding="UTF-8"?>
<model modelUID="r:0a61a9e7-a709-43f0-abe2-8e147f2ba2c1(stdioImporter.runtime)">
  <persistence version="8" />
  <language namespace="f3061a53-9226-4cc5-a443-f952ceaf5816(jetbrains.mps.baseLanguage)" />
  <language namespace="7866978e-a0f0-4cc7-81bc-4d213d9375e1(jetbrains.mps.lang.smodel)" />
  <language namespace="83888646-71ce-4f1c-9c53-c54016f6ad4f(jetbrains.mps.baseLanguage.collections)" />
  <import index="dgd3" modelUID="f:java_stub#d1a1b00e-e5c0-4fee-bd03-df702239c847#stdio_parser(stdioImporter.runtime/stdio_parser@java_stub)" version="-1" />
  <import index="fxg7" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.io(JDK/java.io@java_stub)" version="-1" />
  <import index="tpck" modelUID="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" version="0" />
  <import index="yq40" modelUID="r:152b3fc0-83a1-4bab-a8cd-565eb8483785(com.mbeddr.core.pointers.structure)" version="4" />
  <import index="clbe" modelUID="r:61d840b4-12c1-49ea-b142-b2a1550a9b15(com.mbeddr.core.udt.structure)" version="11" />
  <import index="mj1l" modelUID="r:c371cf98-dcc8-4a43-8eb8-8a8096de18b2(com.mbeddr.core.expressions.structure)" version="30" />
  <import index="x27k" modelUID="r:75ecab8a-8931-4140-afc6-4b46398710fc(com.mbeddr.core.modules.structure)" version="9" />
  <import index="tpee" modelUID="r:00000000-0000-4000-0000-011c895902ca(jetbrains.mps.baseLanguage.structure)" version="5" implicit="yes" />
  <import index="s45p" modelUID="f:java_stub#d1a1b00e-e5c0-4fee-bd03-df702239c847#java_cup.runtime(stdioImporter.runtime/java_cup.runtime@java_stub)" version="-1" implicit="yes" />
  <import index="e2lb" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.lang(JDK/java.lang@java_stub)" version="-1" implicit="yes" />
  <import index="tp25" modelUID="r:00000000-0000-4000-0000-011c89590301(jetbrains.mps.lang.smodel.structure)" version="16" implicit="yes" />
  <import index="tp2q" modelUID="r:00000000-0000-4000-0000-011c8959032e(jetbrains.mps.baseLanguage.collections.structure)" version="7" implicit="yes" />
  <import index="k7g3" modelUID="f:java_stub#6354ebe7-c22a-4a0f-ac54-50b52ab9b065#java.util(JDK/java.util@java_stub)" version="-1" implicit="yes" />
  <root type="tpee.ClassConcept" typeId="tpee.1068390468198" id="3764438981860010834" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="ParserAdapter" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="3764438981860038542" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="Parse" />
      <property name="isSynchronized" nameId="tpee.4276006055363816570" value="false" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="3764438981860038545" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.TryCatchStatement" typeId="tpee.1164879751025" id="3764438981860197241" nodeInfo="nn">
          <node role="body" roleId="tpee.1164879758292" type="tpee.StatementList" typeId="tpee.1068580123136" id="3764438981860197242" nodeInfo="sn">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="3764438981860057750" nodeInfo="nn">
              <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="3764438981860057751" nodeInfo="nr">
                <property name="name" nameId="tpck.1169194664001" value="p" />
                <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="3764438981860057752" nodeInfo="in">
                  <link role="classifier" roleId="tpee.1107535924139" targetNodeId="dgd3.~parser" resolveInfo="parser" />
                </node>
                <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="3764438981860057802" nodeInfo="nn">
                  <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="3764438981860186520" nodeInfo="nn">
                    <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="dgd3.~parser%d&lt;init&gt;(java_cup%druntime%dScanner)" resolveInfo="parser" />
                    <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="5652833161527891058" nodeInfo="nn">
                      <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="5652833161527893471" nodeInfo="nn">
                        <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="dgd3.~Lexer%d&lt;init&gt;(java%dio%dReader)" resolveInfo="Lexer" />
                        <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="5652833161527894492" nodeInfo="nn">
                          <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="5652833161527896160" nodeInfo="nn">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="fxg7.~FileReader%d&lt;init&gt;(java%dlang%dString)" resolveInfo="FileReader" />
                            <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="5652833161527897366" nodeInfo="nn">
                              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="9102946174996790030" resolveInfo="filename" />
                            </node>
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="3764438981860187731" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="3764438981860190204" nodeInfo="nn">
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="3764438981860190668" nodeInfo="nn">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="s45p.~lr_parser%dparse()%cjava_cup%druntime%dSymbol" resolveInfo="parse" />
                </node>
                <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="9102946174996843080" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3764438981860057751" resolveInfo="p" />
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="1125784125119250209" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068581517676" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1125784125119250718" nodeInfo="nn">
                <node role="operation" roleId="tpee.1197027833540" type="tpee.FieldReferenceOperation" typeId="tpee.1197029447546" id="1125784125119253187" nodeInfo="nn">
                  <link role="fieldDeclaration" roleId="tpee.1197029500499" targetNodeId="dgd3.~parser%dcg" resolveInfo="cg" />
                </node>
                <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="9102946174996844245" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3764438981860057751" resolveInfo="p" />
                </node>
              </node>
            </node>
          </node>
          <node role="catchClause" roleId="tpee.1164903496223" type="tpee.CatchClause" typeId="tpee.1164903280175" id="3764438981860197237" nodeInfo="nn">
            <node role="catchBody" roleId="tpee.1164903359218" type="tpee.StatementList" typeId="tpee.1068580123136" id="3764438981860197238" nodeInfo="sn">
              <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="9102946174996878030" nodeInfo="nn">
                <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="9102946174996878031" nodeInfo="nr">
                  <property name="name" nameId="tpck.1169194664001" value="cg" />
                  <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="9102946174996878032" nodeInfo="in">
                    <link role="classifier" roleId="tpee.1107535924139" targetNodeId="dgd3.~CodeGenerator" resolveInfo="CodeGenerator" />
                  </node>
                  <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="9102946174996878824" nodeInfo="nn">
                    <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="9102946174996879315" nodeInfo="nn">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="dgd3.~CodeGenerator%d&lt;init&gt;()" resolveInfo="CodeGenerator" />
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" roleId="tpee.1068581517665" type="tp2q.ForEachStatement" typeId="tp2q.1153943597977" id="9102946174998555866" nodeInfo="nn">
                <node role="variable" roleId="tp2q.1153944400369" type="tp2q.ForEachVariable" typeId="tp2q.1153944193378" id="9102946174998555868" nodeInfo="nr">
                  <property name="name" nameId="tpck.1169194664001" value="s" />
                </node>
                <node role="inputSequence" roleId="tp2q.1153944424730" type="tpee.DotExpression" typeId="tpee.1197027756228" id="9102946174998559078" nodeInfo="nn">
                  <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="9102946174998557480" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="9102946174998557043" nodeInfo="nn">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="3764438981860197239" resolveInfo="e" />
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="9102946174998558783" nodeInfo="nn">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~Throwable%dgetStackTrace()%cjava%dlang%dStackTraceElement[]" resolveInfo="getStackTrace" />
                    </node>
                  </node>
                  <node role="operation" roleId="tpee.1197027833540" type="tp2q.AsSequenceOperation" typeId="tp2q.1240325842691" id="9102946174998561058" nodeInfo="nn" />
                </node>
                <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="9102946174998555872" nodeInfo="sn">
                  <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="9102946174996907301" nodeInfo="nn">
                    <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="9102946174996907302" nodeInfo="nr">
                      <property name="name" nameId="tpck.1169194664001" value="v" />
                      <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="9102946174996907303" nodeInfo="in">
                        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="dgd3.~var_decl" resolveInfo="var_decl" />
                      </node>
                      <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="9102946174996907704" nodeInfo="nn">
                        <node role="creator" roleId="tpee.1145553007750" type="tpee.ClassCreator" typeId="tpee.1212685548494" id="9102946174996908346" nodeInfo="nn">
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="dgd3.~var_decl%d&lt;init&gt;()" resolveInfo="var_decl" />
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="9102946174998590593" nodeInfo="nn">
                    <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="9102946174998590837" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="9102946174998590592" nodeInfo="nn">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="9102946174996907302" resolveInfo="v" />
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="9102946174998591785" nodeInfo="nn">
                        <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="dgd3.~var_decl%dpush(java%dlang%dObject)%cvoid" resolveInfo="push" />
                        <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="9102946174998592061" nodeInfo="nn">
                          <node role="operand" roleId="tpee.1197027771414" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="9102946174998591987" nodeInfo="nn">
                            <link role="variable" roleId="tp2q.1153944258490" targetNodeId="9102946174998555868" resolveInfo="s" />
                          </node>
                          <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="9102946174998594480" nodeInfo="nn">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~StackTraceElement%dtoString()%cjava%dlang%dString" resolveInfo="toString" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="9102946174998595995" nodeInfo="nn">
                    <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="9102946174998596299" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="9102946174998595994" nodeInfo="nn">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="9102946174996907302" resolveInfo="v" />
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="9102946174998597655" nodeInfo="nn">
                        <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="dgd3.~var_decl%dpush(java%dlang%dObject)%cvoid" resolveInfo="push" />
                        <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="9102946174998597931" nodeInfo="nn">
                          <node role="operand" roleId="tpee.1197027771414" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="9102946174998597857" nodeInfo="nn">
                            <link role="variable" roleId="tp2q.1153944258490" targetNodeId="9102946174998555868" resolveInfo="s" />
                          </node>
                          <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="9102946174998599452" nodeInfo="nn">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~StackTraceElement%dtoString()%cjava%dlang%dString" resolveInfo="toString" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="9102946174998600949" nodeInfo="nn">
                    <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="9102946174998601293" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="9102946174998600948" nodeInfo="nn">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="9102946174996907302" resolveInfo="v" />
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="9102946174998602225" nodeInfo="nn">
                        <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="dgd3.~var_decl%dpush(java%dlang%dObject)%cvoid" resolveInfo="push" />
                        <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="9102946174998602509" nodeInfo="nn">
                          <node role="operand" roleId="tpee.1197027771414" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="9102946174998602435" nodeInfo="nn">
                            <link role="variable" roleId="tp2q.1153944258490" targetNodeId="9102946174998555868" resolveInfo="s" />
                          </node>
                          <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="9102946174998604077" nodeInfo="nn">
                            <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="e2lb.~StackTraceElement%dtoString()%cjava%dlang%dString" resolveInfo="toString" />
                          </node>
                        </node>
                      </node>
                    </node>
                  </node>
                  <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="9102946174998561399" nodeInfo="nn">
                    <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="9102946174998563943" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="9102946174998561609" nodeInfo="nn">
                        <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="9102946174998561398" nodeInfo="nn">
                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="9102946174996878031" resolveInfo="cg" />
                        </node>
                        <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="9102946174998562465" nodeInfo="nn">
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="dgd3.~CodeGenerator%dgetVars()%cjava%dutil%dArrayList" resolveInfo="getVars" />
                        </node>
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="9102946174998577285" nodeInfo="nn">
                        <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="k7g3.~ArrayList%dadd(java%dlang%dObject)%cboolean" resolveInfo="add" />
                        <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="9102946174998584590" nodeInfo="nn">
                          <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="9102946174996907302" resolveInfo="v" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="9102946174996918858" nodeInfo="nn">
                <node role="expression" roleId="tpee.1068581517676" type="tpee.VariableReference" typeId="tpee.1068498886296" id="9102946174996919995" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="9102946174996878031" resolveInfo="cg" />
                </node>
              </node>
            </node>
            <node role="throwable" roleId="tpee.1164903359217" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="3764438981860197239" nodeInfo="nr">
              <property name="name" nameId="tpck.1169194664001" value="e" />
              <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="3764438981860197240" nodeInfo="in">
                <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Exception" resolveInfo="Exception" />
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.SingleLineComment" typeId="tpee.6329021646629104954" id="1125784125118570558" nodeInfo="nn">
          <node role="commentPart" roleId="tpee.6329021646629175155" type="tpee.StatementCommentPart" typeId="tpee.6329021646629175143" id="1125784125118570561" nodeInfo="nn">
            <node role="commentedStatement" roleId="tpee.6329021646629175144" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="1125784125118476608" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068581517676" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="1125784125118553715" nodeInfo="nn" />
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3764438981860038526" nodeInfo="nn" />
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1125784125118550078" nodeInfo="in">
        <link role="classifier" roleId="tpee.1107535924139" targetNodeId="dgd3.~CodeGenerator" resolveInfo="CodeGenerator" />
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="9102946174996790030" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="filename" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="9102946174996805279" nodeInfo="in" />
      </node>
    </node>
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3764438981860010835" nodeInfo="nn" />
  </root>
  <root type="tpee.ClassConcept" typeId="tpee.1068390468198" id="3764438981860208468" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Importer" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="3873900481303775804" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="doImport" />
      <property name="isDeprecated" nameId="tpee.1224848525476" value="false" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <property name="isSynchronized" nameId="tpee.4276006055363816570" value="false" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="3764438981860231100" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.TryCatchStatement" typeId="tpee.1164879751025" id="3764438981860231306" nodeInfo="nn">
          <node role="body" roleId="tpee.1164879758292" type="tpee.StatementList" typeId="tpee.1068580123136" id="3764438981860231308" nodeInfo="sn">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="1125784125117991527" nodeInfo="nn">
              <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1125784125117991528" nodeInfo="nr">
                <property name="name" nameId="tpck.1169194664001" value="cg" />
                <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="1125784125117991529" nodeInfo="in">
                  <link role="classifier" roleId="tpee.1107535924139" targetNodeId="dgd3.~CodeGenerator" resolveInfo="CodeGenerator" />
                </node>
                <node role="initializer" roleId="tpee.1068431790190" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="1125784125117991893" nodeInfo="nn">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="3764438981860038542" resolveInfo="Parse" />
                  <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="3764438981860010834" resolveInfo="ParserAdapter" />
                  <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.VariableReference" typeId="tpee.1068498886296" id="9102946174996785903" nodeInfo="nn">
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1125784125117977524" resolveInfo="filename" />
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tp2q.ForEachStatement" typeId="tp2q.1153943597977" id="9102946174998613648" nodeInfo="nn">
              <node role="variable" roleId="tp2q.1153944400369" type="tp2q.ForEachVariable" typeId="tp2q.1153944193378" id="9102946174998613649" nodeInfo="nr">
                <property name="name" nameId="tpck.1169194664001" value="v" />
              </node>
              <node role="inputSequence" roleId="tp2q.1153944424730" type="tpee.DotExpression" typeId="tpee.1197027756228" id="9102946174998614634" nodeInfo="nn">
                <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="9102946174998614251" nodeInfo="nn">
                  <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1125784125117991528" resolveInfo="cg" />
                </node>
                <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="9102946174998615642" nodeInfo="nn">
                  <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="dgd3.~CodeGenerator%dgetVars()%cjava%dutil%dArrayList" resolveInfo="getVars" />
                </node>
              </node>
              <node role="body" roleId="tpee.1154032183016" type="tpee.StatementList" typeId="tpee.1068580123136" id="9102946174998613651" nodeInfo="sn">
                <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="1125784125119008597" nodeInfo="nn">
                  <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1125784125119008600" nodeInfo="nr">
                    <property name="name" nameId="tpck.1169194664001" value="gvd" />
                    <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeType" typeId="tp25.1138055754698" id="1125784125119008595" nodeInfo="in">
                      <link role="concept" roleId="tp25.1138405853777" targetNodeId="x27k.6610873504380335822" resolveInfo="GlobalVariableDeclaration" />
                    </node>
                    <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="1125784125119009486" nodeInfo="nn">
                      <node role="creator" roleId="tpee.1145553007750" type="tp25.SNodeCreator" typeId="tp25.1180636770613" id="1125784125119010277" nodeInfo="nn">
                        <node role="createdType" roleId="tp25.1180636770616" type="tp25.SNodeType" typeId="tp25.1138055754698" id="1125784125119010279" nodeInfo="in">
                          <link role="concept" roleId="tp25.1138405853777" targetNodeId="x27k.6610873504380335822" resolveInfo="GlobalVariableDeclaration" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" roleId="tpee.1068581517665" type="tpee.LocalVariableDeclarationStatement" typeId="tpee.1068581242864" id="1125784125119012156" nodeInfo="nn">
                  <node role="localVariableDeclaration" roleId="tpee.1068581242865" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="1125784125119012159" nodeInfo="nr">
                    <property name="name" nameId="tpck.1169194664001" value="type" />
                    <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeType" typeId="tp25.1138055754698" id="1125784125119012154" nodeInfo="in">
                      <link role="concept" roleId="tp25.1138405853777" targetNodeId="mj1l.8860443239512128054" resolveInfo="Type" />
                    </node>
                    <node role="initializer" roleId="tpee.1068431790190" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="5652833161528387273" nodeInfo="nn">
                      <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="5652833161528287428" resolveInfo="buildType" />
                      <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="5652833161528197691" resolveInfo="Typer" />
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5652833161528390884" nodeInfo="nn">
                        <node role="operand" roleId="tpee.1197027771414" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="5652833161528390599" nodeInfo="nn">
                          <link role="variable" roleId="tp2q.1153944258490" targetNodeId="9102946174998613649" resolveInfo="v" />
                        </node>
                        <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="5652833161528396449" nodeInfo="nn">
                          <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="dgd3.~var_decl%dgetType()%cjava%dlang%dString" resolveInfo="getType" />
                        </node>
                      </node>
                      <node role="actualArgument" roleId="tpee.1068499141038" type="tpee.NullLiteral" typeId="tpee.1070534058343" id="5652833161528397837" nodeInfo="nn" />
                    </node>
                  </node>
                </node>
                <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="5652833161528440923" nodeInfo="nn">
                  <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="5652833161528467340" nodeInfo="nn">
                    <node role="rValue" roleId="tpee.1068498886297" type="tpee.VariableReference" typeId="tpee.1068498886296" id="5652833161528468039" nodeInfo="nn">
                      <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1125784125119012159" resolveInfo="type" />
                    </node>
                    <node role="lValue" roleId="tpee.1068498886295" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5652833161528443827" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="5652833161528440922" nodeInfo="nn">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1125784125119008600" resolveInfo="gvd" />
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkAccess" typeId="tp25.1138056143562" id="5652833161528466478" nodeInfo="nn">
                        <link role="link" roleId="tp25.1138056516764" targetNodeId="mj1l.318113533128716676" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="5652833161528476744" nodeInfo="nn">
                  <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="5652833161528488345" nodeInfo="nn">
                    <node role="rValue" roleId="tpee.1068498886297" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5652833161528489206" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tp2q.ForEachVariableReference" typeId="tp2q.1153944233411" id="5652833161528489167" nodeInfo="nn">
                        <link role="variable" roleId="tp2q.1153944258490" targetNodeId="9102946174998613649" resolveInfo="v" />
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tpee.InstanceMethodCallOperation" typeId="tpee.1202948039474" id="5652833161528496187" nodeInfo="nn">
                        <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="dgd3.~var_decl%dgetID()%cjava%dlang%dString" resolveInfo="getID" />
                      </node>
                    </node>
                    <node role="lValue" roleId="tpee.1068498886295" type="tpee.DotExpression" typeId="tpee.1197027756228" id="5652833161528478467" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="5652833161528476743" nodeInfo="nn">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1125784125119008600" resolveInfo="gvd" />
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tp25.SPropertyAccess" typeId="tp25.1138056022639" id="5652833161528482440" nodeInfo="nn">
                        <link role="property" roleId="tp25.1138056395725" targetNodeId="tpck.1169194664001" resolveInfo="name" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="1125784125119180254" nodeInfo="nn">
                  <node role="expression" roleId="tpee.1068580123156" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1125784125119198168" nodeInfo="nn">
                    <node role="operand" roleId="tpee.1197027771414" type="tpee.DotExpression" typeId="tpee.1197027756228" id="1125784125119182734" nodeInfo="nn">
                      <node role="operand" roleId="tpee.1197027771414" type="tpee.VariableReference" typeId="tpee.1068498886296" id="1125784125119180253" nodeInfo="nn">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1125784125117976017" resolveInfo="module" />
                      </node>
                      <node role="operation" roleId="tpee.1197027833540" type="tp25.SLinkListAccess" typeId="tp25.1138056282393" id="1125784125119192158" nodeInfo="nn">
                        <link role="link" roleId="tp25.1138056546658" targetNodeId="x27k.6437088627575722833" />
                      </node>
                    </node>
                    <node role="operation" roleId="tpee.1197027833540" type="tp2q.AddElementOperation" typeId="tp2q.1160612413312" id="1125784125119211530" nodeInfo="nn">
                      <node role="argument" roleId="tp2q.1160612519549" type="tpee.VariableReference" typeId="tpee.1068498886296" id="5652833161528500031" nodeInfo="nn">
                        <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="1125784125119008600" resolveInfo="gvd" />
                      </node>
                    </node>
                  </node>
                </node>
                <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="9102946174998622072" nodeInfo="nn" />
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="5652833161527943859" nodeInfo="nn" />
            <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="3764438981860231307" nodeInfo="nn" />
          </node>
          <node role="catchClause" roleId="tpee.1164903496223" type="tpee.CatchClause" typeId="tpee.1164903280175" id="3764438981860231309" nodeInfo="nn">
            <node role="throwable" roleId="tpee.1164903359217" type="tpee.LocalVariableDeclaration" typeId="tpee.1068581242863" id="3764438981860231311" nodeInfo="nr">
              <property name="name" nameId="tpck.1169194664001" value="e" />
              <node role="type" roleId="tpee.5680397130376446158" type="tpee.ClassifierType" typeId="tpee.1107535904670" id="3764438981860231372" nodeInfo="in">
                <link role="classifier" roleId="tpee.1107535924139" targetNodeId="e2lb.~Exception" resolveInfo="Exception" />
              </node>
            </node>
            <node role="catchBody" roleId="tpee.1164903359218" type="tpee.StatementList" typeId="tpee.1068580123136" id="3764438981860231315" nodeInfo="sn">
              <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="3764438981860238393" nodeInfo="nn">
                <node role="expression" roleId="tpee.1068581517676" type="tpee.BooleanConstant" typeId="tpee.1068580123137" id="3764438981860239341" nodeInfo="nn">
                  <property name="value" nameId="tpee.1068580123138" value="false" />
                </node>
              </node>
            </node>
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="3764438981860231123" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068581517676" type="tpee.BooleanConstant" typeId="tpee.1068580123137" id="3764438981860231147" nodeInfo="nn">
            <property name="value" nameId="tpee.1068580123138" value="true" />
          </node>
        </node>
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tpee.BooleanType" typeId="tpee.1070534644030" id="3764438981860231090" nodeInfo="in" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3764438981860231029" nodeInfo="nn" />
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="1125784125117976017" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="module" />
        <node role="type" roleId="tpee.5680397130376446158" type="tp25.SNodeType" typeId="tp25.1138055754698" id="1125784125117976016" nodeInfo="in">
          <link role="concept" roleId="tp25.1138405853777" targetNodeId="x27k.6116558314501417921" resolveInfo="ExternalModule" />
        </node>
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="1125784125117977524" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="filename" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="1125784125117979017" nodeInfo="in" />
      </node>
    </node>
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="3764438981860208469" nodeInfo="nn" />
  </root>
  <root type="tpee.ClassConcept" typeId="tpee.1068390468198" id="5652833161528197691" nodeInfo="ig">
    <property name="name" nameId="tpck.1169194664001" value="Typer" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticFieldDeclaration" typeId="tpee.1070462154015" id="7182798170353890102" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="types" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="7182798170353890104" nodeInfo="nn" />
      <node role="type" roleId="tpee.5680397130376446158" type="tp2q.MapType" typeId="tp2q.1197683403723" id="7182798170354305526" nodeInfo="in">
        <node role="keyType" roleId="tp2q.1197683466920" type="tpee.StringType" typeId="tpee.1225271177708" id="7182798170354305958" nodeInfo="in" />
        <node role="valueType" roleId="tp2q.1197683475734" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7182798170354305961" nodeInfo="in">
          <link role="concept" roleId="tp25.1138405853777" targetNodeId="mj1l.8860443239512128054" resolveInfo="Type" />
        </node>
      </node>
      <node role="initializer" roleId="tpee.1068431790190" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7182798170354313712" nodeInfo="nn">
        <node role="creator" roleId="tpee.1145553007750" type="tp2q.HashMapCreator" typeId="tp2q.1197686869805" id="7182798170354324844" nodeInfo="nn">
          <node role="keyType" roleId="tp2q.1197687026896" type="tpee.StringType" typeId="tpee.1225271177708" id="7182798170354326208" nodeInfo="in" />
          <node role="valueType" roleId="tp2q.1197687035757" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7182798170354326762" nodeInfo="in">
            <link role="concept" roleId="tp25.1138405853777" targetNodeId="mj1l.8860443239512128054" resolveInfo="Type" />
          </node>
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="5652833161528287428" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="buildType" />
      <property name="isSynchronized" nameId="tpee.4276006055363816570" value="false" />
      <property name="isFinal" nameId="tpee.1181808852946" value="false" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="5652833161528287431" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ReturnStatement" typeId="tpee.1068581242878" id="5652833161528346387" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068581517676" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="5652833161528359411" nodeInfo="nn">
            <node role="key" roleId="tp2q.1197932525128" type="tpee.VariableReference" typeId="tpee.1068498886296" id="5652833161528360012" nodeInfo="nn">
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="5652833161528301139" resolveInfo="type" />
            </node>
            <node role="map" roleId="tp2q.1197932505799" type="tpee.StaticMethodCall" typeId="tpee.1081236700937" id="5652833161528346786" nodeInfo="nn">
              <link role="baseMethodDeclaration" roleId="tpee.1068499141037" targetNodeId="7182798170353877098" resolveInfo="getTypes" />
              <link role="classConcept" roleId="tpee.1144433194310" targetNodeId="5652833161528197691" resolveInfo="Typer" />
            </node>
          </node>
        </node>
      </node>
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="5652833161528214758" nodeInfo="nn" />
      <node role="returnType" roleId="tpee.1068580123133" type="tp25.SNodeType" typeId="tp25.1138055754698" id="5652833161528215076" nodeInfo="in">
        <link role="concept" roleId="tp25.1138405853777" targetNodeId="mj1l.8860443239512128054" resolveInfo="Type" />
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="5652833161528301139" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="type" />
        <node role="type" roleId="tpee.5680397130376446158" type="tpee.StringType" typeId="tpee.1225271177708" id="5652833161528301172" nodeInfo="in" />
      </node>
      <node role="parameter" roleId="tpee.1068580123134" type="tpee.ParameterDeclaration" typeId="tpee.1068498886292" id="5652833161528293406" nodeInfo="ir">
        <property name="name" nameId="tpck.1169194664001" value="typedefs" />
        <node role="type" roleId="tpee.5680397130376446158" type="tp2q.SequenceType" typeId="tp2q.1151689724996" id="5652833161528293404" nodeInfo="in">
          <node role="elementType" roleId="tp2q.1151689745422" type="tp25.SNodeType" typeId="tp25.1138055754698" id="5652833161528293443" nodeInfo="in">
            <link role="concept" roleId="tp25.1138405853777" targetNodeId="clbe.6116558314501347857" resolveInfo="TypeDef" />
          </node>
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.StaticMethodDeclaration" typeId="tpee.1081236700938" id="7182798170353877098" nodeInfo="igu">
      <property name="name" nameId="tpck.1169194664001" value="getTypes" />
      <node role="visibility" roleId="tpee.1178549979242" type="tpee.PrivateVisibility" typeId="tpee.1146644623116" id="7182798170355051817" nodeInfo="nn" />
      <node role="body" roleId="tpee.1068580123135" type="tpee.StatementList" typeId="tpee.1068580123136" id="7182798170353877102" nodeInfo="sn">
        <node role="statement" roleId="tpee.1068581517665" type="tpee.IfStatement" typeId="tpee.1068580123159" id="7182798170353877155" nodeInfo="nn">
          <node role="ifTrue" roleId="tpee.1068580123161" type="tpee.StatementList" typeId="tpee.1068580123136" id="7182798170353877158" nodeInfo="sn">
            <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7182798170354328040" nodeInfo="nn" />
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7182798170354435568" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="7182798170354446963" nodeInfo="nn">
                <node role="lValue" roleId="tpee.1068498886295" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="7182798170354444927" nodeInfo="nn">
                  <node role="key" roleId="tp2q.1197932525128" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7182798170354445587" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="int" />
                  </node>
                  <node role="map" roleId="tp2q.1197932505799" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="8837354623060485617" nodeInfo="nn">
                    <link role="classifier" roleId="tpee.1144433057691" targetNodeId="5652833161528197691" resolveInfo="Typer" />
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7182798170353890102" resolveInfo="types" />
                  </node>
                </node>
                <node role="rValue" roleId="tpee.1068498886297" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7182798170353942094" nodeInfo="nn">
                  <node role="creator" roleId="tpee.1145553007750" type="tp25.SNodeCreator" typeId="tp25.1180636770613" id="7182798170353943462" nodeInfo="nn">
                    <node role="createdType" roleId="tp25.1180636770616" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7182798170353943464" nodeInfo="in">
                      <link role="concept" roleId="tp25.1138405853777" targetNodeId="mj1l.8860443239512128108" resolveInfo="IntType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7182798170354452982" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="7182798170354452983" nodeInfo="nn">
                <node role="lValue" roleId="tpee.1068498886295" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="7182798170354452984" nodeInfo="nn">
                  <node role="key" roleId="tp2q.1197932525128" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7182798170354452985" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="unsigned int" />
                  </node>
                  <node role="map" roleId="tp2q.1197932505799" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="8837354623060485618" nodeInfo="nn">
                    <link role="classifier" roleId="tpee.1144433057691" targetNodeId="5652833161528197691" resolveInfo="Typer" />
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7182798170353890102" resolveInfo="types" />
                  </node>
                </node>
                <node role="rValue" roleId="tpee.1068498886297" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7182798170354452986" nodeInfo="nn">
                  <node role="creator" roleId="tpee.1145553007750" type="tp25.SNodeCreator" typeId="tp25.1180636770613" id="7182798170354452987" nodeInfo="nn">
                    <node role="createdType" roleId="tp25.1180636770616" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7182798170354452988" nodeInfo="in">
                      <link role="concept" roleId="tp25.1138405853777" targetNodeId="mj1l.8463282783691492730" resolveInfo="UnsignedIntType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7182798170354494607" nodeInfo="nn" />
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7182798170354459230" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="7182798170354459231" nodeInfo="nn">
                <node role="lValue" roleId="tpee.1068498886295" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="7182798170354459232" nodeInfo="nn">
                  <node role="key" roleId="tp2q.1197932525128" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7182798170354459233" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="char" />
                  </node>
                  <node role="map" roleId="tp2q.1197932505799" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="8837354623060485619" nodeInfo="nn">
                    <link role="classifier" roleId="tpee.1144433057691" targetNodeId="5652833161528197691" resolveInfo="Typer" />
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7182798170353890102" resolveInfo="types" />
                  </node>
                </node>
                <node role="rValue" roleId="tpee.1068498886297" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7182798170354459234" nodeInfo="nn">
                  <node role="creator" roleId="tpee.1145553007750" type="tp25.SNodeCreator" typeId="tp25.1180636770613" id="7182798170354459235" nodeInfo="nn">
                    <node role="createdType" roleId="tp25.1180636770616" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7182798170354459236" nodeInfo="in">
                      <link role="concept" roleId="tp25.1138405853777" targetNodeId="mj1l.1664480272136207708" resolveInfo="CharType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7182798170354460221" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="7182798170354460222" nodeInfo="nn">
                <node role="lValue" roleId="tpee.1068498886295" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="7182798170354460223" nodeInfo="nn">
                  <node role="key" roleId="tp2q.1197932525128" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7182798170354460224" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="unsigned char" />
                  </node>
                  <node role="map" roleId="tp2q.1197932505799" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="8837354623060485620" nodeInfo="nn">
                    <link role="classifier" roleId="tpee.1144433057691" targetNodeId="5652833161528197691" resolveInfo="Typer" />
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7182798170353890102" resolveInfo="types" />
                  </node>
                </node>
                <node role="rValue" roleId="tpee.1068498886297" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7182798170354460225" nodeInfo="nn">
                  <node role="creator" roleId="tpee.1145553007750" type="tp25.SNodeCreator" typeId="tp25.1180636770613" id="7182798170354460226" nodeInfo="nn">
                    <node role="createdType" roleId="tp25.1180636770616" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7182798170354460227" nodeInfo="in">
                      <link role="concept" roleId="tp25.1138405853777" targetNodeId="mj1l.8463282783691492716" resolveInfo="UnsignedCharType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7182798170354466614" nodeInfo="nn" />
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7182798170354468055" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="7182798170354468056" nodeInfo="nn">
                <node role="lValue" roleId="tpee.1068498886295" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="7182798170354468057" nodeInfo="nn">
                  <node role="key" roleId="tp2q.1197932525128" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7182798170354468058" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="void" />
                  </node>
                  <node role="map" roleId="tp2q.1197932505799" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="8837354623060485621" nodeInfo="nn">
                    <link role="classifier" roleId="tpee.1144433057691" targetNodeId="5652833161528197691" resolveInfo="Typer" />
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7182798170353890102" resolveInfo="types" />
                  </node>
                </node>
                <node role="rValue" roleId="tpee.1068498886297" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7182798170354468059" nodeInfo="nn">
                  <node role="creator" roleId="tpee.1145553007750" type="tp25.SNodeCreator" typeId="tp25.1180636770613" id="7182798170354468060" nodeInfo="nn">
                    <node role="createdType" roleId="tp25.1180636770616" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7182798170354468061" nodeInfo="in">
                      <link role="concept" roleId="tp25.1138405853777" targetNodeId="mj1l.7892328519581699353" resolveInfo="VoidType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7182798170354472276" nodeInfo="nn" />
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7182798170354471240" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="7182798170354471241" nodeInfo="nn">
                <node role="lValue" roleId="tpee.1068498886295" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="7182798170354471242" nodeInfo="nn">
                  <node role="key" roleId="tp2q.1197932525128" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7182798170354471243" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="int8_t" />
                  </node>
                  <node role="map" roleId="tp2q.1197932505799" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="8837354623060485622" nodeInfo="nn">
                    <link role="classifier" roleId="tpee.1144433057691" targetNodeId="5652833161528197691" resolveInfo="Typer" />
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7182798170353890102" resolveInfo="types" />
                  </node>
                </node>
                <node role="rValue" roleId="tpee.1068498886297" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7182798170354471244" nodeInfo="nn">
                  <node role="creator" roleId="tpee.1145553007750" type="tp25.SNodeCreator" typeId="tp25.1180636770613" id="7182798170354471245" nodeInfo="nn">
                    <node role="createdType" roleId="tp25.1180636770616" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7182798170354471246" nodeInfo="in">
                      <link role="concept" roleId="tp25.1138405853777" targetNodeId="mj1l.8463282783691618426" resolveInfo="Int8tType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7182798170354476859" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="7182798170354476860" nodeInfo="nn">
                <node role="lValue" roleId="tpee.1068498886295" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="7182798170354476861" nodeInfo="nn">
                  <node role="key" roleId="tp2q.1197932525128" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7182798170354476862" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="int16_t" />
                  </node>
                  <node role="map" roleId="tp2q.1197932505799" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="8837354623060485623" nodeInfo="nn">
                    <link role="classifier" roleId="tpee.1144433057691" targetNodeId="5652833161528197691" resolveInfo="Typer" />
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7182798170353890102" resolveInfo="types" />
                  </node>
                </node>
                <node role="rValue" roleId="tpee.1068498886297" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7182798170354476863" nodeInfo="nn">
                  <node role="creator" roleId="tpee.1145553007750" type="tp25.SNodeCreator" typeId="tp25.1180636770613" id="7182798170354476864" nodeInfo="nn">
                    <node role="createdType" roleId="tp25.1180636770616" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7182798170354476865" nodeInfo="in">
                      <link role="concept" roleId="tp25.1138405853777" targetNodeId="mj1l.8463282783691618435" resolveInfo="Int16tType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7182798170354478534" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="7182798170354478535" nodeInfo="nn">
                <node role="lValue" roleId="tpee.1068498886295" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="7182798170354478536" nodeInfo="nn">
                  <node role="key" roleId="tp2q.1197932525128" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7182798170354478537" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="int32_t" />
                  </node>
                  <node role="map" roleId="tp2q.1197932505799" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="8837354623060485624" nodeInfo="nn">
                    <link role="classifier" roleId="tpee.1144433057691" targetNodeId="5652833161528197691" resolveInfo="Typer" />
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7182798170353890102" resolveInfo="types" />
                  </node>
                </node>
                <node role="rValue" roleId="tpee.1068498886297" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7182798170354478538" nodeInfo="nn">
                  <node role="creator" roleId="tpee.1145553007750" type="tp25.SNodeCreator" typeId="tp25.1180636770613" id="7182798170354478539" nodeInfo="nn">
                    <node role="createdType" roleId="tp25.1180636770616" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7182798170354478540" nodeInfo="in">
                      <link role="concept" roleId="tp25.1138405853777" targetNodeId="mj1l.8463282783691618440" resolveInfo="Int32tType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7182798170354477771" nodeInfo="nn" />
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7182798170354484234" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="7182798170354484235" nodeInfo="nn">
                <node role="lValue" roleId="tpee.1068498886295" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="7182798170354484236" nodeInfo="nn">
                  <node role="key" roleId="tp2q.1197932525128" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7182798170354484237" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="short" />
                  </node>
                  <node role="map" roleId="tp2q.1197932505799" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="8837354623060485625" nodeInfo="nn">
                    <link role="classifier" roleId="tpee.1144433057691" targetNodeId="5652833161528197691" resolveInfo="Typer" />
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7182798170353890102" resolveInfo="types" />
                  </node>
                </node>
                <node role="rValue" roleId="tpee.1068498886297" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7182798170354484238" nodeInfo="nn">
                  <node role="creator" roleId="tpee.1145553007750" type="tp25.SNodeCreator" typeId="tp25.1180636770613" id="7182798170354484239" nodeInfo="nn">
                    <node role="createdType" roleId="tp25.1180636770616" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7182798170354484240" nodeInfo="in">
                      <link role="concept" roleId="tp25.1138405853777" targetNodeId="mj1l.3335993110369949928" resolveInfo="ShortType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7182798170354491953" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="7182798170354491954" nodeInfo="nn">
                <node role="lValue" roleId="tpee.1068498886295" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="7182798170354491955" nodeInfo="nn">
                  <node role="key" roleId="tp2q.1197932525128" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7182798170354491956" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="unsigned short" />
                  </node>
                  <node role="map" roleId="tp2q.1197932505799" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="8837354623060485626" nodeInfo="nn">
                    <link role="classifier" roleId="tpee.1144433057691" targetNodeId="5652833161528197691" resolveInfo="Typer" />
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7182798170353890102" resolveInfo="types" />
                  </node>
                </node>
                <node role="rValue" roleId="tpee.1068498886297" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7182798170354491957" nodeInfo="nn">
                  <node role="creator" roleId="tpee.1145553007750" type="tp25.SNodeCreator" typeId="tp25.1180636770613" id="7182798170354491958" nodeInfo="nn">
                    <node role="createdType" roleId="tp25.1180636770616" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7182798170354491959" nodeInfo="in">
                      <link role="concept" roleId="tp25.1138405853777" targetNodeId="mj1l.595416243537320771" resolveInfo="UnsignedShortType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7182798170354491964" nodeInfo="nn" />
            <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7182798170354486881" nodeInfo="nn" />
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7182798170354488458" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="7182798170354488459" nodeInfo="nn">
                <node role="lValue" roleId="tpee.1068498886295" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="7182798170354488460" nodeInfo="nn">
                  <node role="key" roleId="tp2q.1197932525128" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7182798170354488461" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="uint8_t" />
                  </node>
                  <node role="map" roleId="tp2q.1197932505799" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="8837354623060485627" nodeInfo="nn">
                    <link role="classifier" roleId="tpee.1144433057691" targetNodeId="5652833161528197691" resolveInfo="Typer" />
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7182798170353890102" resolveInfo="types" />
                  </node>
                </node>
                <node role="rValue" roleId="tpee.1068498886297" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7182798170354488462" nodeInfo="nn">
                  <node role="creator" roleId="tpee.1145553007750" type="tp25.SNodeCreator" typeId="tp25.1180636770613" id="7182798170354488463" nodeInfo="nn">
                    <node role="createdType" roleId="tp25.1180636770616" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7182798170354488464" nodeInfo="in">
                      <link role="concept" roleId="tp25.1138405853777" targetNodeId="mj1l.8463282783691618461" resolveInfo="UnsignedInt8tType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7182798170354495493" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="7182798170354495494" nodeInfo="nn">
                <node role="lValue" roleId="tpee.1068498886295" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="7182798170354495495" nodeInfo="nn">
                  <node role="key" roleId="tp2q.1197932525128" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7182798170354495496" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="uint16_t" />
                  </node>
                  <node role="map" roleId="tp2q.1197932505799" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="8837354623060485628" nodeInfo="nn">
                    <link role="classifier" roleId="tpee.1144433057691" targetNodeId="5652833161528197691" resolveInfo="Typer" />
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7182798170353890102" resolveInfo="types" />
                  </node>
                </node>
                <node role="rValue" roleId="tpee.1068498886297" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7182798170354495497" nodeInfo="nn">
                  <node role="creator" roleId="tpee.1145553007750" type="tp25.SNodeCreator" typeId="tp25.1180636770613" id="7182798170354495498" nodeInfo="nn">
                    <node role="createdType" roleId="tp25.1180636770616" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7182798170354495499" nodeInfo="in">
                      <link role="concept" roleId="tp25.1138405853777" targetNodeId="mj1l.8463282783691618466" resolveInfo="UnsignedInt16tType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7182798170354496620" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="7182798170354496621" nodeInfo="nn">
                <node role="lValue" roleId="tpee.1068498886295" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="7182798170354496622" nodeInfo="nn">
                  <node role="key" roleId="tp2q.1197932525128" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7182798170354496623" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="uint32_t" />
                  </node>
                  <node role="map" roleId="tp2q.1197932505799" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="8837354623060485629" nodeInfo="nn">
                    <link role="classifier" roleId="tpee.1144433057691" targetNodeId="5652833161528197691" resolveInfo="Typer" />
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7182798170353890102" resolveInfo="types" />
                  </node>
                </node>
                <node role="rValue" roleId="tpee.1068498886297" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7182798170354496624" nodeInfo="nn">
                  <node role="creator" roleId="tpee.1145553007750" type="tp25.SNodeCreator" typeId="tp25.1180636770613" id="7182798170354496625" nodeInfo="nn">
                    <node role="createdType" roleId="tp25.1180636770616" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7182798170354496626" nodeInfo="in">
                      <link role="concept" roleId="tp25.1138405853777" targetNodeId="mj1l.8463282783691618450" resolveInfo="UnsignedInt32tType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7182798170354507426" nodeInfo="nn" />
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7182798170354506300" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="7182798170354506301" nodeInfo="nn">
                <node role="lValue" roleId="tpee.1068498886295" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="7182798170354506302" nodeInfo="nn">
                  <node role="key" roleId="tp2q.1197932525128" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7182798170354506303" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="size_t" />
                  </node>
                  <node role="map" roleId="tp2q.1197932505799" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="8837354623060485630" nodeInfo="nn">
                    <link role="classifier" roleId="tpee.1144433057691" targetNodeId="5652833161528197691" resolveInfo="Typer" />
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7182798170353890102" resolveInfo="types" />
                  </node>
                </node>
                <node role="rValue" roleId="tpee.1068498886297" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7182798170354506304" nodeInfo="nn">
                  <node role="creator" roleId="tpee.1145553007750" type="tp25.SNodeCreator" typeId="tp25.1180636770613" id="7182798170354506305" nodeInfo="nn">
                    <node role="createdType" roleId="tp25.1180636770616" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7182798170354506306" nodeInfo="in">
                      <link role="concept" roleId="tp25.1138405853777" targetNodeId="mj1l.8863019357864392148" resolveInfo="SizeT" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7182798170354891981" nodeInfo="nn" />
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7182798170354895227" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="7182798170354895228" nodeInfo="nn">
                <node role="lValue" roleId="tpee.1068498886295" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="7182798170354895229" nodeInfo="nn">
                  <node role="key" roleId="tp2q.1197932525128" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="7182798170354895230" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="float" />
                  </node>
                  <node role="map" roleId="tp2q.1197932505799" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="8837354623060485631" nodeInfo="nn">
                    <link role="classifier" roleId="tpee.1144433057691" targetNodeId="5652833161528197691" resolveInfo="Typer" />
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7182798170353890102" resolveInfo="types" />
                  </node>
                </node>
                <node role="rValue" roleId="tpee.1068498886297" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="7182798170354895231" nodeInfo="nn">
                  <node role="creator" roleId="tpee.1145553007750" type="tp25.SNodeCreator" typeId="tp25.1180636770613" id="7182798170354895232" nodeInfo="nn">
                    <node role="createdType" roleId="tp25.1180636770616" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7182798170354895233" nodeInfo="in">
                      <link role="concept" roleId="tp25.1138405853777" targetNodeId="mj1l.4739982148980385695" resolveInfo="FloatType" />
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="2809963487653429486" nodeInfo="nn">
              <node role="expression" roleId="tpee.1068580123156" type="tpee.AssignmentExpression" typeId="tpee.1068498886294" id="2809963487653431598" nodeInfo="nn">
                <node role="rValue" roleId="tpee.1068498886297" type="tpee.GenericNewExpression" typeId="tpee.1145552977093" id="2809963487653433136" nodeInfo="nn">
                  <node role="creator" roleId="tpee.1145553007750" type="tp25.SNodeCreator" typeId="tp25.1180636770613" id="2809963487653437317" nodeInfo="nn">
                    <node role="createdType" roleId="tp25.1180636770616" type="tp25.SNodeType" typeId="tp25.1138055754698" id="2809963487653437319" nodeInfo="in">
                      <link role="concept" roleId="tp25.1138405853777" targetNodeId="mj1l.8864856114140038681" resolveInfo="DoubleType" />
                    </node>
                  </node>
                </node>
                <node role="lValue" roleId="tpee.1068498886295" type="tp2q.MapElement" typeId="tp2q.1197932370469" id="2809963487653430478" nodeInfo="nn">
                  <node role="key" roleId="tp2q.1197932525128" type="tpee.StringLiteral" typeId="tpee.1070475926800" id="2809963487653430596" nodeInfo="nn">
                    <property name="value" nameId="tpee.1070475926801" value="double" />
                  </node>
                  <node role="map" roleId="tp2q.1197932505799" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="2809963487653429485" nodeInfo="nn">
                    <link role="classifier" roleId="tpee.1144433057691" targetNodeId="5652833161528197691" resolveInfo="Typer" />
                    <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7182798170353890102" resolveInfo="types" />
                  </node>
                </node>
              </node>
            </node>
          </node>
          <node role="condition" roleId="tpee.1068580123160" type="tpee.DotExpression" typeId="tpee.1197027756228" id="7182798170353898791" nodeInfo="nn">
            <node role="operand" roleId="tpee.1197027771414" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="8837354623060485633" nodeInfo="nn">
              <link role="classifier" roleId="tpee.1144433057691" targetNodeId="5652833161528197691" resolveInfo="Typer" />
              <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7182798170353890102" resolveInfo="types" />
            </node>
            <node role="operation" roleId="tpee.1197027833540" type="tp2q.IsEmptyOperation" typeId="tp2q.1165530316231" id="7182798170353918698" nodeInfo="nn" />
          </node>
        </node>
        <node role="statement" roleId="tpee.1068581517665" type="tpee.Statement" typeId="tpee.1068580123157" id="7182798170353944707" nodeInfo="nn" />
        <node role="statement" roleId="tpee.1068581517665" type="tpee.ExpressionStatement" typeId="tpee.1068580123155" id="7182798170353945054" nodeInfo="nn">
          <node role="expression" roleId="tpee.1068580123156" type="tpee.StaticFieldReference" typeId="tpee.1070533707846" id="8837354623060485634" nodeInfo="nn">
            <link role="classifier" roleId="tpee.1144433057691" targetNodeId="5652833161528197691" resolveInfo="Typer" />
            <link role="variableDeclaration" roleId="tpee.1068581517664" targetNodeId="7182798170353890102" resolveInfo="types" />
          </node>
        </node>
      </node>
      <node role="returnType" roleId="tpee.1068580123133" type="tp2q.MapType" typeId="tp2q.1197683403723" id="7182798170354537033" nodeInfo="in">
        <node role="keyType" roleId="tp2q.1197683466920" type="tpee.StringType" typeId="tpee.1225271177708" id="7182798170354537034" nodeInfo="in" />
        <node role="valueType" roleId="tp2q.1197683475734" type="tp25.SNodeType" typeId="tp25.1138055754698" id="7182798170354537035" nodeInfo="in">
          <link role="concept" roleId="tp25.1138405853777" targetNodeId="mj1l.8860443239512128054" resolveInfo="Type" />
        </node>
      </node>
    </node>
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="5652833161528200024" nodeInfo="ngu" />
    <node role="member" roleId="tpee.5375687026011219971" type="tpee.PlaceholderMember" typeId="tpee.1465982738277781862" id="5652833161528199572" nodeInfo="ngu" />
    <node role="visibility" roleId="tpee.1178549979242" type="tpee.PublicVisibility" typeId="tpee.1146644602865" id="5652833161528197692" nodeInfo="nn" />
  </root>
</model>

