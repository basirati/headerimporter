package stdio_parser;

import java.io.*;
import java.util.ArrayList;

public class Main {
  static public void main(String argv[]) {
      String file = "header.h";
      String normalized_file = "temp.h";

      CodeGenerator cg = new CodeGenerator();
      cg.removeCPP(file, normalized_file);
      try {

          parser p = new parser(new Lexer(new FileReader(normalized_file)));
          p.parse();
          System.out.println("...................FINISH...........................");
          p.cg.showDeclarations();
      } catch (Exception e)
      {
          e.printStackTrace();
      }
  }


}


