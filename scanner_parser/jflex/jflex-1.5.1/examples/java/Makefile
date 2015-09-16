# You need CUP v0.10j (or newer) for this makefile to work (for java12.cup)
#
# CUP classes should be included in CLASSPATH 


JAVA       = java
CPCUP      = -classpath java-cup-11a.jar
CUP        = ${JAVA} ${CPCUP} java_cup.Main -interface <
JFLEX      = jflex
JAVAC      = javac 
JAVACFLAGS = -classpath .:./java-cup-11a-runtime.jar

# --------------------------------------------------

all: test

test: lexer-output.txt
	@(diff lexer-output.txt lexer-output.good && echo "Test OK!") || echo "Test failed!"

lexer-output.txt: compile
	$(JAVA) -cp .:./java-cup-11a-runtime.jar TestLexer TestLexer.java > lexer-output.txt

testparser: compile
	$(JAVA) -cp .:./java-cup-11a-runtime.jar JavaParser TestLexer.java

compile: scanner parser unicode
	$(JAVAC) $(JAVACFLAGS) JavaParser.java TestLexer.java

parser: parser.java 

parser.java: java12.cup
	$(CUP) java12.cup

scanner: Scanner.java

Scanner.java: java.flex
	$(JFLEX) java.flex

unicode: UnicodeEscapes.java

UnicodeEscapes.java: unicode.flex
	$(JFLEX) unicode.flex

clean:
	rm -f *.class
	rm -f *~
	rm -f Scanner.java
	rm -f parser.java
	rm -f sym.java
	rm -f UnicodeEscapes.java
	rm -f lexer-output.txt
