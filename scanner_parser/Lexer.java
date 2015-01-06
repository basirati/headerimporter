/* The following code was generated by JFlex 1.5.1 */

  
import java_cup.runtime.*;
      

/**
 * This class is a scanner generated by 
 * <a href="http://www.jflex.de/">JFlex</a> 1.5.1
 * from the specification file <tt>stdio-scanner.flex</tt>
 */
class Lexer implements java_cup.runtime.Scanner {

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
    "\11\0\1\1\1\2\1\2\1\3\1\16\22\0\1\66\1\50\1\36"+
    "\1\10\1\0\1\42\1\45\1\0\1\31\1\32\1\25\1\37\1\33"+
    "\1\41\1\34\1\35\12\5\1\55\1\26\1\43\1\40\1\44\1\52"+
    "\1\0\32\6\1\61\1\4\1\62\1\46\1\7\1\0\1\27\1\30"+
    "\1\20\1\11\1\12\1\13\1\63\1\65\1\14\2\6\1\21\1\6"+
    "\1\15\1\64\1\60\1\6\1\24\1\56\1\23\1\17\2\6\1\22"+
    "\1\57\1\6\1\53\1\47\1\54\1\51\6\0\1\2\u1fa2\0\1\2"+
    "\1\2\udfd6\0";

  /** 
   * Translates characters to character classes
   */
  private static final char [] ZZ_CMAP = zzUnpackCMap(ZZ_CMAP_PACKED);

  /** 
   * Translates DFA states to action switch labels.
   */
  private static final int [] ZZ_ACTION = zzUnpackAction();

  private static final String ZZ_ACTION_PACKED_0 =
    "\4\0\1\1\1\2\1\3\2\4\1\5\10\4\1\6"+
    "\1\7\1\10\1\11\1\12\1\13\1\14\1\15\1\16"+
    "\1\17\1\20\1\21\1\22\1\23\1\24\1\25\1\26"+
    "\1\27\1\30\1\31\1\32\1\33\1\34\1\4\1\35"+
    "\1\36\1\1\1\37\2\40\1\41\1\4\4\0\13\4"+
    "\1\42\2\0\1\43\1\44\1\45\1\46\1\47\1\50"+
    "\1\51\1\52\1\53\1\54\1\55\1\56\1\57\1\60"+
    "\1\61\1\62\1\63\1\64\1\65\1\66\3\4\2\67"+
    "\1\0\1\70\2\0\5\4\1\71\5\4\1\0\1\72"+
    "\1\73\3\4\1\0\1\67\1\0\5\70\2\0\2\4"+
    "\1\74\3\4\1\75\1\76\1\4\1\77\3\4\1\0"+
    "\1\67\1\0\2\70\2\0\1\4\1\100\1\4\1\101"+
    "\1\102\1\0\3\4\1\103\2\67\1\0\2\70\1\0"+
    "\1\77\1\104\1\105\3\0\1\4\1\106\1\107\1\0"+
    "\1\67\1\110\1\111\1\70\1\0\2\77\4\0\1\112"+
    "\1\0\1\67\2\110\2\111\1\113\1\114\2\0\1\115"+
    "\2\0\1\67\2\113\2\114\4\0\1\116\1\117\1\67"+
    "\5\0\1\67\1\120\1\0\1\67\1\0\1\67\1\121"+
    "\3\0\1\67";

