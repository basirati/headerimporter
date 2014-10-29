package stdio_parser;

import java.io.*;
import java.util.ArrayList;

public class Main {
  static public void main(String argv[]) {    
    /* Start the parser */
    try {
      parser p = new parser(new Lexer(new FileReader("test2.txt")));
      p.parse();
      //System.out.println(result);
      System.out.println("..............................................");
      p.cg.showDeclarations();

    } catch (Exception e) {
      e.printStackTrace();
    }
  }
}


