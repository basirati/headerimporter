package stdio_parser;/* The following code was generated by JFlex 1.5.1 */

  
import java_cup.runtime.*;
      

/**
 * This class is a scanner generated by 
 * <a href="http://www.jflex.de/">JFlex</a> 1.5.1
 * from the specification file <tt>stdio-scanner.flex</tt>
 */
public class Lexer implements Scanner {

  /** This character denotes the end of file */
  public static final int YYEOF = -1;

  /** initial size of the lookahead buffer */
  private static final int ZZ_BUFFERSIZE = 16384;

  /** lexical states */
  public static final int YYINITIAL = 0;
  public static final int MULTI_COMMENT = 2;
  public static final int MONO_COMMENT = 4;
  public static final int STRING = 6;

  /**
   * ZZ_LEXSTATE[l] is the state in the DFA for the lexical state l
   * ZZ_LEXSTATE[l+1] is the state in the DFA for the lexical state l
   *                  at the beginning of a line
   * l is of the form l = 2*k, k a non negative integer
   */
  private static final int ZZ_LEXSTATE[] = { 
     0,  0,  1,  1,  2,  2,  3, 3
  };

  /** 
   * Translates characters to character classes
   */
  private static final String ZZ_CMAP_PACKED = 
    "\11\0\1\4\1\3\1\3\1\3\1\5\22\0\1\63\1\26\1\10"+
    "\1\12\1\0\1\37\1\25\1\0\1\40\1\41\1\6\1\33\1\44"+
    "\1\32\1\23\1\7\12\1\1\45\1\22\1\30\1\27\1\31\1\35"+
    "\1\0\32\2\1\55\1\11\1\56\1\36\1\2\1\0\1\62\1\64"+
    "\1\54\1\15\1\16\1\14\1\57\1\61\1\13\2\2\1\20\1\2"+
    "\1\17\1\60\1\52\1\2\1\50\1\21\1\47\1\53\2\2\1\46"+
    "\1\51\1\2\1\42\1\24\1\43\1\34\6\0\1\3\u1fa2\0\1\3"+
    "\1\3\udfd6\0";

  /** 
   * Translates characters to character classes
   */
  private static final char [] ZZ_CMAP = zzUnpackCMap(ZZ_CMAP_PACKED);

  /** 
   * Translates DFA states to action switch labels.
   */
  private static final int [] ZZ_ACTION = zzUnpackAction();

  private static final String ZZ_ACTION_PACKED_0 =
    "\4\0\1\1\1\2\1\3\1\4\1\5\1\6\1\7"+
    "\1\1\6\3\1\10\1\11\1\12\1\13\1\14\1\15"+
    "\1\16\1\17\1\20\1\21\1\22\1\23\1\24\1\25"+
    "\1\26\1\27\1\30\1\31\1\32\1\33\3\3\1\34"+
    "\1\35\1\1\1\36\1\37\1\40\1\37\1\41\1\42"+
    "\3\0\10\3\1\0\1\43\1\44\1\45\1\46\1\47"+
    "\1\50\1\51\1\52\1\53\1\54\1\55\4\3\4\0"+
    "\1\56\7\3\1\57\4\3\5\0\3\3\1\60\5\3"+
    "\1\61\2\0\1\62\2\3\1\0\2\3\1\63\1\3"+
    "\1\64\1\0\1\65\1\66\3\0\1\67\1\70\1\0"+
    "\1\3\1\71\4\0\1\72\1\73\4\0\1\74\1\75"+
    "\2\0\1\76\2\0\1\77";

