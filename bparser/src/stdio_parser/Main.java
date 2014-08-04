package stdio_parser;

import java.io.*;
   
public class Main {
  static public void main(String argv[]) {    
    /* Start the parser */
    try {
      parser p = new parser(new Lexer(new FileReader("test2.txt")));
      Object result = p.parse().value;
      //System.out.println(result);
      System.out.println("..............................................");
      p.cg.showDeclarations();
        //for (var_decl v: p.cg.getVars())
        //    System.out.println(p.cg.getVars().get(0).getID());
    } catch (Exception e) {
      e.printStackTrace();
    }
  }
}


