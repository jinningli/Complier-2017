// Generated from /Users/lijinning/Desktop/Compiler - 2017/MAPLE/Compiler/FrontEnd/Maple.g4 by ANTLR 4.7
package cn.chips.MAPLE.parser;

import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class MapleLexer extends Lexer {
	static { RuntimeMetaData.checkVersion("4.7", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, IF=15, ELSE=16, ELSEIF=17, 
		WHILE=18, FOR=19, CONTINUE=20, BREAK=21, RETURN=22, VOID=23, INT=24, BOOL=25, 
		NULL=26, STRING=27, ID=28, PLUS=29, MINUS=30, MUL=31, DIV=32, MOD=33, 
		LESS=34, LARGE=35, EQ=36, NEQ=37, LESSEQ=38, LARGEEQ=39, PLUSPLUS=40, 
		MINUSMINUS=41, DOT=42, AND=43, OR=44, NOT=45, BAND=46, BOR=47, BNOT=48, 
		BXOR=49, BMOV_L=50, BMOV_R=51, COMMENT=52, WHITESPACE=53;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	public static final String[] ruleNames = {
		"T__0", "T__1", "T__2", "T__3", "T__4", "T__5", "T__6", "T__7", "T__8", 
		"T__9", "T__10", "T__11", "T__12", "T__13", "IF", "ELSE", "ELSEIF", "WHILE", 
		"FOR", "CONTINUE", "BREAK", "RETURN", "VOID", "INT", "BOOL", "NULL", "STRING", 
		"ID", "PLUS", "MINUS", "MUL", "DIV", "MOD", "LESS", "LARGE", "EQ", "NEQ", 
		"LESSEQ", "LARGEEQ", "PLUSPLUS", "MINUSMINUS", "DOT", "AND", "OR", "NOT", 
		"BAND", "BOR", "BNOT", "BXOR", "BMOV_L", "BMOV_R", "COMMENT", "WHITESPACE", 
		"ESC", "LETTER", "DIGIT"
	};

	public static final String[] _LITERAL_NAMES = {
		null, "';'", "'='", "'class'", "'{'", "'}'", "'('", "','", "')'", "'['", 
		"']'", "'new'", "'bool'", "'int'", "'string'", "'if'", "'else'", "'else if'", 
		"'while'", "'for'", "'continue'", "'break'", "'return'", "'void'", null, 
		null, "'null'", null, null, "'+'", "'-'", "'*'", "'/'", "'%'", "'<'", 
		"'>'", "'=='", "'!='", "'<='", "'>='", "'++'", "'--'", "'.'", "'&&'", 
		"'||'", "'!'", "'&'", "'|'", "'~'", "'^'", "'<<'", "'>>'"
	};
	public static final String[] _SYMBOLIC_NAMES = {
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, "IF", "ELSE", "ELSEIF", "WHILE", "FOR", "CONTINUE", 
		"BREAK", "RETURN", "VOID", "INT", "BOOL", "NULL", "STRING", "ID", "PLUS", 
		"MINUS", "MUL", "DIV", "MOD", "LESS", "LARGE", "EQ", "NEQ", "LESSEQ", 
		"LARGEEQ", "PLUSPLUS", "MINUSMINUS", "DOT", "AND", "OR", "NOT", "BAND", 
		"BOR", "BNOT", "BXOR", "BMOV_L", "BMOV_R", "COMMENT", "WHITESPACE"
	};
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}


	public MapleLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "Maple.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public String[] getChannelNames() { return channelNames; }

	@Override
	public String[] getModeNames() { return modeNames; }

	@Override
	public ATN getATN() { return _ATN; }

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2\67\u014c\b\1\4\2"+
		"\t\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4"+
		"\13\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22"+
		"\t\22\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31"+
		"\t\31\4\32\t\32\4\33\t\33\4\34\t\34\4\35\t\35\4\36\t\36\4\37\t\37\4 \t"+
		" \4!\t!\4\"\t\"\4#\t#\4$\t$\4%\t%\4&\t&\4\'\t\'\4(\t(\4)\t)\4*\t*\4+\t"+
		"+\4,\t,\4-\t-\4.\t.\4/\t/\4\60\t\60\4\61\t\61\4\62\t\62\4\63\t\63\4\64"+
		"\t\64\4\65\t\65\4\66\t\66\4\67\t\67\48\t8\49\t9\3\2\3\2\3\3\3\3\3\4\3"+
		"\4\3\4\3\4\3\4\3\4\3\5\3\5\3\6\3\6\3\7\3\7\3\b\3\b\3\t\3\t\3\n\3\n\3\13"+
		"\3\13\3\f\3\f\3\f\3\f\3\r\3\r\3\r\3\r\3\r\3\16\3\16\3\16\3\16\3\17\3\17"+
		"\3\17\3\17\3\17\3\17\3\17\3\20\3\20\3\20\3\21\3\21\3\21\3\21\3\21\3\22"+
		"\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\23\3\23\3\23\3\23\3\23\3\23\3\24"+
		"\3\24\3\24\3\24\3\25\3\25\3\25\3\25\3\25\3\25\3\25\3\25\3\25\3\26\3\26"+
		"\3\26\3\26\3\26\3\26\3\27\3\27\3\27\3\27\3\27\3\27\3\27\3\30\3\30\3\30"+
		"\3\30\3\30\3\31\6\31\u00d6\n\31\r\31\16\31\u00d7\3\32\3\32\3\32\3\32\3"+
		"\32\3\32\3\32\3\32\3\32\5\32\u00e3\n\32\3\33\3\33\3\33\3\33\3\33\3\34"+
		"\3\34\3\34\7\34\u00ed\n\34\f\34\16\34\u00f0\13\34\3\34\3\34\3\35\3\35"+
		"\3\35\7\35\u00f7\n\35\f\35\16\35\u00fa\13\35\3\36\3\36\3\37\3\37\3 \3"+
		" \3!\3!\3\"\3\"\3#\3#\3$\3$\3%\3%\3%\3&\3&\3&\3\'\3\'\3\'\3(\3(\3(\3)"+
		"\3)\3)\3*\3*\3*\3+\3+\3,\3,\3,\3-\3-\3-\3.\3.\3/\3/\3\60\3\60\3\61\3\61"+
		"\3\62\3\62\3\63\3\63\3\63\3\64\3\64\3\64\3\65\3\65\3\65\3\65\7\65\u0138"+
		"\n\65\f\65\16\65\u013b\13\65\3\65\3\65\3\66\6\66\u0140\n\66\r\66\16\66"+
		"\u0141\3\66\3\66\3\67\3\67\3\67\38\38\39\39\3\u00ee\2:\3\3\5\4\7\5\t\6"+
		"\13\7\r\b\17\t\21\n\23\13\25\f\27\r\31\16\33\17\35\20\37\21!\22#\23%\24"+
		"\'\25)\26+\27-\30/\31\61\32\63\33\65\34\67\359\36;\37= ?!A\"C#E$G%I&K"+
		"\'M(O)Q*S+U,W-Y.[/]\60_\61a\62c\63e\64g\65i\66k\67m\2o\2q\2\3\2\7\4\2"+
		"\f\f\17\17\5\2\13\f\17\17\"\"\5\2$$^^pp\5\2C\\aac|\3\2\62;\2\u0150\2\3"+
		"\3\2\2\2\2\5\3\2\2\2\2\7\3\2\2\2\2\t\3\2\2\2\2\13\3\2\2\2\2\r\3\2\2\2"+
		"\2\17\3\2\2\2\2\21\3\2\2\2\2\23\3\2\2\2\2\25\3\2\2\2\2\27\3\2\2\2\2\31"+
		"\3\2\2\2\2\33\3\2\2\2\2\35\3\2\2\2\2\37\3\2\2\2\2!\3\2\2\2\2#\3\2\2\2"+
		"\2%\3\2\2\2\2\'\3\2\2\2\2)\3\2\2\2\2+\3\2\2\2\2-\3\2\2\2\2/\3\2\2\2\2"+
		"\61\3\2\2\2\2\63\3\2\2\2\2\65\3\2\2\2\2\67\3\2\2\2\29\3\2\2\2\2;\3\2\2"+
		"\2\2=\3\2\2\2\2?\3\2\2\2\2A\3\2\2\2\2C\3\2\2\2\2E\3\2\2\2\2G\3\2\2\2\2"+
		"I\3\2\2\2\2K\3\2\2\2\2M\3\2\2\2\2O\3\2\2\2\2Q\3\2\2\2\2S\3\2\2\2\2U\3"+
		"\2\2\2\2W\3\2\2\2\2Y\3\2\2\2\2[\3\2\2\2\2]\3\2\2\2\2_\3\2\2\2\2a\3\2\2"+
		"\2\2c\3\2\2\2\2e\3\2\2\2\2g\3\2\2\2\2i\3\2\2\2\2k\3\2\2\2\3s\3\2\2\2\5"+
		"u\3\2\2\2\7w\3\2\2\2\t}\3\2\2\2\13\177\3\2\2\2\r\u0081\3\2\2\2\17\u0083"+
		"\3\2\2\2\21\u0085\3\2\2\2\23\u0087\3\2\2\2\25\u0089\3\2\2\2\27\u008b\3"+
		"\2\2\2\31\u008f\3\2\2\2\33\u0094\3\2\2\2\35\u0098\3\2\2\2\37\u009f\3\2"+
		"\2\2!\u00a2\3\2\2\2#\u00a7\3\2\2\2%\u00af\3\2\2\2\'\u00b5\3\2\2\2)\u00b9"+
		"\3\2\2\2+\u00c2\3\2\2\2-\u00c8\3\2\2\2/\u00cf\3\2\2\2\61\u00d5\3\2\2\2"+
		"\63\u00e2\3\2\2\2\65\u00e4\3\2\2\2\67\u00e9\3\2\2\29\u00f3\3\2\2\2;\u00fb"+
		"\3\2\2\2=\u00fd\3\2\2\2?\u00ff\3\2\2\2A\u0101\3\2\2\2C\u0103\3\2\2\2E"+
		"\u0105\3\2\2\2G\u0107\3\2\2\2I\u0109\3\2\2\2K\u010c\3\2\2\2M\u010f\3\2"+
		"\2\2O\u0112\3\2\2\2Q\u0115\3\2\2\2S\u0118\3\2\2\2U\u011b\3\2\2\2W\u011d"+
		"\3\2\2\2Y\u0120\3\2\2\2[\u0123\3\2\2\2]\u0125\3\2\2\2_\u0127\3\2\2\2a"+
		"\u0129\3\2\2\2c\u012b\3\2\2\2e\u012d\3\2\2\2g\u0130\3\2\2\2i\u0133\3\2"+
		"\2\2k\u013f\3\2\2\2m\u0145\3\2\2\2o\u0148\3\2\2\2q\u014a\3\2\2\2st\7="+
		"\2\2t\4\3\2\2\2uv\7?\2\2v\6\3\2\2\2wx\7e\2\2xy\7n\2\2yz\7c\2\2z{\7u\2"+
		"\2{|\7u\2\2|\b\3\2\2\2}~\7}\2\2~\n\3\2\2\2\177\u0080\7\177\2\2\u0080\f"+
		"\3\2\2\2\u0081\u0082\7*\2\2\u0082\16\3\2\2\2\u0083\u0084\7.\2\2\u0084"+
		"\20\3\2\2\2\u0085\u0086\7+\2\2\u0086\22\3\2\2\2\u0087\u0088\7]\2\2\u0088"+
		"\24\3\2\2\2\u0089\u008a\7_\2\2\u008a\26\3\2\2\2\u008b\u008c\7p\2\2\u008c"+
		"\u008d\7g\2\2\u008d\u008e\7y\2\2\u008e\30\3\2\2\2\u008f\u0090\7d\2\2\u0090"+
		"\u0091\7q\2\2\u0091\u0092\7q\2\2\u0092\u0093\7n\2\2\u0093\32\3\2\2\2\u0094"+
		"\u0095\7k\2\2\u0095\u0096\7p\2\2\u0096\u0097\7v\2\2\u0097\34\3\2\2\2\u0098"+
		"\u0099\7u\2\2\u0099\u009a\7v\2\2\u009a\u009b\7t\2\2\u009b\u009c\7k\2\2"+
		"\u009c\u009d\7p\2\2\u009d\u009e\7i\2\2\u009e\36\3\2\2\2\u009f\u00a0\7"+
		"k\2\2\u00a0\u00a1\7h\2\2\u00a1 \3\2\2\2\u00a2\u00a3\7g\2\2\u00a3\u00a4"+
		"\7n\2\2\u00a4\u00a5\7u\2\2\u00a5\u00a6\7g\2\2\u00a6\"\3\2\2\2\u00a7\u00a8"+
		"\7g\2\2\u00a8\u00a9\7n\2\2\u00a9\u00aa\7u\2\2\u00aa\u00ab\7g\2\2\u00ab"+
		"\u00ac\7\"\2\2\u00ac\u00ad\7k\2\2\u00ad\u00ae\7h\2\2\u00ae$\3\2\2\2\u00af"+
		"\u00b0\7y\2\2\u00b0\u00b1\7j\2\2\u00b1\u00b2\7k\2\2\u00b2\u00b3\7n\2\2"+
		"\u00b3\u00b4\7g\2\2\u00b4&\3\2\2\2\u00b5\u00b6\7h\2\2\u00b6\u00b7\7q\2"+
		"\2\u00b7\u00b8\7t\2\2\u00b8(\3\2\2\2\u00b9\u00ba\7e\2\2\u00ba\u00bb\7"+
		"q\2\2\u00bb\u00bc\7p\2\2\u00bc\u00bd\7v\2\2\u00bd\u00be\7k\2\2\u00be\u00bf"+
		"\7p\2\2\u00bf\u00c0\7w\2\2\u00c0\u00c1\7g\2\2\u00c1*\3\2\2\2\u00c2\u00c3"+
		"\7d\2\2\u00c3\u00c4\7t\2\2\u00c4\u00c5\7g\2\2\u00c5\u00c6\7c\2\2\u00c6"+
		"\u00c7\7m\2\2\u00c7,\3\2\2\2\u00c8\u00c9\7t\2\2\u00c9\u00ca\7g\2\2\u00ca"+
		"\u00cb\7v\2\2\u00cb\u00cc\7w\2\2\u00cc\u00cd\7t\2\2\u00cd\u00ce\7p\2\2"+
		"\u00ce.\3\2\2\2\u00cf\u00d0\7x\2\2\u00d0\u00d1\7q\2\2\u00d1\u00d2\7k\2"+
		"\2\u00d2\u00d3\7f\2\2\u00d3\60\3\2\2\2\u00d4\u00d6\5q9\2\u00d5\u00d4\3"+
		"\2\2\2\u00d6\u00d7\3\2\2\2\u00d7\u00d5\3\2\2\2\u00d7\u00d8\3\2\2\2\u00d8"+
		"\62\3\2\2\2\u00d9\u00da\7v\2\2\u00da\u00db\7t\2\2\u00db\u00dc\7w\2\2\u00dc"+
		"\u00e3\7g\2\2\u00dd\u00de\7h\2\2\u00de\u00df\7c\2\2\u00df\u00e0\7n\2\2"+
		"\u00e0\u00e1\7u\2\2\u00e1\u00e3\7g\2\2\u00e2\u00d9\3\2\2\2\u00e2\u00dd"+
		"\3\2\2\2\u00e3\64\3\2\2\2\u00e4\u00e5\7p\2\2\u00e5\u00e6\7w\2\2\u00e6"+
		"\u00e7\7n\2\2\u00e7\u00e8\7n\2\2\u00e8\66\3\2\2\2\u00e9\u00ee\7$\2\2\u00ea"+
		"\u00ed\5m\67\2\u00eb\u00ed\13\2\2\2\u00ec\u00ea\3\2\2\2\u00ec\u00eb\3"+
		"\2\2\2\u00ed\u00f0\3\2\2\2\u00ee\u00ef\3\2\2\2\u00ee\u00ec\3\2\2\2\u00ef"+
		"\u00f1\3\2\2\2\u00f0\u00ee\3\2\2\2\u00f1\u00f2\7$\2\2\u00f28\3\2\2\2\u00f3"+
		"\u00f8\5o8\2\u00f4\u00f7\5o8\2\u00f5\u00f7\5q9\2\u00f6\u00f4\3\2\2\2\u00f6"+
		"\u00f5\3\2\2\2\u00f7\u00fa\3\2\2\2\u00f8\u00f6\3\2\2\2\u00f8\u00f9\3\2"+
		"\2\2\u00f9:\3\2\2\2\u00fa\u00f8\3\2\2\2\u00fb\u00fc\7-\2\2\u00fc<\3\2"+
		"\2\2\u00fd\u00fe\7/\2\2\u00fe>\3\2\2\2\u00ff\u0100\7,\2\2\u0100@\3\2\2"+
		"\2\u0101\u0102\7\61\2\2\u0102B\3\2\2\2\u0103\u0104\7\'\2\2\u0104D\3\2"+
		"\2\2\u0105\u0106\7>\2\2\u0106F\3\2\2\2\u0107\u0108\7@\2\2\u0108H\3\2\2"+
		"\2\u0109\u010a\7?\2\2\u010a\u010b\7?\2\2\u010bJ\3\2\2\2\u010c\u010d\7"+
		"#\2\2\u010d\u010e\7?\2\2\u010eL\3\2\2\2\u010f\u0110\7>\2\2\u0110\u0111"+
		"\7?\2\2\u0111N\3\2\2\2\u0112\u0113\7@\2\2\u0113\u0114\7?\2\2\u0114P\3"+
		"\2\2\2\u0115\u0116\7-\2\2\u0116\u0117\7-\2\2\u0117R\3\2\2\2\u0118\u0119"+
		"\7/\2\2\u0119\u011a\7/\2\2\u011aT\3\2\2\2\u011b\u011c\7\60\2\2\u011cV"+
		"\3\2\2\2\u011d\u011e\7(\2\2\u011e\u011f\7(\2\2\u011fX\3\2\2\2\u0120\u0121"+
		"\7~\2\2\u0121\u0122\7~\2\2\u0122Z\3\2\2\2\u0123\u0124\7#\2\2\u0124\\\3"+
		"\2\2\2\u0125\u0126\7(\2\2\u0126^\3\2\2\2\u0127\u0128\7~\2\2\u0128`\3\2"+
		"\2\2\u0129\u012a\7\u0080\2\2\u012ab\3\2\2\2\u012b\u012c\7`\2\2\u012cd"+
		"\3\2\2\2\u012d\u012e\7>\2\2\u012e\u012f\7>\2\2\u012ff\3\2\2\2\u0130\u0131"+
		"\7@\2\2\u0131\u0132\7@\2\2\u0132h\3\2\2\2\u0133\u0134\7\61\2\2\u0134\u0135"+
		"\7\61\2\2\u0135\u0139\3\2\2\2\u0136\u0138\n\2\2\2\u0137\u0136\3\2\2\2"+
		"\u0138\u013b\3\2\2\2\u0139\u0137\3\2\2\2\u0139\u013a\3\2\2\2\u013a\u013c"+
		"\3\2\2\2\u013b\u0139\3\2\2\2\u013c\u013d\b\65\2\2\u013dj\3\2\2\2\u013e"+
		"\u0140\t\3\2\2\u013f\u013e\3\2\2\2\u0140\u0141\3\2\2\2\u0141\u013f\3\2"+
		"\2\2\u0141\u0142\3\2\2\2\u0142\u0143\3\2\2\2\u0143\u0144\b\66\2\2\u0144"+
		"l\3\2\2\2\u0145\u0146\7^\2\2\u0146\u0147\t\4\2\2\u0147n\3\2\2\2\u0148"+
		"\u0149\t\5\2\2\u0149p\3\2\2\2\u014a\u014b\t\6\2\2\u014br\3\2\2\2\13\2"+
		"\u00d7\u00e2\u00ec\u00ee\u00f6\u00f8\u0139\u0141\3\b\2\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}