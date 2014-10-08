  
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

    public StringBuilder tmpString;
%}

NUM = [0-9]+
ALPHA = [a-zA-Z_]
ALPHA_NUM = {ALPHA}|[0-9]|["_"]
IDENT = {ALPHA}({ALPHA_NUM})*



NEWLINE = \n | \u2028 | \u2029 | \u000B | \u000C | \u0085
SPACING = [ \t\r\f] | {NEWLINE}

%xstates MULTI_COMMENT, MONO_COMMENT, STRING, SHARPY

   
%%

<MONO_COMMENT> {
  {NEWLINE}         {yybegin(YYINITIAL);}
  .                 {}
}


<MULTI_COMMENT>{ 
  \*\/              {yybegin(YYINITIAL);}
  . | {NEWLINE}     {}
}

   
<STRING> {
  \"                {yybegin(YYINITIAL);
                     tmpString.append('"');}
  . | \\\"          {tmpString.append(yytext());}
}


<YYINITIAL> {
   
    
	\/\/		{ yybegin(MONO_COMMENT); }
	\/\*		{ yybegin(MULTI_COMMENT); }
	
	
	";"		{ return symbol(sym.SEMI); }
   
	"..."		{ return symbol(sym.DOTS); }


	"||"		{ return symbol(sym.OR); }
	"&&"		{ return symbol(sym.AND); }
	"!="		{ return symbol(sym.NOTEQUAL); }
	"=="		{ return symbol(sym.EQUAL); }	
	"<="		{ return symbol(sym.LE); }	
	">="		{ return symbol(sym.GE); }	
	">>"		{ return symbol(sym.GG); }
	"<<"		{ return symbol(sym.LL); }	
	"--"		{ return symbol(sym.MM); }
	"++"		{ return symbol(sym.PP); }
	"->"		{ return symbol(sym.PREF); }
	"="		{ return symbol(sym.ASSIGN); }
	"~"		{ return symbol(sym.TILDE); }	
	"!"		{ return symbol(sym.BARDOT); }
	"?"		{ return symbol(sym.QUESTIONMARK); }	
	">"		{ return symbol(sym.GREATER); }
	"<"		{ return symbol(sym.LESS); }
	"^"		{ return symbol(sym.HAT); }
	"."		{ return symbol(sym.DOT); }
	"+"		{ return symbol(sym.PLUS); }
	"-"		{ return symbol(sym.MINUS); }
	"/"		{ return symbol(sym.DIVIDE); }
	"%"		{ return symbol(sym.PERCENT); }
	"*"		{ return symbol(sym.STAR); }
	"("		{ return symbol(sym.LPAREN); }
	")"		{ return symbol(sym.RPAREN); }
	","		{ return symbol(sym.COMMA); }
	"&"		{ return symbol(sym.AMPERSAND); }
	"|"		{ return symbol(sym.BAR); }
	":"		{ return symbol(sym.COLON); }



	"#define"	{ return symbol(sym.DEFINE); }
	
	"extern"	{ return symbol(sym.EXTERN); }
	"typedef"	{ return symbol(sym.TYPEDEF); }
	"struct"	{ return symbol(sym.STRUCT); }
	"["		{ return symbol(sym.LBRACKET); }
	"]"		{ return symbol(sym.RBRACKET); }
	
	"signed"	{ return symbol(sym.UN_SIGNED, new String(yytext())); }
	"unsigned"	{ return symbol(sym.UN_SIGNED, new String(yytext())); }
	"const"		{ return symbol(sym.CONST); }
	"long"		{ return symbol(sym.LONG); }
	"short"		{ return symbol(sym.SHORT); }
	

	 \"		{tmpString = new StringBuilder();
			tmpString.append('"');
			yybegin(STRING);} 

	{NUM}		{ return symbol(sym.NUMBER, new Integer(yytext())); }
	
	{IDENT}		{ return symbol(sym.ID, new String(yytext()));}

	{SPACING}       { /* just skip what was found, do nothing */ }   
}


[^]                    { }