  private static int [] zzUnpackAction() {
    int [] result = new int[223];
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
    "\0\0\0\67\0\156\0\245\0\334\0\334\0\u0113\0\u014a"+
    "\0\u0181\0\u01b8\0\u01ef\0\u0226\0\u025d\0\u0294\0\u02cb\0\u0302"+
    "\0\u0339\0\u0370\0\u03a7\0\334\0\334\0\334\0\u03de\0\334"+
    "\0\u0415\0\334\0\u044c\0\u0483\0\u04ba\0\u04f1\0\u0528\0\u055f"+
    "\0\u0596\0\u05cd\0\u0604\0\u063b\0\334\0\334\0\334\0\334"+
    "\0\334\0\u0672\0\334\0\334\0\u06a9\0\334\0\334\0\u06e0"+
    "\0\334\0\u0717\0\u01b8\0\u074e\0\u0785\0\u07bc\0\u07f3\0\u082a"+
    "\0\u0861\0\u0898\0\u08cf\0\u0906\0\u093d\0\u0974\0\u09ab\0\u09e2"+
    "\0\u0a19\0\334\0\u03de\0\u0a50\0\334\0\334\0\334\0\334"+
    "\0\334\0\334\0\334\0\334\0\334\0\334\0\334\0\u0a87"+
    "\0\334\0\u0abe\0\334\0\334\0\334\0\334\0\334\0\334"+
    "\0\u0af5\0\u0b2c\0\u0b63\0\u0b9a\0\u0bd1\0\u0c08\0\u0c3f\0\u0c76"+
    "\0\u0cad\0\u0ce4\0\u0d1b\0\u0d52\0\u0d89\0\u0dc0\0\u014a\0\u0df7"+
    "\0\u0e2e\0\u0e65\0\u0e9c\0\u0ed3\0\u0f0a\0\334\0\334\0\u0f41"+
    "\0\u0f78\0\u0faf\0\u0fe6\0\u101d\0\u1054\0\u108b\0\u10c2\0\u10f9"+
    "\0\u1130\0\u1167\0\u119e\0\u11d5\0\u120c\0\u1243\0\u014a\0\u127a"+
    "\0\u12b1\0\u12e8\0\u014a\0\u131f\0\u1356\0\334\0\u138d\0\u13c4"+
    "\0\u13fb\0\u1432\0\u1469\0\u14a0\0\u14d7\0\u150e\0\u1545\0\u157c"+
    "\0\u15b3\0\u014a\0\u15ea\0\u014a\0\u014a\0\u1621\0\u1658\0\u168f"+
    "\0\u16c6\0\u16fd\0\334\0\u1734\0\u176b\0\u17a2\0\u17d9\0\u1810"+
    "\0\u1847\0\u014a\0\u187e\0\u18b5\0\u18ec\0\u1923\0\u195a\0\u014a"+
    "\0\u014a\0\u1991\0\u19c8\0\u19ff\0\u1a36\0\u1a6d\0\u1aa4\0\u1adb"+
    "\0\u1b12\0\u1b49\0\u1b80\0\u1bb7\0\u1bee\0\u014a\0\u1c25\0\u1c5c"+
    "\0\u1c93\0\u1cca\0\u1d01\0\u1d38\0\u1d6f\0\u1da6\0\u1ddd\0\u1e14"+
    "\0\334\0\u1e4b\0\u1e82\0\u1eb9\0\u1ef0\0\u1f27\0\u1f5e\0\u1f95"+
    "\0\u1fcc\0\u2003\0\u203a\0\u2071\0\u20a8\0\334\0\u20df\0\u2116"+
    "\0\u214d\0\u2184\0\u21bb\0\u21f2\0\u2229\0\334\0\u2260\0\u2297"+
    "\0\u22ce\0\u2305\0\334\0\u233c\0\u2373\0\u23aa\0\u233c";

  private static int [] zzUnpackRowMap() {
    int [] result = new int[223];
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
    "\1\5\3\6\1\5\1\7\1\10\1\11\1\12\1\13"+
    "\1\14\1\15\1\16\1\10\1\6\1\17\1\20\1\21"+
    "\1\10\1\22\1\10\1\23\1\24\2\10\1\25\1\26"+
    "\1\27\1\30\1\31\1\32\1\33\1\34\1\35\1\36"+
    "\1\37\1\40\1\41\1\42\1\43\1\44\1\45\1\46"+
    "\1\47\1\50\1\51\1\52\2\10\1\53\1\54\3\10"+
    "\1\6\16\5\1\0\6\5\1\55\43\5\2\56\12\5"+
    "\1\0\50\5\2\57\2\0\1\60\11\57\1\0\17\57"+
    "\1\61\30\57\74\0\1\7\66\0\3\10\1\0\5\10"+
    "\1\0\6\10\2\0\2\10\25\0\3\10\2\0\3\10"+
    "\6\0\2\10\1\62\1\0\5\10\1\0\6\10\2\0"+
    "\2\10\25\0\3\10\2\0\3\10\2\0\1\63\1\0"+
    "\1\63\5\0\1\64\2\0\1\65\1\0\1\63\1\66"+
    "\46\0\1\63\5\0\3\10\1\0\5\10\1\0\6\10"+
    "\2\0\2\10\25\0\3\10\2\0\1\10\1\67\1\10"+
    "\6\0\3\10\1\0\4\10\1\70\1\0\2\10\1\71"+
    "\1\72\2\10\2\0\2\10\25\0\3\10\2\0\3\10"+
    "\6\0\3\10\1\0\5\10\1\0\2\10\1\73\3\10"+
    "\2\0\2\10\25\0\3\10\2\0\3\10\6\0\3\10"+
    "\1\0\4\10\1\74\1\0\6\10\2\0\2\10\25\0"+
    "\3\10\2\0\3\10\6\0\3\10\1\0\4\10\1\75"+
    "\1\0\6\10\2\0\2\10\25\0\3\10\2\0\3\10"+
    "\6\0\3\10\1\0\5\10\1\0\6\10\2\0\2\10"+
    "\25\0\3\10\2\0\1\10\1\76\1\77\6\0\3\10"+
    "\1\0\5\10\1\0\6\10\2\0\2\10\25\0\3\10"+
    "\2\0\1\10\1\100\1\10\6\0\3\10\1\0\5\10"+
    "\1\0\6\10\2\0\2\10\25\0\1\10\1\101\1\10"+
    "\2\0\3\10\41\0\1\102\27\0\1\103\1\0\1\103"+
    "\12\0\1\103\15\0\1\104\31\0\1\103\25\0\1\105"+
    "\7\0\1\106\2\0\1\107\65\0\1\110\1\111\66\0"+
    "\1\112\66\0\1\113\1\114\2\0\1\115\62\0\1\116"+
    "\66\0\1\117\2\0\1\120\63\0\1\121\3\0\1\122"+
    "\62\0\1\123\4\0\1\124\61\0\1\125\66\0\1\126"+
    "\6\0\1\127\57\0\1\130\33\0\3\10\1\0\3\10"+
    "\1\131\1\10\1\0\4\10\1\132\1\10\2\0\2\10"+
    "\25\0\3\10\2\0\2\10\1\133\36\0\1\56\67\0"+
    "\1\57\35\0\1\10\2\134\1\0\5\134\1\0\6\134"+
    "\2\0\1\135\1\134\25\0\3\134\2\0\3\134\13\0"+
    "\1\136\67\0\1\137\1\0\1\140\66\0\1\141\56\0"+
    "\3\10\1\0\5\10\1\0\1\142\5\10\2\0\2\10"+
    "\25\0\3\10\2\0\3\10\6\0\3\10\1\0\1\143"+
    "\4\10\1\0\6\10\2\0\2\10\25\0\3\10\2\0"+
    "\3\10\6\0\3\10\1\0\5\10\1\0\6\10\2\0"+
    "\2\10\25\0\1\144\2\10\2\0\3\10\6\0\3\10"+
    "\1\0\5\10\1\0\4\10\1\145\1\10\2\0\2\10"+
    "\25\0\3\10\2\0\3\10\6\0\3\10\1\0\5\10"+
    "\1\0\6\10\2\0\2\10\25\0\3\10\2\0\1\10"+
    "\1\146\1\10\6\0\3\10\1\0\5\10\1\0\4\10"+
    "\1\147\1\10\2\0\2\10\25\0\3\10\2\0\3\10"+
    "\6\0\3\10\1\0\5\10\1\0\6\10\2\0\2\10"+
    "\25\0\1\150\2\10\2\0\3\10\6\0\3\10\1\0"+
    "\4\10\1\151\1\0\6\10\2\0\2\10\25\0\3\10"+
    "\2\0\3\10\6\0\3\10\1\0\5\10\1\0\6\10"+
    "\2\0\1\152\1\10\25\0\3\10\2\0\3\10\6\0"+
    "\3\10\1\0\4\10\1\153\1\0\6\10\2\0\2\10"+
    "\25\0\3\10\2\0\3\10\6\0\3\10\1\0\5\10"+
    "\1\0\6\10\2\0\2\10\25\0\2\10\1\154\2\0"+
    "\3\10\35\0\1\155\72\0\1\156\66\0\1\157\33\0"+
    "\3\10\1\0\5\10\1\0\6\10\2\0\2\10\25\0"+
    "\3\10\2\0\1\160\2\10\6\0\3\10\1\0\5\10"+
    "\1\0\5\10\1\161\2\0\2\10\25\0\3\10\2\0"+
    "\3\10\6\0\3\10\1\0\5\10\1\0\6\10\2\0"+
    "\2\10\25\0\3\10\2\0\1\10\1\162\1\10\6\0"+
    "\3\134\1\0\5\134\1\0\6\134\2\0\2\134\1\163"+
    "\24\0\3\134\2\0\3\134\6\0\3\134\1\0\5\134"+
    "\1\0\4\134\1\164\1\134\2\0\2\134\1\163\24\0"+
    "\3\134\2\0\3\134\14\0\1\165\53\0\1\166\1\167"+
    "\1\0\1\167\1\170\4\166\1\171\3\166\1\172\1\167"+
    "\47\166\1\167\20\0\1\173\57\0\1\174\62\0\3\10"+
    "\1\0\5\10\1\0\6\10\2\0\1\10\1\175\25\0"+
    "\3\10\2\0\3\10\6\0\3\10\1\0\3\10\1\176"+
    "\1\10\1\0\6\10\2\0\2\10\25\0\3\10\2\0"+
    "\3\10\6\0\3\10\1\0\1\10\1\177\3\10\1\0"+
    "\6\10\2\0\2\10\25\0\3\10\2\0\3\10\6\0"+
    "\3\10\1\0\1\10\1\200\3\10\1\0\6\10\2\0"+
    "\2\10\25\0\3\10\2\0\3\10\6\0\3\10\1\0"+
    "\5\10\1\0\6\10\2\0\1\201\1\10\25\0\3\10"+
    "\2\0\3\10\6\0\3\10\1\0\3\10\1\131\1\10"+
    "\1\0\6\10\2\0\2\10\25\0\3\10\2\0\3\10"+
    "\6\0\3\10\1\0\5\10\1\0\6\10\2\0\2\10"+
    "\25\0\1\202\2\10\2\0\3\10\6\0\3\10\1\0"+
    "\5\10\1\0\5\10\1\203\2\0\2\10\25\0\3\10"+
    "\2\0\3\10\6\0\3\10\1\0\5\10\1\0\6\10"+
    "\2\0\2\10\25\0\3\10\2\0\1\204\2\10\6\0"+
    "\3\10\1\0\1\10\1\205\3\10\1\0\6\10\2\0"+
    "\2\10\25\0\3\10\2\0\3\10\35\0\1\206\37\0"+
    "\3\10\1\0\4\10\1\207\1\0\6\10\2\0\2\10"+
    "\25\0\3\10\2\0\3\10\6\0\3\10\1\0\5\10"+
    "\1\0\1\210\5\10\2\0\2\10\25\0\3\10\2\0"+
    "\3\10\6\0\3\10\1\0\5\10\1\0\5\10\1\211"+
    "\2\0\2\10\25\0\3\10\2\0\3\10\7\0\2\212"+
    "\1\0\5\212\1\0\6\212\2\0\2\212\25\0\3\212"+
    "\2\0\3\212\6\0\3\134\1\0\5\134\1\0\4\134"+
    "\1\213\1\134\2\0\2\134\1\163\24\0\3\134\2\0"+
    "\3\134\15\0\1\214\52\0\2\166\2\0\1\170\11\166"+
    "\1\0\51\166\1\167\1\0\1\167\1\170\11\166\1\167"+
    "\47\166\1\167\4\166\1\170\11\166\1\0\52\166\2\0"+
    "\1\170\5\166\1\215\3\166\1\0\52\166\2\0\1\170"+
    "\4\166\1\216\4\166\1\0\50\166\21\0\1\217\57\0"+
    "\1\220\61\0\3\10\1\0\5\10\1\0\2\10\1\221"+
    "\3\10\2\0\2\10\25\0\3\10\2\0\3\10\6\0"+
    "\3\10\1\0\2\10\1\222\2\10\1\0\6\10\2\0"+
    "\2\10\25\0\3\10\2\0\3\10\6\0\3\10\1\0"+
    "\5\10\1\0\5\10\1\223\2\0\2\10\25\0\3\10"+
    "\2\0\3\10\6\0\3\10\1\0\5\10\1\0\4\10"+
    "\1\224\1\10\2\0\2\10\25\0\3\10\2\0\3\10"+
    "\6\0\3\10\1\0\5\10\1\0\4\10\1\225\1\10"+
    "\2\0\2\10\25\0\3\10\2\0\3\10\6\0\3\10"+
    "\1\0\5\10\1\0\6\10\2\0\2\10\25\0\3\10"+
    "\2\0\3\10\1\226\5\0\3\10\1\0\1\227\4\10"+
    "\1\0\6\10\2\0\2\10\25\0\3\10\2\0\3\10"+
    "\6\0\3\10\1\0\1\10\1\230\3\10\1\0\6\10"+
    "\2\0\2\10\25\0\3\10\2\0\3\10\6\0\3\10"+
    "\1\0\5\10\1\0\1\10\1\231\4\10\2\0\2\10"+
    "\25\0\3\10\2\0\3\10\6\0\3\10\1\0\5\10"+
    "\1\0\4\10\1\232\1\10\2\0\2\10\25\0\3\10"+
    "\2\0\3\10\6\0\3\212\1\0\5\212\1\0\6\212"+
    "\2\0\2\212\1\0\1\233\23\0\3\212\2\0\3\212"+
    "\6\0\3\134\1\0\5\134\1\0\5\134\1\234\2\0"+
    "\2\134\1\163\24\0\3\134\2\0\3\134\16\0\1\235"+
    "\51\0\2\166\2\0\1\170\6\166\1\236\2\166\1\0"+
    "\52\166\2\0\1\170\5\166\1\237\3\166\1\0\50\166"+
    "\17\0\1\240\62\0\1\241\60\0\3\10\1\0\1\10"+
    "\1\242\3\10\1\0\6\10\2\0\2\10\25\0\3\10"+
    "\2\0\3\10\6\0\3\10\1\0\4\10\1\243\1\0"+
    "\6\10\2\0\2\10\25\0\3\10\2\0\3\10\12\0"+
    "\1\244\2\0\1\245\4\0\1\246\52\0\3\10\1\0"+
    "\1\10\1\247\3\10\1\0\6\10\2\0\2\10\25\0"+
    "\3\10\2\0\3\10\6\0\3\10\1\0\1\250\4\10"+
    "\1\0\6\10\2\0\2\10\25\0\3\10\2\0\3\10"+
    "\6\0\3\10\1\0\5\10\1\0\4\10\1\251\1\10"+
    "\2\0\2\10\25\0\3\10\2\0\3\10\6\0\3\10"+
    "\1\0\5\10\1\0\6\10\2\0\2\10\25\0\3\10"+
    "\2\0\3\10\1\252\5\0\3\134\1\0\3\134\1\253"+
    "\1\134\1\0\6\134\2\0\2\134\1\163\24\0\3\134"+
    "\2\0\3\134\13\0\1\254\54\0\1\166\1\236\1\0"+
    "\1\255\1\170\11\166\1\255\47\166\1\236\2\166\2\0"+
    "\1\170\6\166\1\256\2\166\1\0\50\166\11\0\1\257"+
    "\55\0\1\260\1\241\1\0\1\241\1\261\11\260\1\241"+
    "\47\260\1\241\1\0\1\262\1\0\1\262\1\0\3\10"+
    "\1\0\5\10\1\262\6\10\2\0\2\10\25\0\3\10"+
    "\2\0\3\10\1\262\64\0\1\263\17\0\1\264\135\0"+
    "\1\265\7\0\3\10\1\0\2\10\1\266\2\10\1\0"+
    "\6\10\2\0\2\10\25\0\3\10\2\0\3\10\15\0"+
    "\1\267\57\0\3\134\1\0\5\134\1\0\6\134\2\0"+
    "\1\134\1\270\1\163\24\0\3\134\2\0\3\134\1\0"+
    "\1\271\1\254\1\0\1\254\1\272\11\271\1\254\47\271"+
    "\1\254\1\273\1\255\1\0\1\255\1\274\11\273\1\255"+
    "\47\273\1\255\1\166\1\256\1\0\1\275\1\170\11\166"+
    "\1\275\47\166\1\256\12\0\1\276\54\0\2\260\2\0"+
    "\1\261\11\260\1\0\54\260\1\261\11\260\1\0\50\260"+
    "\6\0\2\277\1\0\5\277\1\0\6\277\2\0\2\277"+
    "\25\0\3\277\2\0\3\277\20\0\1\300\72\0\1\301"+
    "\60\0\1\302\66\0\1\303\56\0\3\134\1\0\5\134"+
    "\1\0\1\304\5\134\2\0\2\134\1\163\24\0\3\134"+
    "\2\0\3\134\1\0\2\271\2\0\1\272\11\271\1\0"+
    "\54\271\1\272\11\271\1\0\50\271\2\273\2\0\1\274"+
    "\11\273\1\0\54\273\1\274\11\273\1\0\50\273\1\305"+
    "\1\275\1\0\1\275\1\306\11\305\1\275\47\305\1\275"+
    "\1\307\1\276\1\0\1\276\1\310\11\307\1\276\47\307"+
    "\1\276\1\0\1\311\1\0\1\311\1\0\2\277\1\312"+
    "\1\0\5\277\1\311\6\277\1\313\1\0\2\277\25\0"+
    "\3\277\2\0\3\277\1\311\30\0\1\314\121\0\1\315"+
    "\26\0\1\316\50\0\3\134\1\0\5\134\1\0\4\134"+
    "\1\317\1\134\2\0\2\134\1\163\24\0\3\134\2\0"+
    "\3\134\1\0\2\305\2\0\1\306\11\305\1\0\54\305"+
    "\1\306\11\305\1\0\50\305\2\307\2\0\1\310\11\307"+
    "\1\0\54\307\1\310\11\307\1\0\50\307\1\0\1\311"+
    "\1\0\1\311\3\0\1\320\6\0\1\311\6\0\1\313"+
    "\40\0\1\311\1\0\1\311\1\0\1\311\1\0\2\277"+
    "\1\321\1\0\5\277\1\311\6\277\1\313\1\0\2\277"+
    "\25\0\3\277\2\0\3\277\1\311\1\0\1\322\1\0"+
    "\1\322\3\0\1\320\6\0\1\322\6\0\1\313\40\0"+
    "\1\322\21\0\1\323\133\0\1\324\5\0\3\134\1\0"+
    "\1\134\1\325\3\134\1\0\6\134\2\0\2\134\1\163"+
    "\24\0\3\134\2\0\3\134\10\0\1\321\57\0\26\321"+
    "\1\206\40\321\1\0\1\322\1\0\1\322\3\0\1\320"+
    "\6\0\1\322\47\0\1\322\12\0\1\326\70\0\1\327"+
    "\57\0\2\134\1\330\1\0\5\134\1\0\6\134\2\0"+
    "\2\134\1\163\24\0\3\134\2\0\3\134\16\0\1\331"+
    "\56\0\2\134\1\332\1\0\5\134\1\0\6\134\2\0"+
    "\2\134\1\163\24\0\3\134\2\0\3\134\24\0\1\333"+
    "\43\0\5\334\3\332\1\334\5\332\1\334\6\332\1\334"+
    "\1\24\2\332\1\335\24\334\3\332\2\334\3\332\27\334"+
    "\1\24\46\334\2\336\1\334\5\336\1\334\6\336\1\334"+
    "\1\24\2\336\25\334\3\336\2\334\3\336\6\334\3\336"+
    "\1\334\5\336\1\334\6\336\1\334\1\24\2\336\1\334"+
    "\1\337\23\334\3\336\2\334\3\336\1\334";

  private static int [] zzUnpackTrans() {
    int [] result = new int[9185];
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
    "\4\0\2\11\15\1\3\11\1\1\1\11\1\1\1\11"+
    "\12\1\5\11\1\1\2\11\1\1\2\11\1\1\1\11"+
    "\1\1\4\0\13\1\1\11\2\0\13\11\1\1\1\11"+
    "\1\1\6\11\5\1\1\0\1\1\2\0\13\1\1\0"+
    "\2\11\3\1\1\0\1\1\1\0\5\1\2\0\11\1"+
    "\1\11\3\1\1\0\1\1\1\0\2\1\2\0\5\1"+
    "\1\0\4\1\1\11\1\1\1\0\2\1\1\0\3\1"+
    "\3\0\3\1\1\0\4\1\1\0\2\1\4\0\1\1"+
    "\1\0\7\1\2\0\1\11\2\0\5\1\4\0\1\1"+
    "\1\11\1\1\5\0\1\1\1\11\1\0\1\1\1\0"+
    "\1\1\1\11\3\0\1\1";

  private static int [] zzUnpackAttribute() {
    int [] result = new int[223];
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
  Lexer(java.io.Reader in) {
    this.zzReader = in;
  }

  /**
   * Creates a new scanner.
   * There is also java.io.Reader version of this constructor.
   *
   * @param   in  the java.io.Inputstream to read input from.
   */
  Lexer(java.io.InputStream in) {
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
  public java_cup.runtime.Symbol next_token() throws java.io.IOException {
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
        case 82: break;
        case 2: 
          { /* skipping */
          }
        case 83: break;
        case 3: 
          { return symbol(sym.NUMBER, new Integer(yytext()));
          }
        case 84: break;
        case 4: 
          { return symbol(sym.ID, new String(yytext()));
          }
        case 85: break;
        case 5: 
          { return symbol(sym.SHARP);
          }
        case 86: break;
        case 6: 
          { return symbol(sym.STAR);
          }
        case 87: break;
        case 7: 
          { return symbol(sym.SEMI);
          }
        case 88: break;
        case 8: 
          { return symbol(sym.LPAREN);
          }
        case 89: break;
        case 9: 
          { return symbol(sym.RPAREN);
          }
        case 90: break;
        case 10: 
          { return symbol(sym.COMMA);
          }
        case 91: break;
        case 11: 
          { return symbol(sym.DOT);
          }
        case 92: break;
        case 12: 
          { return symbol(sym.DIVIDE);
          }
        case 93: break;
        case 13: 
          { tmpString = new StringBuilder();
			tmpString.append('"');
			yybegin(STRING);
          }
        case 94: break;
        case 14: 
          { return symbol(sym.PLUS);
          }
        case 95: break;
        case 15: 
          { return symbol(sym.ASSIGN);
          }
        case 96: break;
        case 16: 
          { return symbol(sym.MINUS);
          }
        case 97: break;
        case 17: 
          { return symbol(sym.PERCENT);
          }
        case 98: break;
        case 18: 
          { return symbol(sym.LESS);
          }
        case 99: break;
        case 19: 
          { return symbol(sym.GREATER);
          }
        case 100: break;
        case 20: 
          { return symbol(sym.AMPERSAND);
          }
        case 101: break;
        case 21: 
          { return symbol(sym.HAT);
          }
        case 102: break;
        case 22: 
          { return symbol(sym.BAR);
          }
        case 103: break;
        case 23: 
          { return symbol(sym.BARDOT);
          }
        case 104: break;
        case 24: 
          { return symbol(sym.TILDE);
          }
        case 105: break;
        case 25: 
          { return symbol(sym.QUESTIONMARK);
          }
        case 106: break;
        case 26: 
          { return symbol(sym.LQ);
          }
        case 107: break;
        case 27: 
          { return symbol(sym.RQ);
          }
        case 108: break;
        case 28: 
          { return symbol(sym.COLON);
          }
        case 109: break;
        case 29: 
          { return symbol(sym.LBRACKET);
          }
        case 110: break;
        case 30: 
          { return symbol(sym.RBRACKET);
          }
        case 111: break;
        case 31: 
          { yybegin(YYINITIAL);
          }
        case 112: break;
        case 32: 
          { tmpString.append(yytext());
          }
        case 113: break;
        case 33: 
          { yybegin(YYINITIAL);
                     tmpString.append('"');
          }
        case 114: break;
        case 34: 
          { return symbol(sym.STAREQ);
          }
        case 115: break;
        case 35: 
          { yybegin(MULTI_COMMENT);
          }
        case 116: break;
        case 36: 
          { yybegin(MONO_COMMENT);
          }
        case 117: break;
        case 37: 
          { return symbol(sym.DIVIDEQ);
          }
        case 118: break;
        case 38: 
          { return symbol(sym.PP);
          }
        case 119: break;
        case 39: 
          { return symbol(sym.PLUSEQ);
          }
        case 120: break;
        case 40: 
          { return symbol(sym.EQUAL);
          }
        case 121: break;
        case 41: 
          { return symbol(sym.MINUSEQ);
          }
        case 122: break;
        case 42: 
          { return symbol(sym.MM);
          }
        case 123: break;
        case 43: 
          { return symbol(sym.PREF);
          }
        case 124: break;
        case 44: 
          { return symbol(sym.PERCENTEQ);
          }
        case 125: break;
        case 45: 
          { return symbol(sym.LE);
          }
        case 126: break;
        case 46: 
          { return symbol(sym.LL);
          }
        case 127: break;
        case 47: 
          { return symbol(sym.GE);
          }
        case 128: break;
        case 48: 
          { return symbol(sym.GG);
          }
        case 129: break;
        case 49: 
          { return symbol(sym.AMPERSANDEQ);
          }
        case 130: break;
        case 50: 
          { return symbol(sym.AND);
          }
        case 131: break;
        case 51: 
          { return symbol(sym.HATEQ);
          }
        case 132: break;
        case 52: 
          { return symbol(sym.BAREQ);
          }
        case 133: break;
        case 53: 
          { return symbol(sym.OR);
          }
        case 134: break;
        case 54: 
          { return symbol(sym.NOTEQUAL);
          }
        case 135: break;
        case 55: 
          { return symbol(sym.COMPWORD, new String(yytext()));
          }
        case 136: break;
        case 56: 
          { return symbol(sym.IF, new String(yytext()));
          }
        case 137: break;
        case 57: 
          { return symbol(sym.INT);
          }
        case 138: break;
        case 58: 
          { return symbol(sym.LLEQ);
          }
        case 139: break;
        case 59: 
          { return symbol(sym.GGEQ);
          }
        case 140: break;
        case 60: 
          { return symbol(sym.ELSE);
          }
        case 141: break;
        case 61: 
          { return symbol(sym.CHAR);
          }
        case 142: break;
        case 62: 
          { return symbol(sym.LONG);
          }
        case 143: break;
        case 63: 
          { /*DO NOTHING*/
          }
        case 144: break;
        case 64: 
          { return symbol(sym.ENDIF);
          }
        case 145: break;
        case 65: 
          { return symbol(sym.FLOAT);
          }
        case 146: break;
        case 66: 
          { return symbol(sym.CONST);
          }
        case 147: break;
        case 67: 
          { return symbol(sym.SHORT);
          }
        case 148: break;
        case 68: 
          { return symbol(sym.DOUBLE);
          }
        case 149: break;
        case 69: 
          { return symbol(sym.EXTERN);
          }
        case 150: break;
        case 70: 
          { return symbol(sym.UN_SIGNED, new String(yytext()));
          }
        case 151: break;
        case 71: 
          { return symbol(sym.STRUCT);
          }
        case 152: break;
        case 72: 
          { return symbol(sym.DEFINE, new String(yytext()));
          }
        case 153: break;
        case 73: 
          { return symbol(sym.IFDEF, new String(yytext()));
          }
        case 154: break;
        case 74: 
          { return symbol(sym.TYPEDEF);
          }
        case 155: break;
        case 75: 
          { return symbol(sym.IFNDEF, new String(yytext()));
          }
        case 156: break;
        case 76: 
          { return symbol(sym.INCLUDE);
          }
        case 157: break;
        case 77: 
          { return symbol(sym.LINT);
          }
        case 158: break;
        case 78: 
          { return symbol(sym.LLONG);
          }
        case 159: break;
        case 79: 
          { return symbol(sym.SINT);
          }
        case 160: break;
        case 80: 
          { return symbol(sym.LDOUBLE);
          }
        case 161: break;
        case 81: 
          { return symbol(sym.LLINT);
          }
        case 162: break;
        default: 
          if (zzInput == YYEOF && zzStartRead == zzCurrentPos) {
            zzAtEOF = true;
            zzDoEOF();
              { return new java_cup.runtime.Symbol(sym.EOF); }
          } 
          else {
            zzScanError(ZZ_NO_MATCH);
          }
      }
    }
  }


}
