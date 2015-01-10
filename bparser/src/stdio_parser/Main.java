package stdio_parser;

import java.io.*;
import java.util.ArrayList;

public class Main {
  static public void main(String argv[]) {    
    /* Start the parser */
    try {
       // Lexer l = new Lexer(new FileReader("STDIO.H"));
      //parser p = new parser(l);
      parser p = new parser(new Lexer(new FileReader("gccstdio.h")));
      p.parse();

      System.out.println("..............................................");
      p.cg.showDeclarations();


    } catch (Exception e) {
      e.printStackTrace();
    }
  }
}