  private static int [] zzUnpackAction() {
    int [] result = new int[149];
    int offset = 0;
    offset = zzUnpackAction(ZZ_ACTION_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackAction(String packed, int offset, int [] result) {
    int i = 0;       /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int count = packed.charAt(i++);
      int value = packed.charAt(i++);
      do result[j++] = value; while (--count > 0);
    }
    return j;
  }


  /** 
   * Translates a state to a row index in the transition table
   */
  private static final int [] ZZ_ROWMAP = zzUnpackRowMap();

  private static final String ZZ_ROWMAP_PACKED_0 =
    "\0\0\0\65\0\152\0\237\0\324\0\u0109\0\u013e\0\324"+
    "\0\324\0\u0173\0\324\0\u01a8\0\u01dd\0\u0212\0\u0247\0\u027c"+
    "\0\u02b1\0\u02e6\0\324\0\u031b\0\u0350\0\u0385\0\u03ba\0\u03ef"+
    "\0\u0424\0\u0459\0\u048e\0\u04c3\0\324\0\324\0\324\0\324"+
    "\0\324\0\324\0\324\0\324\0\324\0\324\0\u04f8\0\u052d"+
    "\0\u0562\0\324\0\324\0\u0597\0\324\0\324\0\324\0\u05cc"+
    "\0\324\0\324\0\u0601\0\u0636\0\u066b\0\u06a0\0\u06d5\0\u070a"+
    "\0\u073f\0\u0774\0\u07a9\0\u07de\0\u0813\0\u0848\0\324\0\324"+
    "\0\324\0\324\0\324\0\324\0\324\0\324\0\324\0\324"+
    "\0\324\0\u087d\0\u08b2\0\u08e7\0\u091c\0\u0951\0\u0986\0\u09bb"+
    "\0\u09f0\0\u013e\0\u0a25\0\u0a5a\0\u0a8f\0\u0ac4\0\u0af9\0\u0b2e"+
    "\0\u0b63\0\324\0\u0b98\0\u0bcd\0\u0c02\0\u0c37\0\u0c6c\0\u0ca1"+
    "\0\u0cd6\0\u0d0b\0\u0d40\0\u0d75\0\u0daa\0\u0ddf\0\u0e14\0\u0e49"+
    "\0\u0e7e\0\u0eb3\0\u0ee8\0\u0f1d\0\u013e\0\u0f52\0\u0f87\0\u013e"+
    "\0\u0fbc\0\u0ff1\0\u1026\0\u105b\0\u1090\0\u10c5\0\u10fa\0\u013e"+
    "\0\u112f\0\u013e\0\u013e\0\u1164\0\u1199\0\u11ce\0\u013e\0\u013e"+
    "\0\u1203\0\u1238\0\324\0\u126d\0\u12a2\0\u12d7\0\u130c\0\u013e"+
    "\0\324\0\u1341\0\u1376\0\u13ab\0\u13e0\0\u1415\0\324\0\u144a"+
    "\0\u147f\0\324\0\u14b4\0\u14e9\0\324";

  private static int [] zzUnpackRowMap() {
    int [] result = new int[149];
    int offset = 0;
    offset = zzUnpackRowMap(ZZ_ROWMAP_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackRowMap(String packed, int offset, int [] result) {
    int i = 0;  /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int high = packed.charAt(i++) << 16;
      result[j++] = high | packed.charAt(i++);
    }
    return j;
  }

  /** 
   * The transition table of the DFA
   */
  private static final int [] ZZ_TRANS = zzUnpackTrans();

  private static final String ZZ_TRANS_PACKED_0 =
    "\1\5\1\6\1\7\3\10\1\11\1\12\1\13\1\5"+
    "\1\14\1\15\1\16\1\17\1\20\1\7\1\21\1\22"+
    "\1\23\1\24\1\25\1\26\1\27\1\30\1\31\1\32"+
    "\1\33\1\34\1\35\1\36\1\37\1\40\1\41\1\42"+
    "\1\43\1\44\1\45\1\46\1\7\1\47\3\7\1\50"+
    "\1\51\1\52\1\53\4\7\1\10\1\7\5\5\1\0"+
    "\1\54\61\5\1\55\1\5\1\0\57\5\3\56\1\0"+
    "\1\56\1\0\2\56\1\57\1\60\53\56\66\0\1\6"+
    "\64\0\2\7\10\0\7\7\24\0\7\7\2\0\4\7"+
    "\1\0\1\7\6\0\1\61\1\62\70\0\1\63\1\0"+
    "\1\64\1\65\47\0\2\7\10\0\4\7\1\66\2\7"+
    "\24\0\7\7\2\0\4\7\1\0\1\7\1\0\2\7"+
    "\10\0\5\7\1\67\1\7\24\0\7\7\2\0\4\7"+
    "\1\0\1\7\1\0\2\7\10\0\7\7\24\0\7\7"+
    "\2\0\1\7\1\70\2\7\1\0\1\7\1\0\2\7"+
    "\10\0\7\7\24\0\1\71\6\7\2\0\4\7\1\0"+
    "\1\7\1\0\2\7\10\0\7\7\24\0\7\7\2\0"+
    "\1\7\1\72\2\7\1\0\1\7\1\0\2\7\10\0"+
    "\1\73\6\7\24\0\1\7\1\74\5\7\2\0\2\7"+
    "\1\75\1\7\1\0\1\7\23\0\1\76\65\0\1\77"+
    "\65\0\1\100\66\0\1\101\64\0\1\102\64\0\1\103"+
    "\1\104\63\0\1\105\1\0\1\106\64\0\1\107\1\110"+
    "\65\0\1\111\32\0\2\7\10\0\7\7\24\0\3\7"+
    "\1\112\3\7\2\0\4\7\1\0\1\7\1\0\2\7"+
    "\10\0\4\7\1\113\2\7\24\0\7\7\2\0\4\7"+
    "\1\0\1\7\1\0\2\7\10\0\7\7\24\0\7\7"+
    "\2\0\1\7\1\114\1\115\1\7\1\0\1\7\7\0"+
    "\1\55\65\0\1\56\70\0\1\116\66\0\1\117\65\0"+
    "\1\120\1\121\45\0\2\7\10\0\7\7\24\0\1\7"+
    "\1\122\5\7\2\0\4\7\1\0\1\7\1\0\2\7"+
    "\10\0\7\7\24\0\7\7\2\0\1\7\1\123\2\7"+
    "\1\0\1\7\1\0\2\7\10\0\7\7\24\0\5\7"+
    "\1\124\1\7\2\0\4\7\1\0\1\7\1\0\2\7"+
    "\10\0\7\7\24\0\1\7\1\125\5\7\2\0\4\7"+
    "\1\0\1\7\1\0\2\7\10\0\4\7\1\126\2\7"+
    "\24\0\7\7\2\0\4\7\1\0\1\7\1\0\2\7"+
    "\10\0\7\7\24\0\7\7\2\0\1\127\3\7\1\0"+
    "\1\7\1\0\2\7\10\0\7\7\24\0\2\7\1\130"+
    "\4\7\2\0\4\7\1\0\1\7\1\0\2\7\10\0"+
    "\7\7\24\0\7\7\2\0\1\7\1\131\2\7\1\0"+
    "\1\7\23\0\1\132\42\0\2\7\10\0\7\7\24\0"+
    "\4\7\1\133\2\7\2\0\4\7\1\0\1\7\1\0"+
    "\2\7\10\0\6\7\1\134\24\0\7\7\2\0\4\7"+
    "\1\0\1\7\1\0\2\7\10\0\4\7\1\135\2\7"+
    "\24\0\7\7\2\0\4\7\1\0\1\7\1\0\2\7"+
    "\10\0\7\7\24\0\7\7\2\0\3\7\1\136\1\0"+
    "\1\7\15\0\1\137\1\0\1\140\61\0\1\141\65\0"+
    "\1\142\70\0\1\143\44\0\2\7\10\0\7\7\24\0"+
    "\7\7\2\0\3\7\1\144\1\0\1\7\1\0\2\7"+
    "\10\0\7\7\24\0\7\7\2\0\4\7\1\0\1\145"+
    "\1\0\2\7\10\0\3\7\1\146\3\7\24\0\7\7"+
    "\2\0\4\7\1\0\1\7\1\0\2\7\10\0\7\7"+
    "\24\0\7\7\2\0\1\147\3\7\1\0\1\7\1\0"+
    "\2\7\10\0\4\7\1\150\2\7\24\0\7\7\2\0"+
    "\4\7\1\0\1\7\1\0\2\7\10\0\7\7\24\0"+
    "\5\7\1\151\1\7\2\0\4\7\1\0\1\7\1\0"+
    "\2\7\10\0\7\7\24\0\2\7\1\152\4\7\2\0"+
    "\4\7\1\0\1\7\1\0\2\7\10\0\3\7\1\153"+
    "\3\7\24\0\7\7\2\0\4\7\1\0\1\7\1\0"+
    "\2\7\10\0\1\73\6\7\24\0\7\7\2\0\4\7"+
    "\1\0\1\7\1\0\2\7\10\0\6\7\1\154\24\0"+
    "\7\7\2\0\4\7\1\0\1\7\1\0\2\7\10\0"+
    "\7\7\24\0\2\7\1\155\4\7\2\0\4\7\1\0"+
    "\1\7\16\0\1\156\63\0\1\137\62\0\1\157\64\0"+
    "\1\156\67\0\1\62\47\0\2\7\10\0\7\7\24\0"+
    "\1\7\1\160\5\7\2\0\4\7\1\0\1\7\1\0"+
    "\2\7\10\0\5\7\1\161\1\7\24\0\7\7\2\0"+
    "\4\7\1\0\1\7\1\0\2\7\10\0\7\7\24\0"+
    "\2\7\1\162\4\7\2\0\4\7\1\0\1\7\1\0"+
    "\2\7\10\0\7\7\24\0\7\7\2\0\4\7\1\163"+
    "\1\7\1\0\2\7\10\0\3\7\1\164\3\7\24\0"+
    "\7\7\2\0\4\7\1\0\1\7\1\0\2\7\10\0"+
    "\7\7\24\0\6\7\1\165\2\0\4\7\1\0\1\7"+
    "\1\0\2\7\10\0\7\7\24\0\1\7\1\166\5\7"+
    "\2\0\4\7\1\0\1\7\1\0\2\7\10\0\2\7"+
    "\1\167\4\7\24\0\7\7\2\0\4\7\1\0\1\7"+
    "\1\0\2\7\10\0\7\7\24\0\1\7\1\170\5\7"+
    "\2\0\4\7\1\0\1\7\14\0\1\62\67\0\1\171"+
    "\46\0\2\7\10\0\3\7\1\172\3\7\24\0\7\7"+
    "\2\0\4\7\1\0\1\7\1\0\2\7\10\0\4\7"+
    "\1\173\2\7\24\0\7\7\2\0\4\7\1\0\1\7"+
    "\13\0\1\174\1\0\1\175\2\0\1\176\45\0\2\7"+
    "\10\0\2\7\1\177\4\7\24\0\7\7\2\0\4\7"+
    "\1\0\1\7\1\0\2\7\10\0\7\7\24\0\1\7"+
    "\1\200\5\7\2\0\4\7\1\0\1\7\1\0\2\7"+
    "\10\0\7\7\24\0\7\7\2\0\4\7\1\201\1\7"+
    "\1\0\2\7\10\0\3\7\1\202\3\7\24\0\7\7"+
    "\2\0\4\7\1\0\1\7\16\0\1\203\65\0\1\204"+
    "\125\0\1\205\64\0\1\206\17\0\1\207\52\0\2\7"+
    "\10\0\1\7\1\210\5\7\24\0\7\7\2\0\4\7"+
    "\1\0\1\7\47\0\1\211\70\0\1\212\30\0\1\213"+
    "\64\0\1\214\131\0\1\215\57\0\1\216\54\0\1\217"+
    "\35\0\1\220\127\0\1\221\17\0\1\222\61\0\1\223"+
    "\70\0\1\224\114\0\1\225\15\0";

  private static int [] zzUnpackTrans() {
    int [] result = new int[5406];
    int offset = 0;
    offset = zzUnpackTrans(ZZ_TRANS_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackTrans(String packed, int offset, int [] result) {
    int i = 0;       /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int count = packed.charAt(i++);
      int value = packed.charAt(i++);
      value--;
      do result[j++] = value; while (--count > 0);
    }
    return j;
  }


  /* error codes */
  private static final int ZZ_UNKNOWN_ERROR = 0;
  private static final int ZZ_NO_MATCH = 1;
  private static final int ZZ_PUSHBACK_2BIG = 2;

  /* error messages for the codes above */
  private static final String ZZ_ERROR_MSG[] = {
    "Unkown internal scanner error",
    "Error: could not match input",
    "Error: pushback value was too large"
  };

  /**
   * ZZ_ATTRIBUTE[aState] contains the attributes of state <code>aState</code>
   */
  private static final int [] ZZ_ATTRIBUTE = zzUnpackAttribute();

  private static final String ZZ_ATTRIBUTE_PACKED_0 =
    "\4\0\1\11\2\1\2\11\1\1\1\11\7\1\1\11"+
    "\11\1\12\11\3\1\2\11\1\1\3\11\1\1\2\11"+
    "\3\0\10\1\1\0\13\11\4\1\4\0\10\1\1\11"+
    "\4\1\5\0\12\1\2\0\3\1\1\0\5\1\1\0"+
    "\2\1\3\0\2\1\1\0\1\1\1\11\4\0\1\1"+
    "\1\11\4\0\1\1\1\11\2\0\1\11\2\0\1\11";

  private static int [] zzUnpackAttribute() {
    int [] result = new int[149];
    int offset = 0;
    offset = zzUnpackAttribute(ZZ_ATTRIBUTE_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackAttribute(String packed, int offset, int [] result) {
    int i = 0;       /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int count = packed.charAt(i++);
      int value = packed.charAt(i++);
      do result[j++] = value; while (--count > 0);
    }
    return j;
  }

  /** the input device */
  private java.io.Reader zzReader;

  /** the current state of the DFA */
  private int zzState;

  /** the current lexical state */
  private int zzLexicalState = YYINITIAL;

  /** this buffer contains the current text to be matched and is
      the source of the yytext() string */
  private char zzBuffer[] = new char[ZZ_BUFFERSIZE];

  /** the textposition at the last accepting state */
  private int zzMarkedPos;

  /** the current text position in the buffer */
  private int zzCurrentPos;

  /** startRead marks the beginning of the yytext() string in the buffer */
  private int zzStartRead;

  /** endRead marks the last character in the buffer, that has been read
      from input */
  private int zzEndRead;

  /** number of newlines encountered up to the start of the matched text */
  private int yyline;

  /** the number of characters up to the start of the matched text */
  private int yychar;

  /**
   * the number of characters from the last newline up to the start of the 
   * matched text
   */
  private int yycolumn;

  /** 
   * zzAtBOL == true <=> the scanner is currently at the beginning of a line
   */
  private boolean zzAtBOL = true;

  /** zzAtEOF == true <=> the scanner is at the EOF */
  private boolean zzAtEOF;

  /** denotes if the user-EOF-code has already been executed */
  private boolean zzEOFDone;

  /* user code: */

    private Symbol symbol(int type) {
        return new Symbol(type, yyline, yycolumn);
    }
    
    private Symbol symbol(int type, Object value) {
        return new Symbol(type, yyline, yycolumn, value);
    }

    public StringBuilder tmpString;


  /**
   * Creates a new scanner
   * There is also a java.io.InputStream version of this constructor.
   *
   * @param   in  the java.io.Reader to read input from.
   */
  public Lexer(java.io.Reader in) {
    this.zzReader = in;
  }

  /**
   * Creates a new scanner.
   * There is also java.io.Reader version of this constructor.
   *
   * @param   in  the java.io.Inputstream to read input from.
   */
  public Lexer(java.io.InputStream in) {
    this(new java.io.InputStreamReader
             (in, java.nio.charset.Charset.forName("UTF-8")));
  }

  /** 
   * Unpacks the compressed character translation table.
   *
   * @param packed   the packed character translation table
   * @return         the unpacked character translation table
   */
  private static char [] zzUnpackCMap(String packed) {
    char [] map = new char[0x10000];
    int i = 0;  /* index in packed string  */
    int j = 0;  /* index in unpacked array */
    while (i < 144) {
      int  count = packed.charAt(i++);
      char value = packed.charAt(i++);
      do map[j++] = value; while (--count > 0);
    }
    return map;
  }


  /**
   * Refills the input buffer.
   *
   * @return      <code>false</code>, iff there was new input.
   * 
   * @exception   java.io.IOException  if any I/O-Error occurs
   */
  private boolean zzRefill() throws java.io.IOException {

    /* first: make room (if you can) */
    if (zzStartRead > 0) {
      System.arraycopy(zzBuffer, zzStartRead,
                       zzBuffer, 0,
                       zzEndRead-zzStartRead);

      /* translate stored positions */
      zzEndRead-= zzStartRead;
      zzCurrentPos-= zzStartRead;
      zzMarkedPos-= zzStartRead;
      zzStartRead = 0;
    }

    /* is the buffer big enough? */
    if (zzCurrentPos >= zzBuffer.length) {
      /* if not: blow it up */
      char newBuffer[] = new char[zzCurrentPos*2];
      System.arraycopy(zzBuffer, 0, newBuffer, 0, zzBuffer.length);
      zzBuffer = newBuffer;
    }

    /* finally: fill the buffer with new input */
    int numRead = zzReader.read(zzBuffer, zzEndRead,
                                            zzBuffer.length-zzEndRead);

    if (numRead > 0) {
      zzEndRead+= numRead;
      return false;
    }
    // unlikely but not impossible: read 0 characters, but not at end of stream    
    if (numRead == 0) {
      int c = zzReader.read();
      if (c == -1) {
        return true;
      } else {
        zzBuffer[zzEndRead++] = (char) c;
        return false;
      }     
    }

    // numRead < 0
    return true;
  }

    
  /**
   * Closes the input stream.
   */
  public final void yyclose() throws java.io.IOException {
    zzAtEOF = true;            /* indicate end of file */
    zzEndRead = zzStartRead;  /* invalidate buffer    */

    if (zzReader != null)
      zzReader.close();
  }


  /**
   * Resets the scanner to read from a new input stream.
   * Does not close the old reader.
   *
   * All internal variables are reset, the old input stream 
   * <b>cannot</b> be reused (internal buffer is discarded and lost).
   * Lexical state is set to <tt>ZZ_INITIAL</tt>.
   *
   * Internal scan buffer is resized down to its initial length, if it has grown.
   *
   * @param reader   the new input stream 
   */
  public final void yyreset(java.io.Reader reader) {
    zzReader = reader;
    zzAtBOL  = true;
    zzAtEOF  = false;
    zzEOFDone = false;
    zzEndRead = zzStartRead = 0;
    zzCurrentPos = zzMarkedPos = 0;
    yyline = yychar = yycolumn = 0;
    zzLexicalState = YYINITIAL;
    if (zzBuffer.length > ZZ_BUFFERSIZE)
      zzBuffer = new char[ZZ_BUFFERSIZE];
  }


  /**
   * Returns the current lexical state.
   */
  public final int yystate() {
    return zzLexicalState;
  }


  /**
   * Enters a new lexical state
   *
   * @param newState the new lexical state
   */
  public final void yybegin(int newState) {
    zzLexicalState = newState;
  }


  /**
   * Returns the text matched by the current regular expression.
   */
  public final String yytext() {
    return new String( zzBuffer, zzStartRead, zzMarkedPos-zzStartRead );
  }


  /**
   * Returns the character at position <tt>pos</tt> from the 
   * matched text. 
   * 
   * It is equivalent to yytext().charAt(pos), but faster
   *
   * @param pos the position of the character to fetch. 
   *            A value from 0 to yylength()-1.
   *
   * @return the character at position pos
   */
  public final char yycharat(int pos) {
    return zzBuffer[zzStartRead+pos];
  }


  /**
   * Returns the length of the matched text region.
   */
  public final int yylength() {
    return zzMarkedPos-zzStartRead;
  }


  /**
   * Reports an error that occured while scanning.
   *
   * In a wellformed scanner (no or only correct usage of 
   * yypushback(int) and a match-all fallback rule) this method 
   * will only be called with things that "Can't Possibly Happen".
   * If this method is called, something is seriously wrong
   * (e.g. a JFlex bug producing a faulty scanner etc.).
   *
   * Usual syntax/scanner level error handling should be done
   * in error fallback rules.
   *
   * @param   errorCode  the code of the errormessage to display
   */
  private void zzScanError(int errorCode) {
    String message;
    try {
      message = ZZ_ERROR_MSG[errorCode];
    }
    catch (ArrayIndexOutOfBoundsException e) {
      message = ZZ_ERROR_MSG[ZZ_UNKNOWN_ERROR];
    }

    throw new Error(message);
  } 


  /**
   * Pushes the specified amount of characters back into the input stream.
   *
   * They will be read again by then next call of the scanning method
   *
   * @param number  the number of characters to be read again.
   *                This number must not be greater than yylength()!
   */
  public void yypushback(int number)  {
    if ( number > yylength() )
      zzScanError(ZZ_PUSHBACK_2BIG);

    zzMarkedPos -= number;
  }


  /**
   * Contains user EOF-code, which will be executed exactly once,
   * when the end of file is reached
   */
  private void zzDoEOF() throws java.io.IOException {
    if (!zzEOFDone) {
      zzEOFDone = true;
      yyclose();
    }
  }


  /**
   * Resumes scanning until the next regular expression is matched,
   * the end of input is encountered or an I/O-Error occurs.
   *
   * @return      the next token
   * @exception   java.io.IOException  if any I/O-Error occurs
   */
  public Symbol next_token() throws java.io.IOException {
    int zzInput;
    int zzAction;

    // cached fields:
    int zzCurrentPosL;
    int zzMarkedPosL;
    int zzEndReadL = zzEndRead;
    char [] zzBufferL = zzBuffer;
    char [] zzCMapL = ZZ_CMAP;

    int [] zzTransL = ZZ_TRANS;
    int [] zzRowMapL = ZZ_ROWMAP;
    int [] zzAttrL = ZZ_ATTRIBUTE;

    while (true) {
      zzMarkedPosL = zzMarkedPos;

      boolean zzR = false;
      for (zzCurrentPosL = zzStartRead; zzCurrentPosL < zzMarkedPosL;
                                                             zzCurrentPosL++) {
        switch (zzBufferL[zzCurrentPosL]) {
        case '\u000B':
        case '\u000C':
        case '\u0085':
        case '\u2028':
        case '\u2029':
          yyline++;
          yycolumn = 0;
          zzR = false;
          break;
        case '\r':
          yyline++;
          yycolumn = 0;
          zzR = true;
          break;
        case '\n':
          if (zzR)
            zzR = false;
          else {
            yyline++;
            yycolumn = 0;
          }
          break;
        default:
          zzR = false;
          yycolumn++;
        }
      }

      if (zzR) {
        // peek one character ahead if it is \n (if we have counted one line too much)
        boolean zzPeek;
        if (zzMarkedPosL < zzEndReadL)
          zzPeek = zzBufferL[zzMarkedPosL] == '\n';
        else if (zzAtEOF)
          zzPeek = false;
        else {
          boolean eof = zzRefill();
          zzEndReadL = zzEndRead;
          zzMarkedPosL = zzMarkedPos;
          zzBufferL = zzBuffer;
          if (eof) 
            zzPeek = false;
          else 
            zzPeek = zzBufferL[zzMarkedPosL] == '\n';
        }
        if (zzPeek) yyline--;
      }
      zzAction = -1;

      zzCurrentPosL = zzCurrentPos = zzStartRead = zzMarkedPosL;
  
      zzState = ZZ_LEXSTATE[zzLexicalState];

      // set up zzAction for empty match case:
      int zzAttributes = zzAttrL[zzState];
      if ( (zzAttributes & 1) == 1 ) {
        zzAction = zzState;
      }


      zzForAction: {
        while (true) {
    
          if (zzCurrentPosL < zzEndReadL)
            zzInput = zzBufferL[zzCurrentPosL++];
          else if (zzAtEOF) {
            zzInput = YYEOF;
            break zzForAction;
          }
          else {
            // store back cached positions
            zzCurrentPos  = zzCurrentPosL;
            zzMarkedPos   = zzMarkedPosL;
            boolean eof = zzRefill();
            // get translated positions and possibly new buffer
            zzCurrentPosL  = zzCurrentPos;
            zzMarkedPosL   = zzMarkedPos;
            zzBufferL      = zzBuffer;
            zzEndReadL     = zzEndRead;
            if (eof) {
              zzInput = YYEOF;
              break zzForAction;
            }
            else {
              zzInput = zzBufferL[zzCurrentPosL++];
            }
          }
          int zzNext = zzTransL[ zzRowMapL[zzState] + zzCMapL[zzInput] ];
          if (zzNext == -1) break zzForAction;
          zzState = zzNext;

          zzAttributes = zzAttrL[zzState];
          if ( (zzAttributes & 1) == 1 ) {
            zzAction = zzState;
            zzMarkedPosL = zzCurrentPosL;
            if ( (zzAttributes & 8) == 8 ) break zzForAction;
          }

        }
      }

      // store back cached position
      zzMarkedPos = zzMarkedPosL;

      switch (zzAction < 0 ? zzAction : ZZ_ACTION[zzAction]) {
        case 1: 
          { 
          }
        case 64: break;
        case 2: 
          { return symbol(sym.NUMBER, new Integer(yytext()));
          }
        case 65: break;
        case 3: 
          { return symbol(sym.ID, new String(yytext()));
          }
        case 66: break;
        case 4: 
          { /* skipping */
          }
        case 67: break;
        case 5: 
          { return symbol(sym.STAR);
          }
        case 68: break;
        case 6: 
          { return symbol(sym.DIVIDE);
          }
        case 69: break;
        case 7: 
          { tmpString = new StringBuilder();
			tmpString.append('"');
			yybegin(STRING);
          }
        case 70: break;
        case 8: 
          { return symbol(sym.SEMI);
          }
        case 71: break;
        case 9: 
          { return symbol(sym.DOT);
          }
        case 72: break;
        case 10: 
          { return symbol(sym.BAR);
          }
        case 73: break;
        case 11: 
          { return symbol(sym.AMPERSAND);
          }
        case 74: break;
        case 12: 
          { return symbol(sym.BARDOT);
          }
        case 75: break;
        case 13: 
          { return symbol(sym.ASSIGN);
          }
        case 76: break;
        case 14: 
          { return symbol(sym.LESS);
          }
        case 77: break;
        case 15: 
          { return symbol(sym.GREATER);
          }
        case 78: break;
        case 16: 
          { return symbol(sym.MINUS);
          }
        case 79: break;
        case 17: 
          { return symbol(sym.PLUS);
          }
        case 80: break;
        case 18: 
          { return symbol(sym.TILDE);
          }
        case 81: break;
        case 19: 
          { return symbol(sym.QUESTIONMARK);
          }
        case 82: break;
        case 20: 
          { return symbol(sym.HAT);
          }
        case 83: break;
        case 21: 
          { return symbol(sym.PERCENT);
          }
        case 84: break;
        case 22: 
          { return symbol(sym.LPAREN);
          }
        case 85: break;
        case 23: 
          { return symbol(sym.RPAREN);
          }
        case 86: break;
        case 24: 
          { return symbol(sym.LQ);
          }
        case 87: break;
        case 25: 
          { return symbol(sym.RQ);
          }
        case 88: break;
        case 26: 
          { return symbol(sym.COMMA);
          }
        case 89: break;
        case 27: 
          { return symbol(sym.COLON);
          }
        case 90: break;
        case 28: 
          { return symbol(sym.LBRACKET);
          }
        case 91: break;
        case 29: 
          { return symbol(sym.RBRACKET);
          }
        case 92: break;
        case 30: 
          { yybegin(YYINITIAL);
          }
        case 93: break;
        case 31: 
          { tmpString.append(yytext());
          }
        case 94: break;
        case 32: 
          { yybegin(YYINITIAL);
                     tmpString.append('"');
          }
        case 95: break;
        case 33: 
          { yybegin(MULTI_COMMENT);
          }
        case 96: break;
        case 34: 
          { yybegin(MONO_COMMENT);
          }
        case 97: break;
        case 35: 
          { return symbol(sym.OR);
          }
        case 98: break;
        case 36: 
          { return symbol(sym.AND);
          }
        case 99: break;
        case 37: 
          { return symbol(sym.NOTEQUAL);
          }
        case 100: break;
        case 38: 
          { return symbol(sym.EQUAL);
          }
        case 101: break;
        case 39: 
          { return symbol(sym.LE);
          }
        case 102: break;
        case 40: 
          { return symbol(sym.LL);
          }
        case 103: break;
        case 41: 
          { return symbol(sym.GE);
          }
        case 104: break;
        case 42: 
          { return symbol(sym.GG);
          }
        case 105: break;
        case 43: 
          { return symbol(sym.PREF);
          }
        case 106: break;
        case 44: 
          { return symbol(sym.MM);
          }
        case 107: break;
        case 45: 
          { return symbol(sym.PP);
          }
        case 108: break;
        case 46: 
          { return symbol(sym.INT);
          }
        case 109: break;
        case 47: 
          { return symbol(sym.DOTS);
          }
        case 110: break;
        case 48: 
          { return symbol(sym.LONG);
          }
        case 111: break;
        case 49: 
          { return symbol(sym.CHAR);
          }
        case 112: break;
        case 50: 
          { return symbol(sym.FLOAT);
          }
        case 113: break;
        case 51: 
          { return symbol(sym.SHORT);
          }
        case 114: break;
        case 52: 
          { return symbol(sym.CONST);
          }
        case 115: break;
        case 53: 
          { return symbol(sym.DOUBLE);
          }
        case 116: break;
        case 54: 
          { return symbol(sym.EXTERN);
          }
        case 117: break;
        case 55: 
          { return symbol(sym.UN_SIGNED, new String(yytext()));
          }
        case 118: break;
        case 56: 
          { return symbol(sym.STRUCT);
          }
        case 119: break;
        case 57: 
          { return symbol(sym.DEFINE);
          }
        case 120: break;
        case 58: 
          { return symbol(sym.TYPEDEF);
          }
        case 121: break;
        case 59: 
          { return symbol(sym.LINT);
          }
        case 122: break;
        case 60: 
          { return symbol(sym.LLONG);
          }
        case 123: break;
        case 61: 
          { return symbol(sym.SINT);
          }
        case 124: break;
        case 62: 
          { return symbol(sym.LDOUBLE);
          }
        case 125: break;
        case 63: 
          { return symbol(sym.LLINT);
          }
        case 126: break;
        default: 
          if (zzInput == YYEOF && zzStartRead == zzCurrentPos) {
            zzAtEOF = true;
            zzDoEOF();
              { return new Symbol(sym.EOF); }
          } 
          else {
            zzScanError(ZZ_NO_MATCH);
          }
      }
    }
  }


}
