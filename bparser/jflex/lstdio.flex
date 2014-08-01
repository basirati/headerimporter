import java_cup.runtime.*;
      
%%

%class Lexer

%line
%column
    
%cup
   
%{   
    private Symbol symbol(int type) {
        return new Symbol(type, yyline, yycolumn);
    }
    
    private Symbol symbol(int type, Object value) {
        return new Symbol(type, yyline, yycolumn, value);
    }
%}
   

LineTerminator = \r|\n|\r\n
   
WhiteSpace     = {LineTerminator} | [ \t\f]
   
dec_int_lit = 0 | [1-9][0-9]*
   
general_identifier = [A-Za-z_][A-Za-z_0-9]*

comment = 
   
%%
      
<YYINITIAL> {
   
    ";"                { return symbol(sym.SEMI); }
   
    /* Print the token found that was declared in the class sym and then
       return it. */
    "#ifdef"                { System.out.print(" [ifdef] "); return symbol(sym.IFDEF); }
    "#ifndef"                { System.out.print(" [ifndef] "); return symbol(sym.IFNDEF); }
    "#endif"                { System.out.print(" [endif] "); return symbol(sym.ENDIF); }
    "#else"                { System.out.print(" [else] "); return symbol(sym.ELSE); }
    "extern"                { System.out.print(" [extern] "); return symbol(sym.EXTERN); }
    "typedef"                { System.out.print(" [typedef] "); return symbol(sym.TYPEDEF); }
    "struct"                { System.out.print(" [struct] "); return symbol(sym.STRUCT); }
    "{"                { System.out.print(" [{] "); return symbol(sym.LQ); }
    "}"                { System.out.print(" [}] "); return symbol(sym.RQ); }
    "("                { System.out.print(" [(] "); return symbol(sym.LPARAN); }
    ")"                { System.out.print(" [)] "); return symbol(sym.RPARAN); }

   
    /* If an integer is found print it out, return the token NUMBER
       that represents an integer and the value of the integer that is
       held in the string yytext which will get turned into an integer
       before returning */
    {dec_int_lit}      { System.out.print(yytext());
                         return symbol(sym.NUMBER, new Integer(yytext())); }
   
    /* If an identifier is found print it out, return the token ID
       that represents an identifier and the default value one that is
       given to all identifiers. */
    {general_identifier}       { System.out.print(yytext());
                         return symbol(sym.ID, new Integer(1));}
   
    /* Don't do anything if whitespace is found */
    {WhiteSpace}       { /* just skip what was found, do nothing */ }   
}


/* No token was found for the input so through an error.  Print out an
   Illegal character message with the illegal character that was found. */
[^]                    { throw new Error("Illegal character <"+yytext()+">"); }
