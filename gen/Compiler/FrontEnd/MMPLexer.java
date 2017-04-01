package Compiler.FrontEnd;// Generated from ../src/Compiler/FrontEnd/MMP.g4 by ANTLR 4.7

import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.ATN;
import org.antlr.v4.runtime.atn.ATNDeserializer;
import org.antlr.v4.runtime.atn.LexerATNSimulator;
import org.antlr.v4.runtime.atn.PredictionContextCache;
import org.antlr.v4.runtime.dfa.DFA;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class MMPLexer extends Lexer {
	static { RuntimeMetaData.checkVersion("4.7", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, T__11=12, IF=13, ELSE=14, ELSEIF=15, WHILE=16, FOR=17, 
		CONTINUE=18, BREAK=19, RETURN=20, VOID=21, INT=22, BOOL=23, NULL=24, STRING=25, 
		ID=26, PLUS=27, MINUS=28, MUL=29, DIV=30, MOD=31, LESS=32, LARGE=33, EQ=34, 
		NEQ=35, LESSEQ=36, LARGEEQ=37, PLUSPLUS=38, MINUSMINUS=39, DOT=40, AND=41, 
		OR=42, NOT=43, BAND=44, BOR=45, BNOT=46, BXOR=47, BMOV_L=48, BMOV_R=49, 
		COMMENT=50, WHITESPACE=51;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	public static final String[] ruleNames = {
		"T__0", "T__1", "T__2", "T__3", "T__4", "T__5", "T__6", "T__7", "T__8", 
		"T__9", "T__10", "T__11", "IF", "ELSE", "ELSEIF", "WHILE", "FOR", "CONTINUE", 
		"BREAK", "RETURN", "VOID", "INT", "BOOL", "NULL", "STRING", "ID", "PLUS", 
		"MINUS", "MUL", "DIV", "MOD", "LESS", "LARGE", "EQ", "NEQ", "LESSEQ", 
		"LARGEEQ", "PLUSPLUS", "MINUSMINUS", "DOT", "AND", "OR", "NOT", "BAND", 
		"BOR", "BNOT", "BXOR", "BMOV_L", "BMOV_R", "COMMENT", "WHITESPACE", "ESC", 
		"LETTER", "DIGIT"
	};

	private static final String[] _LITERAL_NAMES = {
		null, "';'", "'='", "'class'", "'('", "','", "')'", "'{'", "'}'", "'new'", 
		"'['", "']'", "'[]'", "'if'", "'else'", "'else if'", "'while'", "'for'", 
		"'continue'", "'break'", "'return'", "'void'", null, null, "'null'", null, 
		null, "'+'", "'-'", "'*'", "'/'", "'%'", "'<'", "'>'", "'=='", "'!='", 
		"'<='", "'>='", "'++'", "'--'", "'.'", "'&&'", "'||'", "'!'", "'&'", "'|'", 
		"'~'", "'^'", "'<<'", "'>>'"
	};
	private static final String[] _SYMBOLIC_NAMES = {
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, "IF", "ELSE", "ELSEIF", "WHILE", "FOR", "CONTINUE", "BREAK", "RETURN", 
		"VOID", "INT", "BOOL", "NULL", "STRING", "ID", "PLUS", "MINUS", "MUL", 
		"DIV", "MOD", "LESS", "LARGE", "EQ", "NEQ", "LESSEQ", "LARGEEQ", "PLUSPLUS", 
		"MINUSMINUS", "DOT", "AND", "OR", "NOT", "BAND", "BOR", "BNOT", "BXOR", 
		"BMOV_L", "BMOV_R", "COMMENT", "WHITESPACE"
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


	public MMPLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "MMP.g4"; }

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
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2\65\u013b\b\1\4\2"+
		"\t\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4"+
		"\13\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22"+
		"\t\22\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31"+
		"\t\31\4\32\t\32\4\33\t\33\4\34\t\34\4\35\t\35\4\36\t\36\4\37\t\37\4 \t"+
		" \4!\t!\4\"\t\"\4#\t#\4$\t$\4%\t%\4&\t&\4\'\t\'\4(\t(\4)\t)\4*\t*\4+\t"+
		"+\4,\t,\4-\t-\4.\t.\4/\t/\4\60\t\60\4\61\t\61\4\62\t\62\4\63\t\63\4\64"+
		"\t\64\4\65\t\65\4\66\t\66\4\67\t\67\3\2\3\2\3\3\3\3\3\4\3\4\3\4\3\4\3"+
		"\4\3\4\3\5\3\5\3\6\3\6\3\7\3\7\3\b\3\b\3\t\3\t\3\n\3\n\3\n\3\n\3\13\3"+
		"\13\3\f\3\f\3\r\3\r\3\r\3\16\3\16\3\16\3\17\3\17\3\17\3\17\3\17\3\20\3"+
		"\20\3\20\3\20\3\20\3\20\3\20\3\20\3\21\3\21\3\21\3\21\3\21\3\21\3\22\3"+
		"\22\3\22\3\22\3\23\3\23\3\23\3\23\3\23\3\23\3\23\3\23\3\23\3\24\3\24\3"+
		"\24\3\24\3\24\3\24\3\25\3\25\3\25\3\25\3\25\3\25\3\25\3\26\3\26\3\26\3"+
		"\26\3\26\3\27\6\27\u00c5\n\27\r\27\16\27\u00c6\3\30\3\30\3\30\3\30\3\30"+
		"\3\30\3\30\3\30\3\30\5\30\u00d2\n\30\3\31\3\31\3\31\3\31\3\31\3\32\3\32"+
		"\3\32\7\32\u00dc\n\32\f\32\16\32\u00df\13\32\3\32\3\32\3\33\3\33\3\33"+
		"\7\33\u00e6\n\33\f\33\16\33\u00e9\13\33\3\34\3\34\3\35\3\35\3\36\3\36"+
		"\3\37\3\37\3 \3 \3!\3!\3\"\3\"\3#\3#\3#\3$\3$\3$\3%\3%\3%\3&\3&\3&\3\'"+
		"\3\'\3\'\3(\3(\3(\3)\3)\3*\3*\3*\3+\3+\3+\3,\3,\3-\3-\3.\3.\3/\3/\3\60"+
		"\3\60\3\61\3\61\3\61\3\62\3\62\3\62\3\63\3\63\3\63\3\63\7\63\u0127\n\63"+
		"\f\63\16\63\u012a\13\63\3\63\3\63\3\64\6\64\u012f\n\64\r\64\16\64\u0130"+
		"\3\64\3\64\3\65\3\65\3\65\3\66\3\66\3\67\3\67\3\u00dd\28\3\3\5\4\7\5\t"+
		"\6\13\7\r\b\17\t\21\n\23\13\25\f\27\r\31\16\33\17\35\20\37\21!\22#\23"+
		"%\24\'\25)\26+\27-\30/\31\61\32\63\33\65\34\67\359\36;\37= ?!A\"C#E$G"+
		"%I&K\'M(O)Q*S+U,W-Y.[/]\60_\61a\62c\63e\64g\65i\2k\2m\2\3\2\7\4\2\f\f"+
		"\17\17\5\2\13\f\17\17\"\"\5\2$$^^pp\5\2C\\aac|\3\2\62;\2\u013f\2\3\3\2"+
		"\2\2\2\5\3\2\2\2\2\7\3\2\2\2\2\t\3\2\2\2\2\13\3\2\2\2\2\r\3\2\2\2\2\17"+
		"\3\2\2\2\2\21\3\2\2\2\2\23\3\2\2\2\2\25\3\2\2\2\2\27\3\2\2\2\2\31\3\2"+
		"\2\2\2\33\3\2\2\2\2\35\3\2\2\2\2\37\3\2\2\2\2!\3\2\2\2\2#\3\2\2\2\2%\3"+
		"\2\2\2\2\'\3\2\2\2\2)\3\2\2\2\2+\3\2\2\2\2-\3\2\2\2\2/\3\2\2\2\2\61\3"+
		"\2\2\2\2\63\3\2\2\2\2\65\3\2\2\2\2\67\3\2\2\2\29\3\2\2\2\2;\3\2\2\2\2"+
		"=\3\2\2\2\2?\3\2\2\2\2A\3\2\2\2\2C\3\2\2\2\2E\3\2\2\2\2G\3\2\2\2\2I\3"+
		"\2\2\2\2K\3\2\2\2\2M\3\2\2\2\2O\3\2\2\2\2Q\3\2\2\2\2S\3\2\2\2\2U\3\2\2"+
		"\2\2W\3\2\2\2\2Y\3\2\2\2\2[\3\2\2\2\2]\3\2\2\2\2_\3\2\2\2\2a\3\2\2\2\2"+
		"c\3\2\2\2\2e\3\2\2\2\2g\3\2\2\2\3o\3\2\2\2\5q\3\2\2\2\7s\3\2\2\2\ty\3"+
		"\2\2\2\13{\3\2\2\2\r}\3\2\2\2\17\177\3\2\2\2\21\u0081\3\2\2\2\23\u0083"+
		"\3\2\2\2\25\u0087\3\2\2\2\27\u0089\3\2\2\2\31\u008b\3\2\2\2\33\u008e\3"+
		"\2\2\2\35\u0091\3\2\2\2\37\u0096\3\2\2\2!\u009e\3\2\2\2#\u00a4\3\2\2\2"+
		"%\u00a8\3\2\2\2\'\u00b1\3\2\2\2)\u00b7\3\2\2\2+\u00be\3\2\2\2-\u00c4\3"+
		"\2\2\2/\u00d1\3\2\2\2\61\u00d3\3\2\2\2\63\u00d8\3\2\2\2\65\u00e2\3\2\2"+
		"\2\67\u00ea\3\2\2\29\u00ec\3\2\2\2;\u00ee\3\2\2\2=\u00f0\3\2\2\2?\u00f2"+
		"\3\2\2\2A\u00f4\3\2\2\2C\u00f6\3\2\2\2E\u00f8\3\2\2\2G\u00fb\3\2\2\2I"+
		"\u00fe\3\2\2\2K\u0101\3\2\2\2M\u0104\3\2\2\2O\u0107\3\2\2\2Q\u010a\3\2"+
		"\2\2S\u010c\3\2\2\2U\u010f\3\2\2\2W\u0112\3\2\2\2Y\u0114\3\2\2\2[\u0116"+
		"\3\2\2\2]\u0118\3\2\2\2_\u011a\3\2\2\2a\u011c\3\2\2\2c\u011f\3\2\2\2e"+
		"\u0122\3\2\2\2g\u012e\3\2\2\2i\u0134\3\2\2\2k\u0137\3\2\2\2m\u0139\3\2"+
		"\2\2op\7=\2\2p\4\3\2\2\2qr\7?\2\2r\6\3\2\2\2st\7e\2\2tu\7n\2\2uv\7c\2"+
		"\2vw\7u\2\2wx\7u\2\2x\b\3\2\2\2yz\7*\2\2z\n\3\2\2\2{|\7.\2\2|\f\3\2\2"+
		"\2}~\7+\2\2~\16\3\2\2\2\177\u0080\7}\2\2\u0080\20\3\2\2\2\u0081\u0082"+
		"\7\177\2\2\u0082\22\3\2\2\2\u0083\u0084\7p\2\2\u0084\u0085\7g\2\2\u0085"+
		"\u0086\7y\2\2\u0086\24\3\2\2\2\u0087\u0088\7]\2\2\u0088\26\3\2\2\2\u0089"+
		"\u008a\7_\2\2\u008a\30\3\2\2\2\u008b\u008c\7]\2\2\u008c\u008d\7_\2\2\u008d"+
		"\32\3\2\2\2\u008e\u008f\7k\2\2\u008f\u0090\7h\2\2\u0090\34\3\2\2\2\u0091"+
		"\u0092\7g\2\2\u0092\u0093\7n\2\2\u0093\u0094\7u\2\2\u0094\u0095\7g\2\2"+
		"\u0095\36\3\2\2\2\u0096\u0097\7g\2\2\u0097\u0098\7n\2\2\u0098\u0099\7"+
		"u\2\2\u0099\u009a\7g\2\2\u009a\u009b\7\"\2\2\u009b\u009c\7k\2\2\u009c"+
		"\u009d\7h\2\2\u009d \3\2\2\2\u009e\u009f\7y\2\2\u009f\u00a0\7j\2\2\u00a0"+
		"\u00a1\7k\2\2\u00a1\u00a2\7n\2\2\u00a2\u00a3\7g\2\2\u00a3\"\3\2\2\2\u00a4"+
		"\u00a5\7h\2\2\u00a5\u00a6\7q\2\2\u00a6\u00a7\7t\2\2\u00a7$\3\2\2\2\u00a8"+
		"\u00a9\7e\2\2\u00a9\u00aa\7q\2\2\u00aa\u00ab\7p\2\2\u00ab\u00ac\7v\2\2"+
		"\u00ac\u00ad\7k\2\2\u00ad\u00ae\7p\2\2\u00ae\u00af\7w\2\2\u00af\u00b0"+
		"\7g\2\2\u00b0&\3\2\2\2\u00b1\u00b2\7d\2\2\u00b2\u00b3\7t\2\2\u00b3\u00b4"+
		"\7g\2\2\u00b4\u00b5\7c\2\2\u00b5\u00b6\7m\2\2\u00b6(\3\2\2\2\u00b7\u00b8"+
		"\7t\2\2\u00b8\u00b9\7g\2\2\u00b9\u00ba\7v\2\2\u00ba\u00bb\7w\2\2\u00bb"+
		"\u00bc\7t\2\2\u00bc\u00bd\7p\2\2\u00bd*\3\2\2\2\u00be\u00bf\7x\2\2\u00bf"+
		"\u00c0\7q\2\2\u00c0\u00c1\7k\2\2\u00c1\u00c2\7f\2\2\u00c2,\3\2\2\2\u00c3"+
		"\u00c5\5m\67\2\u00c4\u00c3\3\2\2\2\u00c5\u00c6\3\2\2\2\u00c6\u00c4\3\2"+
		"\2\2\u00c6\u00c7\3\2\2\2\u00c7.\3\2\2\2\u00c8\u00c9\7v\2\2\u00c9\u00ca"+
		"\7t\2\2\u00ca\u00cb\7w\2\2\u00cb\u00d2\7g\2\2\u00cc\u00cd\7h\2\2\u00cd"+
		"\u00ce\7c\2\2\u00ce\u00cf\7n\2\2\u00cf\u00d0\7u\2\2\u00d0\u00d2\7g\2\2"+
		"\u00d1\u00c8\3\2\2\2\u00d1\u00cc\3\2\2\2\u00d2\60\3\2\2\2\u00d3\u00d4"+
		"\7p\2\2\u00d4\u00d5\7w\2\2\u00d5\u00d6\7n\2\2\u00d6\u00d7\7n\2\2\u00d7"+
		"\62\3\2\2\2\u00d8\u00dd\7$\2\2\u00d9\u00dc\5i\65\2\u00da\u00dc\13\2\2"+
		"\2\u00db\u00d9\3\2\2\2\u00db\u00da\3\2\2\2\u00dc\u00df\3\2\2\2\u00dd\u00de"+
		"\3\2\2\2\u00dd\u00db\3\2\2\2\u00de\u00e0\3\2\2\2\u00df\u00dd\3\2\2\2\u00e0"+
		"\u00e1\7$\2\2\u00e1\64\3\2\2\2\u00e2\u00e7\5k\66\2\u00e3\u00e6\5k\66\2"+
		"\u00e4\u00e6\5m\67\2\u00e5\u00e3\3\2\2\2\u00e5\u00e4\3\2\2\2\u00e6\u00e9"+
		"\3\2\2\2\u00e7\u00e5\3\2\2\2\u00e7\u00e8\3\2\2\2\u00e8\66\3\2\2\2\u00e9"+
		"\u00e7\3\2\2\2\u00ea\u00eb\7-\2\2\u00eb8\3\2\2\2\u00ec\u00ed\7/\2\2\u00ed"+
		":\3\2\2\2\u00ee\u00ef\7,\2\2\u00ef<\3\2\2\2\u00f0\u00f1\7\61\2\2\u00f1"+
		">\3\2\2\2\u00f2\u00f3\7\'\2\2\u00f3@\3\2\2\2\u00f4\u00f5\7>\2\2\u00f5"+
		"B\3\2\2\2\u00f6\u00f7\7@\2\2\u00f7D\3\2\2\2\u00f8\u00f9\7?\2\2\u00f9\u00fa"+
		"\7?\2\2\u00faF\3\2\2\2\u00fb\u00fc\7#\2\2\u00fc\u00fd\7?\2\2\u00fdH\3"+
		"\2\2\2\u00fe\u00ff\7>\2\2\u00ff\u0100\7?\2\2\u0100J\3\2\2\2\u0101\u0102"+
		"\7@\2\2\u0102\u0103\7?\2\2\u0103L\3\2\2\2\u0104\u0105\7-\2\2\u0105\u0106"+
		"\7-\2\2\u0106N\3\2\2\2\u0107\u0108\7/\2\2\u0108\u0109\7/\2\2\u0109P\3"+
		"\2\2\2\u010a\u010b\7\60\2\2\u010bR\3\2\2\2\u010c\u010d\7(\2\2\u010d\u010e"+
		"\7(\2\2\u010eT\3\2\2\2\u010f\u0110\7~\2\2\u0110\u0111\7~\2\2\u0111V\3"+
		"\2\2\2\u0112\u0113\7#\2\2\u0113X\3\2\2\2\u0114\u0115\7(\2\2\u0115Z\3\2"+
		"\2\2\u0116\u0117\7~\2\2\u0117\\\3\2\2\2\u0118\u0119\7\u0080\2\2\u0119"+
		"^\3\2\2\2\u011a\u011b\7`\2\2\u011b`\3\2\2\2\u011c\u011d\7>\2\2\u011d\u011e"+
		"\7>\2\2\u011eb\3\2\2\2\u011f\u0120\7@\2\2\u0120\u0121\7@\2\2\u0121d\3"+
		"\2\2\2\u0122\u0123\7\61\2\2\u0123\u0124\7\61\2\2\u0124\u0128\3\2\2\2\u0125"+
		"\u0127\n\2\2\2\u0126\u0125\3\2\2\2\u0127\u012a\3\2\2\2\u0128\u0126\3\2"+
		"\2\2\u0128\u0129\3\2\2\2\u0129\u012b\3\2\2\2\u012a\u0128\3\2\2\2\u012b"+
		"\u012c\b\63\2\2\u012cf\3\2\2\2\u012d\u012f\t\3\2\2\u012e\u012d\3\2\2\2"+
		"\u012f\u0130\3\2\2\2\u0130\u012e\3\2\2\2\u0130\u0131\3\2\2\2\u0131\u0132"+
		"\3\2\2\2\u0132\u0133\b\64\2\2\u0133h\3\2\2\2\u0134\u0135\7^\2\2\u0135"+
		"\u0136\t\4\2\2\u0136j\3\2\2\2\u0137\u0138\t\5\2\2\u0138l\3\2\2\2\u0139"+
		"\u013a\t\6\2\2\u013an\3\2\2\2\13\2\u00c6\u00d1\u00db\u00dd\u00e5\u00e7"+
		"\u0128\u0130\3\b\2\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}