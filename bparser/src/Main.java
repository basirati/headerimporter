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
    } catch (Exception e) {
      e.printStackTrace();
    }
  }
}


