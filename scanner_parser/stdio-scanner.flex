  
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

%xstates MULTI_COMMENT, MONO_COMMENT, STRING

SPACE = [ \t\r\f]
NEWLINE = \n | \u2028 | \u2029 | \u000B | \u000C | \u0085
IGNORENEWLINE = (\\){NEWLINE}
SPACING = {SPACE} | {NEWLINE}
NUM = [0-9]+
ALPHA = [a-zA-Z_]
ALPHA_NUM = {ALPHA}|[0-9]|["_"]
IDENT = {ALPHA}({ALPHA_NUM})*


DEFINE = (#)({SPACE})*(define){SPACE}*(({IGNORENEWLINE} | .)*)
IF = (#)({SPACE})*(if){SPACE}*(({IGNORENEWLINE} | .)*)
IFDEF = (#)({SPACE})*(ifdef){SPACE}*(({IGNORENEWLINE} | .)*)
IFNDEF = (#)({SPACE})*(ifndef){SPACE}*(({IGNORENEWLINE} | .)*)
UNDEF = (#)({SPACE})*(undef){SPACE}*(({IGNORENEWLINE} | .)*)
INCLUDE = (#)({SPACE})*(include){SPACE}*(({IGNORENEWLINE} | .)*)

PRAGMA = (#)({SPACE})*(pragma){SPACE}*(({IGNORENEWLINE} | .)*)

COMP_IGNOR = (extern){SPACE}{IDENT}({SPACE})*(\*)*({SPACE})*(__)~(;)
COMP_IGNOR2 = (__attribute__)~(;)
COMP_IGNOR3 = __THROW~(;) | __nonnull~(;)


COMP_WORD = (__){IDENT}|(__){IDENT}(["("]){IDENT}([")"])

DOTS = [,]({SPACE})*([.]{3})


   
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
   
	{DOTS}		{ /*DO NOTHING*/ }


	"+="		{ return symbol(sym.PLUSEQ); }
	"-="		{ return symbol(sym.MINUSEQ); }
	"*="		{ return symbol(sym.STAREQ); }
	"/="		{ return symbol(sym.DIVIDEQ); }
	"%="		{ return symbol(sym.PERCENTEQ); }
	"<<="		{ return symbol(sym.LLEQ); }
	">>="		{ return symbol(sym.GGEQ); }
	"&="		{ return symbol(sym.AMPERSANDEQ); }
	"^="		{ return symbol(sym.HATEQ); }
	"|="		{ return symbol(sym.BAREQ); }

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
	"{"		{ return symbol(sym.LQ); }
	"}"		{ return symbol(sym.RQ); }
	","		{ return symbol(sym.COMMA); }
	"&"		{ return symbol(sym.AMPERSAND); }
	"|"		{ return symbol(sym.BAR); }
	":"		{ return symbol(sym.COLON); }
	"#"		{ return symbol(sym.SHARP); }



	{DEFINE}	{ return symbol(sym.DEFINE, new String(yytext())); }
	{IF}		{ return symbol(sym.IF, new String(yytext())); }
	{IFDEF}		{ return symbol(sym.IFDEF, new String(yytext())); }
	{IFNDEF}	{ return symbol(sym.IFNDEF, new String(yytext())); }
	{PRAGMA}	{ /*DO NOTHING*/ }
	"else"		{ return symbol(sym.ELSE); }
	"endif"		{ return symbol(sym.ENDIF); }
	{UNDEF}		{/*DO NOTHING*/}
	{COMP_WORD}	{return symbol(sym.COMPWORD, new String(yytext()));}
	{COMP_IGNOR}	{/*DO NOTHING*/}
	{COMP_IGNOR2}	{return symbol(sym.SEMI);}
	{COMP_IGNOR3}	{return symbol(sym.SEMI);}

	{INCLUDE}	{ return symbol(sym.INCLUDE); }
	"extern"	{ return symbol(sym.EXTERN); }
	"typedef"	{ return symbol(sym.TYPEDEF); }
	"struct"	{ return symbol(sym.STRUCT); }
	"union"		{ return symbol(sym.UNION); }
	"enum"		{ return symbol(sym.ENUMM); }
	"["		{ return symbol(sym.LBRACKET); }
	"]"		{ return symbol(sym.RBRACKET); }
	
	"signed"	{ return symbol(sym.UN_SIGNED, new String(yytext())); }
	"unsigned"	{ return symbol(sym.UN_SIGNED, new String(yytext())); }
	"const"		{ /*DO NOTHING*/ }
	
	"char"		{ return symbol(sym.CHAR); }
	"short"		{ return symbol(sym.SHORT); }
	"short int"	{ return symbol(sym.SINT); }
	"int"		{ return symbol(sym.INT); }
	"long int"	{ return symbol(sym.LINT); }
	"long long"	{ return symbol(sym.LLONG); }
	"long long int"	{ return symbol(sym.LLINT); }
	"long"		{ return symbol(sym.LONG); }
	"float"		{ return symbol(sym.FLOAT); }
	"double"	{ return symbol(sym.DOUBLE); }
	"long double"	{ return symbol(sym.LDOUBLE); }

	

	 \"		{tmpString = new StringBuilder();
			tmpString.append('"');
			yybegin(STRING);} 

	{NUM}		{ return symbol(sym.NUMBER, new Integer(yytext())); }
	
	{IDENT}		{ return symbol(sym.ID, new String(yytext()));}

	{SPACING}       { /* skipping */ }   
}


[^]                    { }
