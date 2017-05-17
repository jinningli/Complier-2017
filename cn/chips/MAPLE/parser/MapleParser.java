// Generated from /Users/lijinning/Desktop/Compiler - 2017/MAPLE/Compiler/FrontEnd/Maple.g4 by ANTLR 4.7
package cn.chips.MAPLE.parser;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class MapleParser extends Parser {
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
	public static final int
		RULE_program = 0, RULE_decl = 1, RULE_varDecl = 2, RULE_classDecl = 3, 
		RULE_typePro = 4, RULE_funcList = 5, RULE_funcDecl = 6, RULE_block = 7, 
		RULE_blockDecl = 8, RULE_exprBkt = 9, RULE_stmt = 10, RULE_ifStmt = 11, 
		RULE_forStmt = 12, RULE_whileStmt = 13, RULE_exprList = 14, RULE_expr = 15, 
		RULE_type = 16, RULE_ptrBracket = 17, RULE_constant = 18;
	public static final String[] ruleNames = {
		"program", "decl", "varDecl", "classDecl", "typePro", "funcList", "funcDecl", 
		"block", "blockDecl", "exprBkt", "stmt", "ifStmt", "forStmt", "whileStmt", 
		"exprList", "expr", "type", "ptrBracket", "constant"
	};

	private static final String[] _LITERAL_NAMES = {
		null, "';'", "'='", "'class'", "'{'", "'}'", "'('", "','", "')'", "'['", 
		"']'", "'new'", "'bool'", "'int'", "'string'", "'if'", "'else'", "'else if'", 
		"'while'", "'for'", "'continue'", "'break'", "'return'", "'void'", null, 
		null, "'null'", null, null, "'+'", "'-'", "'*'", "'/'", "'%'", "'<'", 
		"'>'", "'=='", "'!='", "'<='", "'>='", "'++'", "'--'", "'.'", "'&&'", 
		"'||'", "'!'", "'&'", "'|'", "'~'", "'^'", "'<<'", "'>>'"
	};
	private static final String[] _SYMBOLIC_NAMES = {
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

	@Override
	public String getGrammarFileName() { return "Maple.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public MapleParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}
	public static class ProgramContext extends ParserRuleContext {
		public TerminalNode EOF() { return getToken(MapleParser.EOF, 0); }
		public List<DeclContext> decl() {
			return getRuleContexts(DeclContext.class);
		}
		public DeclContext decl(int i) {
			return getRuleContext(DeclContext.class,i);
		}
		public ProgramContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_program; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterProgram(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitProgram(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitProgram(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ProgramContext program() throws RecognitionException {
		ProgramContext _localctx = new ProgramContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_program);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(41);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__2) | (1L << T__8) | (1L << T__11) | (1L << T__12) | (1L << T__13) | (1L << VOID) | (1L << ID))) != 0)) {
				{
				{
				setState(38);
				decl();
				}
				}
				setState(43);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(44);
			match(EOF);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class DeclContext extends ParserRuleContext {
		public VarDeclContext varDecl() {
			return getRuleContext(VarDeclContext.class,0);
		}
		public FuncDeclContext funcDecl() {
			return getRuleContext(FuncDeclContext.class,0);
		}
		public ClassDeclContext classDecl() {
			return getRuleContext(ClassDeclContext.class,0);
		}
		public DeclContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_decl; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterDecl(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitDecl(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitDecl(this);
			else return visitor.visitChildren(this);
		}
	}

	public final DeclContext decl() throws RecognitionException {
		DeclContext _localctx = new DeclContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_decl);
		try {
			setState(49);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,1,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(46);
				varDecl();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(47);
				funcDecl();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(48);
				classDecl();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class VarDeclContext extends ParserRuleContext {
		public TypeProContext typePro() {
			return getRuleContext(TypeProContext.class,0);
		}
		public TerminalNode ID() { return getToken(MapleParser.ID, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public VarDeclContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_varDecl; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterVarDecl(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitVarDecl(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitVarDecl(this);
			else return visitor.visitChildren(this);
		}
	}

	public final VarDeclContext varDecl() throws RecognitionException {
		VarDeclContext _localctx = new VarDeclContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_varDecl);
		try {
			setState(61);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,2,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(51);
				typePro();
				setState(52);
				match(ID);
				setState(53);
				match(T__0);
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(55);
				typePro();
				setState(56);
				match(ID);
				setState(57);
				match(T__1);
				setState(58);
				expr(0);
				setState(59);
				match(T__0);
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ClassDeclContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(MapleParser.ID, 0); }
		public List<BlockDeclContext> blockDecl() {
			return getRuleContexts(BlockDeclContext.class);
		}
		public BlockDeclContext blockDecl(int i) {
			return getRuleContext(BlockDeclContext.class,i);
		}
		public ClassDeclContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_classDecl; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterClassDecl(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitClassDecl(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitClassDecl(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ClassDeclContext classDecl() throws RecognitionException {
		ClassDeclContext _localctx = new ClassDeclContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_classDecl);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(63);
			match(T__2);
			setState(64);
			match(ID);
			setState(65);
			match(T__3);
			setState(69);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__8) | (1L << T__11) | (1L << T__12) | (1L << T__13) | (1L << VOID) | (1L << ID))) != 0)) {
				{
				{
				setState(66);
				blockDecl();
				}
				}
				setState(71);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(72);
			match(T__4);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class TypeProContext extends ParserRuleContext {
		public PtrBracketContext ptrBracket() {
			return getRuleContext(PtrBracketContext.class,0);
		}
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public TypeProContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_typePro; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterTypePro(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitTypePro(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitTypePro(this);
			else return visitor.visitChildren(this);
		}
	}

	public final TypeProContext typePro() throws RecognitionException {
		TypeProContext _localctx = new TypeProContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_typePro);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(75);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,4,_ctx) ) {
			case 1:
				{
				setState(74);
				type();
				}
				break;
			}
			setState(77);
			ptrBracket();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FuncListContext extends ParserRuleContext {
		public List<TypeProContext> typePro() {
			return getRuleContexts(TypeProContext.class);
		}
		public TypeProContext typePro(int i) {
			return getRuleContext(TypeProContext.class,i);
		}
		public List<TerminalNode> ID() { return getTokens(MapleParser.ID); }
		public TerminalNode ID(int i) {
			return getToken(MapleParser.ID, i);
		}
		public FuncListContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_funcList; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterFuncList(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitFuncList(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitFuncList(this);
			else return visitor.visitChildren(this);
		}
	}

	public final FuncListContext funcList() throws RecognitionException {
		FuncListContext _localctx = new FuncListContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_funcList);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(79);
			match(T__5);
			setState(91);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__8) | (1L << T__11) | (1L << T__12) | (1L << T__13) | (1L << VOID) | (1L << ID))) != 0)) {
				{
				setState(80);
				typePro();
				setState(81);
				match(ID);
				setState(88);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==T__6) {
					{
					{
					setState(82);
					match(T__6);
					setState(83);
					typePro();
					setState(84);
					match(ID);
					}
					}
					setState(90);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				}
			}

			setState(93);
			match(T__7);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class FuncDeclContext extends ParserRuleContext {
		public TypeProContext typePro() {
			return getRuleContext(TypeProContext.class,0);
		}
		public TerminalNode ID() { return getToken(MapleParser.ID, 0); }
		public FuncListContext funcList() {
			return getRuleContext(FuncListContext.class,0);
		}
		public BlockContext block() {
			return getRuleContext(BlockContext.class,0);
		}
		public FuncDeclContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_funcDecl; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterFuncDecl(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitFuncDecl(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitFuncDecl(this);
			else return visitor.visitChildren(this);
		}
	}

	public final FuncDeclContext funcDecl() throws RecognitionException {
		FuncDeclContext _localctx = new FuncDeclContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_funcDecl);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(95);
			typePro();
			setState(96);
			match(ID);
			setState(97);
			funcList();
			setState(98);
			block();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class BlockContext extends ParserRuleContext {
		public List<StmtContext> stmt() {
			return getRuleContexts(StmtContext.class);
		}
		public StmtContext stmt(int i) {
			return getRuleContext(StmtContext.class,i);
		}
		public BlockContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_block; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterBlock(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitBlock(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitBlock(this);
			else return visitor.visitChildren(this);
		}
	}

	public final BlockContext block() throws RecognitionException {
		BlockContext _localctx = new BlockContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_block);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(100);
			match(T__3);
			setState(104);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__3) | (1L << T__5) | (1L << T__8) | (1L << T__10) | (1L << T__11) | (1L << T__12) | (1L << T__13) | (1L << IF) | (1L << WHILE) | (1L << FOR) | (1L << CONTINUE) | (1L << BREAK) | (1L << RETURN) | (1L << VOID) | (1L << INT) | (1L << BOOL) | (1L << NULL) | (1L << STRING) | (1L << ID) | (1L << PLUS) | (1L << MINUS) | (1L << PLUSPLUS) | (1L << MINUSMINUS) | (1L << NOT) | (1L << BNOT))) != 0)) {
				{
				{
				setState(101);
				stmt();
				}
				}
				setState(106);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(107);
			match(T__4);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class BlockDeclContext extends ParserRuleContext {
		public VarDeclContext varDecl() {
			return getRuleContext(VarDeclContext.class,0);
		}
		public FuncDeclContext funcDecl() {
			return getRuleContext(FuncDeclContext.class,0);
		}
		public BlockDeclContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_blockDecl; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterBlockDecl(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitBlockDecl(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitBlockDecl(this);
			else return visitor.visitChildren(this);
		}
	}

	public final BlockDeclContext blockDecl() throws RecognitionException {
		BlockDeclContext _localctx = new BlockDeclContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_blockDecl);
		try {
			setState(111);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,8,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(109);
				varDecl();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(110);
				funcDecl();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExprBktContext extends ParserRuleContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ExprBktContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_exprBkt; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterExprBkt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitExprBkt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitExprBkt(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ExprBktContext exprBkt() throws RecognitionException {
		ExprBktContext _localctx = new ExprBktContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_exprBkt);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(113);
			match(T__5);
			setState(114);
			expr(0);
			setState(115);
			match(T__7);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class StmtContext extends ParserRuleContext {
		public StmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_stmt; }
	 
		public StmtContext() { }
		public void copyFrom(StmtContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class IfStatementContext extends StmtContext {
		public IfStmtContext ifStmt() {
			return getRuleContext(IfStmtContext.class,0);
		}
		public IfStatementContext(StmtContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterIfStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitIfStatement(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitIfStatement(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class VarDeclareContext extends StmtContext {
		public VarDeclContext varDecl() {
			return getRuleContext(VarDeclContext.class,0);
		}
		public VarDeclareContext(StmtContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterVarDeclare(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitVarDeclare(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitVarDeclare(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ControlStatementContext extends StmtContext {
		public Token operation;
		public TerminalNode BREAK() { return getToken(MapleParser.BREAK, 0); }
		public TerminalNode CONTINUE() { return getToken(MapleParser.CONTINUE, 0); }
		public ControlStatementContext(StmtContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterControlStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitControlStatement(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitControlStatement(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ExprStatementContext extends StmtContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ExprStatementContext(StmtContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterExprStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitExprStatement(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitExprStatement(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ReturnStatementContext extends StmtContext {
		public TerminalNode RETURN() { return getToken(MapleParser.RETURN, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public ReturnStatementContext(StmtContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterReturnStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitReturnStatement(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitReturnStatement(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class BlockStatementContext extends StmtContext {
		public BlockContext block() {
			return getRuleContext(BlockContext.class,0);
		}
		public BlockStatementContext(StmtContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterBlockStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitBlockStatement(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitBlockStatement(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class WhileStatementContext extends StmtContext {
		public WhileStmtContext whileStmt() {
			return getRuleContext(WhileStmtContext.class,0);
		}
		public WhileStatementContext(StmtContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterWhileStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitWhileStatement(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitWhileStatement(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ForStatementContext extends StmtContext {
		public ForStmtContext forStmt() {
			return getRuleContext(ForStmtContext.class,0);
		}
		public ForStatementContext(StmtContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterForStatement(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitForStatement(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitForStatement(this);
			else return visitor.visitChildren(this);
		}
	}

	public final StmtContext stmt() throws RecognitionException {
		StmtContext _localctx = new StmtContext(_ctx, getState());
		enterRule(_localctx, 20, RULE_stmt);
		int _la;
		try {
			setState(133);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,11,_ctx) ) {
			case 1:
				_localctx = new ExprStatementContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(118);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__5) | (1L << T__10) | (1L << INT) | (1L << BOOL) | (1L << NULL) | (1L << STRING) | (1L << ID) | (1L << PLUS) | (1L << MINUS) | (1L << PLUSPLUS) | (1L << MINUSMINUS) | (1L << NOT) | (1L << BNOT))) != 0)) {
					{
					setState(117);
					expr(0);
					}
				}

				setState(120);
				match(T__0);
				}
				break;
			case 2:
				_localctx = new BlockStatementContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(121);
				block();
				}
				break;
			case 3:
				_localctx = new IfStatementContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(122);
				ifStmt();
				}
				break;
			case 4:
				_localctx = new ForStatementContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(123);
				forStmt();
				}
				break;
			case 5:
				_localctx = new WhileStatementContext(_localctx);
				enterOuterAlt(_localctx, 5);
				{
				setState(124);
				whileStmt();
				}
				break;
			case 6:
				_localctx = new ReturnStatementContext(_localctx);
				enterOuterAlt(_localctx, 6);
				{
				setState(125);
				match(RETURN);
				setState(127);
				_errHandler.sync(this);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__5) | (1L << T__10) | (1L << INT) | (1L << BOOL) | (1L << NULL) | (1L << STRING) | (1L << ID) | (1L << PLUS) | (1L << MINUS) | (1L << PLUSPLUS) | (1L << MINUSMINUS) | (1L << NOT) | (1L << BNOT))) != 0)) {
					{
					setState(126);
					expr(0);
					}
				}

				setState(129);
				match(T__0);
				}
				break;
			case 7:
				_localctx = new ControlStatementContext(_localctx);
				enterOuterAlt(_localctx, 7);
				{
				setState(130);
				((ControlStatementContext)_localctx).operation = _input.LT(1);
				_la = _input.LA(1);
				if ( !(_la==CONTINUE || _la==BREAK) ) {
					((ControlStatementContext)_localctx).operation = (Token)_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(131);
				match(T__0);
				}
				break;
			case 8:
				_localctx = new VarDeclareContext(_localctx);
				enterOuterAlt(_localctx, 8);
				{
				setState(132);
				varDecl();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class IfStmtContext extends ParserRuleContext {
		public TerminalNode IF() { return getToken(MapleParser.IF, 0); }
		public List<ExprBktContext> exprBkt() {
			return getRuleContexts(ExprBktContext.class);
		}
		public ExprBktContext exprBkt(int i) {
			return getRuleContext(ExprBktContext.class,i);
		}
		public List<StmtContext> stmt() {
			return getRuleContexts(StmtContext.class);
		}
		public StmtContext stmt(int i) {
			return getRuleContext(StmtContext.class,i);
		}
		public TerminalNode ELSE() { return getToken(MapleParser.ELSE, 0); }
		public List<TerminalNode> ELSEIF() { return getTokens(MapleParser.ELSEIF); }
		public TerminalNode ELSEIF(int i) {
			return getToken(MapleParser.ELSEIF, i);
		}
		public IfStmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_ifStmt; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterIfStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitIfStmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitIfStmt(this);
			else return visitor.visitChildren(this);
		}
	}

	public final IfStmtContext ifStmt() throws RecognitionException {
		IfStmtContext _localctx = new IfStmtContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_ifStmt);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(135);
			match(IF);
			setState(136);
			exprBkt();
			setState(137);
			stmt();
			setState(149);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,13,_ctx) ) {
			case 1:
				{
				setState(144);
				_errHandler.sync(this);
				_la = _input.LA(1);
				while (_la==ELSEIF) {
					{
					{
					setState(138);
					match(ELSEIF);
					setState(139);
					exprBkt();
					setState(140);
					stmt();
					}
					}
					setState(146);
					_errHandler.sync(this);
					_la = _input.LA(1);
				}
				setState(147);
				match(ELSE);
				setState(148);
				stmt();
				}
				break;
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ForStmtContext extends ParserRuleContext {
		public ExprContext first;
		public ExprContext second;
		public ExprContext thirld;
		public TerminalNode FOR() { return getToken(MapleParser.FOR, 0); }
		public StmtContext stmt() {
			return getRuleContext(StmtContext.class,0);
		}
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public ForStmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_forStmt; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterForStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitForStmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitForStmt(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ForStmtContext forStmt() throws RecognitionException {
		ForStmtContext _localctx = new ForStmtContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_forStmt);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(151);
			match(FOR);
			setState(152);
			match(T__5);
			setState(154);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__5) | (1L << T__10) | (1L << INT) | (1L << BOOL) | (1L << NULL) | (1L << STRING) | (1L << ID) | (1L << PLUS) | (1L << MINUS) | (1L << PLUSPLUS) | (1L << MINUSMINUS) | (1L << NOT) | (1L << BNOT))) != 0)) {
				{
				setState(153);
				((ForStmtContext)_localctx).first = expr(0);
				}
			}

			setState(156);
			match(T__0);
			setState(158);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__5) | (1L << T__10) | (1L << INT) | (1L << BOOL) | (1L << NULL) | (1L << STRING) | (1L << ID) | (1L << PLUS) | (1L << MINUS) | (1L << PLUSPLUS) | (1L << MINUSMINUS) | (1L << NOT) | (1L << BNOT))) != 0)) {
				{
				setState(157);
				((ForStmtContext)_localctx).second = expr(0);
				}
			}

			setState(160);
			match(T__0);
			setState(162);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__5) | (1L << T__10) | (1L << INT) | (1L << BOOL) | (1L << NULL) | (1L << STRING) | (1L << ID) | (1L << PLUS) | (1L << MINUS) | (1L << PLUSPLUS) | (1L << MINUSMINUS) | (1L << NOT) | (1L << BNOT))) != 0)) {
				{
				setState(161);
				((ForStmtContext)_localctx).thirld = expr(0);
				}
			}

			setState(164);
			match(T__7);
			setState(165);
			stmt();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class WhileStmtContext extends ParserRuleContext {
		public TerminalNode WHILE() { return getToken(MapleParser.WHILE, 0); }
		public ExprBktContext exprBkt() {
			return getRuleContext(ExprBktContext.class,0);
		}
		public StmtContext stmt() {
			return getRuleContext(StmtContext.class,0);
		}
		public WhileStmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_whileStmt; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterWhileStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitWhileStmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitWhileStmt(this);
			else return visitor.visitChildren(this);
		}
	}

	public final WhileStmtContext whileStmt() throws RecognitionException {
		WhileStmtContext _localctx = new WhileStmtContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_whileStmt);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(167);
			match(WHILE);
			setState(168);
			exprBkt();
			setState(169);
			stmt();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExprListContext extends ParserRuleContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public ExprListContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_exprList; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterExprList(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitExprList(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitExprList(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ExprListContext exprList() throws RecognitionException {
		ExprListContext _localctx = new ExprListContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_exprList);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(171);
			match(T__5);
			setState(173);
			_errHandler.sync(this);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__5) | (1L << T__10) | (1L << INT) | (1L << BOOL) | (1L << NULL) | (1L << STRING) | (1L << ID) | (1L << PLUS) | (1L << MINUS) | (1L << PLUSPLUS) | (1L << MINUSMINUS) | (1L << NOT) | (1L << BNOT))) != 0)) {
				{
				setState(172);
				expr(0);
				}
			}

			setState(179);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__6) {
				{
				{
				setState(175);
				match(T__6);
				setState(176);
				expr(0);
				}
				}
				setState(181);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(182);
			match(T__7);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExprContext extends ParserRuleContext {
		public ExprContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expr; }
	 
		public ExprContext() { }
		public void copyFrom(ExprContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class MemberFunctionContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public TerminalNode DOT() { return getToken(MapleParser.DOT, 0); }
		public TerminalNode ID() { return getToken(MapleParser.ID, 0); }
		public ExprListContext exprList() {
			return getRuleContext(ExprListContext.class,0);
		}
		public MemberFunctionContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterMemberFunction(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitMemberFunction(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitMemberFunction(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ArrIndexContext extends ExprContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public ArrIndexContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterArrIndex(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitArrIndex(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitArrIndex(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class BinaryBitOperationContext extends ExprContext {
		public Token operation;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public TerminalNode BAND() { return getToken(MapleParser.BAND, 0); }
		public TerminalNode BXOR() { return getToken(MapleParser.BXOR, 0); }
		public TerminalNode BOR() { return getToken(MapleParser.BOR, 0); }
		public BinaryBitOperationContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterBinaryBitOperation(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitBinaryBitOperation(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitBinaryBitOperation(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class SignExpressionContext extends ExprContext {
		public Token operation;
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public TerminalNode MINUS() { return getToken(MapleParser.MINUS, 0); }
		public TerminalNode PLUS() { return getToken(MapleParser.PLUS, 0); }
		public SignExpressionContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterSignExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitSignExpression(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitSignExpression(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class BinaryBitMovContext extends ExprContext {
		public Token operation;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public TerminalNode BMOV_L() { return getToken(MapleParser.BMOV_L, 0); }
		public TerminalNode BMOV_R() { return getToken(MapleParser.BMOV_R, 0); }
		public BinaryBitMovContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterBinaryBitMov(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitBinaryBitMov(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitBinaryBitMov(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class BitNotOperationContext extends ExprContext {
		public TerminalNode BNOT() { return getToken(MapleParser.BNOT, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public BitNotOperationContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterBitNotOperation(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitBitNotOperation(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitBitNotOperation(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class NotOperationContext extends ExprContext {
		public TerminalNode NOT() { return getToken(MapleParser.NOT, 0); }
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public NotOperationContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterNotOperation(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitNotOperation(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitNotOperation(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ExprWithBracketContext extends ExprContext {
		public ExprBktContext exprBkt() {
			return getRuleContext(ExprBktContext.class,0);
		}
		public ExprWithBracketContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterExprWithBracket(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitExprWithBracket(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitExprWithBracket(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class NewOperationContext extends ExprContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public PtrBracketContext ptrBracket() {
			return getRuleContext(PtrBracketContext.class,0);
		}
		public NewOperationContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterNewOperation(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitNewOperation(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitNewOperation(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class PostSelfOpContext extends ExprContext {
		public Token operation;
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public TerminalNode PLUSPLUS() { return getToken(MapleParser.PLUSPLUS, 0); }
		public TerminalNode MINUSMINUS() { return getToken(MapleParser.MINUSMINUS, 0); }
		public PostSelfOpContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterPostSelfOp(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitPostSelfOp(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitPostSelfOp(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class PreSelfOpContext extends ExprContext {
		public Token operation;
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public TerminalNode PLUSPLUS() { return getToken(MapleParser.PLUSPLUS, 0); }
		public TerminalNode MINUSMINUS() { return getToken(MapleParser.MINUSMINUS, 0); }
		public PreSelfOpContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterPreSelfOp(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitPreSelfOp(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitPreSelfOp(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class IdentifierContext extends ExprContext {
		public TerminalNode ID() { return getToken(MapleParser.ID, 0); }
		public IdentifierContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterIdentifier(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitIdentifier(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitIdentifier(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class BinaryExpressionContext extends ExprContext {
		public Token operation;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public TerminalNode MUL() { return getToken(MapleParser.MUL, 0); }
		public TerminalNode DIV() { return getToken(MapleParser.DIV, 0); }
		public TerminalNode MOD() { return getToken(MapleParser.MOD, 0); }
		public TerminalNode PLUS() { return getToken(MapleParser.PLUS, 0); }
		public TerminalNode MINUS() { return getToken(MapleParser.MINUS, 0); }
		public BinaryExpressionContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterBinaryExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitBinaryExpression(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitBinaryExpression(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class LogicExpressionContext extends ExprContext {
		public Token operation;
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public TerminalNode LESS() { return getToken(MapleParser.LESS, 0); }
		public TerminalNode LARGE() { return getToken(MapleParser.LARGE, 0); }
		public TerminalNode LESSEQ() { return getToken(MapleParser.LESSEQ, 0); }
		public TerminalNode LARGEEQ() { return getToken(MapleParser.LARGEEQ, 0); }
		public TerminalNode EQ() { return getToken(MapleParser.EQ, 0); }
		public TerminalNode NEQ() { return getToken(MapleParser.NEQ, 0); }
		public TerminalNode AND() { return getToken(MapleParser.AND, 0); }
		public TerminalNode OR() { return getToken(MapleParser.OR, 0); }
		public LogicExpressionContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterLogicExpression(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitLogicExpression(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitLogicExpression(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class AssignContext extends ExprContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public AssignContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterAssign(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitAssign(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitAssign(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class FunctionCallContext extends ExprContext {
		public TerminalNode ID() { return getToken(MapleParser.ID, 0); }
		public ExprListContext exprList() {
			return getRuleContext(ExprListContext.class,0);
		}
		public FunctionCallContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterFunctionCall(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitFunctionCall(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitFunctionCall(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ConstantValueContext extends ExprContext {
		public ConstantContext constant() {
			return getRuleContext(ConstantContext.class,0);
		}
		public ConstantValueContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterConstantValue(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitConstantValue(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitConstantValue(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class MemberContext extends ExprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public TerminalNode DOT() { return getToken(MapleParser.DOT, 0); }
		public TerminalNode ID() { return getToken(MapleParser.ID, 0); }
		public MemberContext(ExprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterMember(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitMember(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitMember(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ExprContext expr() throws RecognitionException {
		return expr(0);
	}

	private ExprContext expr(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		ExprContext _localctx = new ExprContext(_ctx, _parentState);
		ExprContext _prevctx = _localctx;
		int _startState = 30;
		enterRecursionRule(_localctx, 30, RULE_expr, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(207);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,20,_ctx) ) {
			case 1:
				{
				_localctx = new ExprWithBracketContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(185);
				exprBkt();
				}
				break;
			case 2:
				{
				_localctx = new ConstantValueContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(186);
				constant();
				}
				break;
			case 3:
				{
				_localctx = new IdentifierContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(187);
				match(ID);
				}
				break;
			case 4:
				{
				_localctx = new FunctionCallContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(188);
				match(ID);
				setState(189);
				exprList();
				}
				break;
			case 5:
				{
				_localctx = new NewOperationContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(190);
				match(T__10);
				setState(191);
				type();
				setState(197);
				_errHandler.sync(this);
				switch ( getInterpreter().adaptivePredict(_input,19,_ctx) ) {
				case 1:
					{
					setState(192);
					match(T__8);
					setState(193);
					expr(0);
					setState(194);
					match(T__9);
					setState(195);
					ptrBracket();
					}
					break;
				}
				}
				break;
			case 6:
				{
				_localctx = new SignExpressionContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(199);
				((SignExpressionContext)_localctx).operation = _input.LT(1);
				_la = _input.LA(1);
				if ( !(_la==PLUS || _la==MINUS) ) {
					((SignExpressionContext)_localctx).operation = (Token)_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(200);
				expr(13);
				}
				break;
			case 7:
				{
				_localctx = new PreSelfOpContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(201);
				((PreSelfOpContext)_localctx).operation = _input.LT(1);
				_la = _input.LA(1);
				if ( !(_la==PLUSPLUS || _la==MINUSMINUS) ) {
					((PreSelfOpContext)_localctx).operation = (Token)_errHandler.recoverInline(this);
				}
				else {
					if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
					_errHandler.reportMatch(this);
					consume();
				}
				setState(202);
				expr(5);
				}
				break;
			case 8:
				{
				_localctx = new NotOperationContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(203);
				match(NOT);
				setState(204);
				expr(3);
				}
				break;
			case 9:
				{
				_localctx = new BitNotOperationContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(205);
				match(BNOT);
				setState(206);
				expr(2);
				}
				break;
			}
			_ctx.stop = _input.LT(-1);
			setState(249);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,22,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(247);
					_errHandler.sync(this);
					switch ( getInterpreter().adaptivePredict(_input,21,_ctx) ) {
					case 1:
						{
						_localctx = new BinaryExpressionContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(209);
						if (!(precpred(_ctx, 12))) throw new FailedPredicateException(this, "precpred(_ctx, 12)");
						setState(210);
						((BinaryExpressionContext)_localctx).operation = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << MUL) | (1L << DIV) | (1L << MOD))) != 0)) ) {
							((BinaryExpressionContext)_localctx).operation = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(211);
						expr(13);
						}
						break;
					case 2:
						{
						_localctx = new BinaryExpressionContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(212);
						if (!(precpred(_ctx, 11))) throw new FailedPredicateException(this, "precpred(_ctx, 11)");
						setState(213);
						((BinaryExpressionContext)_localctx).operation = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==PLUS || _la==MINUS) ) {
							((BinaryExpressionContext)_localctx).operation = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(214);
						expr(12);
						}
						break;
					case 3:
						{
						_localctx = new BinaryBitOperationContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(215);
						if (!(precpred(_ctx, 10))) throw new FailedPredicateException(this, "precpred(_ctx, 10)");
						setState(216);
						((BinaryBitOperationContext)_localctx).operation = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << BAND) | (1L << BOR) | (1L << BXOR))) != 0)) ) {
							((BinaryBitOperationContext)_localctx).operation = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(217);
						expr(11);
						}
						break;
					case 4:
						{
						_localctx = new BinaryBitMovContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(218);
						if (!(precpred(_ctx, 9))) throw new FailedPredicateException(this, "precpred(_ctx, 9)");
						setState(219);
						((BinaryBitMovContext)_localctx).operation = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==BMOV_L || _la==BMOV_R) ) {
							((BinaryBitMovContext)_localctx).operation = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(220);
						expr(10);
						}
						break;
					case 5:
						{
						_localctx = new LogicExpressionContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(221);
						if (!(precpred(_ctx, 8))) throw new FailedPredicateException(this, "precpred(_ctx, 8)");
						setState(222);
						((LogicExpressionContext)_localctx).operation = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << LESS) | (1L << LARGE) | (1L << LESSEQ) | (1L << LARGEEQ))) != 0)) ) {
							((LogicExpressionContext)_localctx).operation = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(223);
						expr(9);
						}
						break;
					case 6:
						{
						_localctx = new LogicExpressionContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(224);
						if (!(precpred(_ctx, 7))) throw new FailedPredicateException(this, "precpred(_ctx, 7)");
						setState(225);
						((LogicExpressionContext)_localctx).operation = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==EQ || _la==NEQ) ) {
							((LogicExpressionContext)_localctx).operation = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(226);
						expr(8);
						}
						break;
					case 7:
						{
						_localctx = new LogicExpressionContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(227);
						if (!(precpred(_ctx, 6))) throw new FailedPredicateException(this, "precpred(_ctx, 6)");
						setState(228);
						((LogicExpressionContext)_localctx).operation = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==AND || _la==OR) ) {
							((LogicExpressionContext)_localctx).operation = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						setState(229);
						expr(7);
						}
						break;
					case 8:
						{
						_localctx = new AssignContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(230);
						if (!(precpred(_ctx, 1))) throw new FailedPredicateException(this, "precpred(_ctx, 1)");
						setState(231);
						match(T__1);
						setState(232);
						expr(1);
						}
						break;
					case 9:
						{
						_localctx = new MemberContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(233);
						if (!(precpred(_ctx, 17))) throw new FailedPredicateException(this, "precpred(_ctx, 17)");
						setState(234);
						match(DOT);
						setState(235);
						match(ID);
						}
						break;
					case 10:
						{
						_localctx = new MemberFunctionContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(236);
						if (!(precpred(_ctx, 16))) throw new FailedPredicateException(this, "precpred(_ctx, 16)");
						setState(237);
						match(DOT);
						setState(238);
						match(ID);
						setState(239);
						exprList();
						}
						break;
					case 11:
						{
						_localctx = new ArrIndexContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(240);
						if (!(precpred(_ctx, 15))) throw new FailedPredicateException(this, "precpred(_ctx, 15)");
						setState(241);
						match(T__8);
						setState(242);
						expr(0);
						setState(243);
						match(T__9);
						}
						break;
					case 12:
						{
						_localctx = new PostSelfOpContext(new ExprContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expr);
						setState(245);
						if (!(precpred(_ctx, 4))) throw new FailedPredicateException(this, "precpred(_ctx, 4)");
						setState(246);
						((PostSelfOpContext)_localctx).operation = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==PLUSPLUS || _la==MINUSMINUS) ) {
							((PostSelfOpContext)_localctx).operation = (Token)_errHandler.recoverInline(this);
						}
						else {
							if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
							_errHandler.reportMatch(this);
							consume();
						}
						}
						break;
					}
					} 
				}
				setState(251);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,22,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	public static class TypeContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(MapleParser.ID, 0); }
		public TerminalNode VOID() { return getToken(MapleParser.VOID, 0); }
		public TypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_type; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterType(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitType(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitType(this);
			else return visitor.visitChildren(this);
		}
	}

	public final TypeContext type() throws RecognitionException {
		TypeContext _localctx = new TypeContext(_ctx, getState());
		enterRule(_localctx, 32, RULE_type);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(252);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__11) | (1L << T__12) | (1L << T__13) | (1L << VOID) | (1L << ID))) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class PtrBracketContext extends ParserRuleContext {
		public PtrBracketContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_ptrBracket; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterPtrBracket(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitPtrBracket(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitPtrBracket(this);
			else return visitor.visitChildren(this);
		}
	}

	public final PtrBracketContext ptrBracket() throws RecognitionException {
		PtrBracketContext _localctx = new PtrBracketContext(_ctx, getState());
		enterRule(_localctx, 34, RULE_ptrBracket);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(258);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,23,_ctx);
			while ( _alt!=1 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1+1 ) {
					{
					{
					setState(254);
					match(T__8);
					setState(255);
					match(T__9);
					}
					} 
				}
				setState(260);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,23,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ConstantContext extends ParserRuleContext {
		public TerminalNode NULL() { return getToken(MapleParser.NULL, 0); }
		public TerminalNode INT() { return getToken(MapleParser.INT, 0); }
		public TerminalNode STRING() { return getToken(MapleParser.STRING, 0); }
		public TerminalNode BOOL() { return getToken(MapleParser.BOOL, 0); }
		public ConstantContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_constant; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).enterConstant(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof MapleListener ) ((MapleListener)listener).exitConstant(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof MapleVisitor ) return ((MapleVisitor<? extends T>)visitor).visitConstant(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ConstantContext constant() throws RecognitionException {
		ConstantContext _localctx = new ConstantContext(_ctx, getState());
		enterRule(_localctx, 36, RULE_constant);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(261);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << INT) | (1L << BOOL) | (1L << NULL) | (1L << STRING))) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public boolean sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
		switch (ruleIndex) {
		case 15:
			return expr_sempred((ExprContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean expr_sempred(ExprContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 12);
		case 1:
			return precpred(_ctx, 11);
		case 2:
			return precpred(_ctx, 10);
		case 3:
			return precpred(_ctx, 9);
		case 4:
			return precpred(_ctx, 8);
		case 5:
			return precpred(_ctx, 7);
		case 6:
			return precpred(_ctx, 6);
		case 7:
			return precpred(_ctx, 1);
		case 8:
			return precpred(_ctx, 17);
		case 9:
			return precpred(_ctx, 16);
		case 10:
			return precpred(_ctx, 15);
		case 11:
			return precpred(_ctx, 4);
		}
		return true;
	}

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3\67\u010a\4\2\t\2"+
		"\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13"+
		"\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\4\24\t\24\3\2\7\2*\n\2\f\2\16\2-\13\2\3\2\3\2\3\3\3\3\3\3\5"+
		"\3\64\n\3\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\4\5\4@\n\4\3\5\3\5\3\5"+
		"\3\5\7\5F\n\5\f\5\16\5I\13\5\3\5\3\5\3\6\5\6N\n\6\3\6\3\6\3\7\3\7\3\7"+
		"\3\7\3\7\3\7\3\7\7\7Y\n\7\f\7\16\7\\\13\7\5\7^\n\7\3\7\3\7\3\b\3\b\3\b"+
		"\3\b\3\b\3\t\3\t\7\ti\n\t\f\t\16\tl\13\t\3\t\3\t\3\n\3\n\5\nr\n\n\3\13"+
		"\3\13\3\13\3\13\3\f\5\fy\n\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\5\f\u0082\n\f"+
		"\3\f\3\f\3\f\3\f\5\f\u0088\n\f\3\r\3\r\3\r\3\r\3\r\3\r\3\r\7\r\u0091\n"+
		"\r\f\r\16\r\u0094\13\r\3\r\3\r\5\r\u0098\n\r\3\16\3\16\3\16\5\16\u009d"+
		"\n\16\3\16\3\16\5\16\u00a1\n\16\3\16\3\16\5\16\u00a5\n\16\3\16\3\16\3"+
		"\16\3\17\3\17\3\17\3\17\3\20\3\20\5\20\u00b0\n\20\3\20\3\20\7\20\u00b4"+
		"\n\20\f\20\16\20\u00b7\13\20\3\20\3\20\3\21\3\21\3\21\3\21\3\21\3\21\3"+
		"\21\3\21\3\21\3\21\3\21\3\21\3\21\5\21\u00c8\n\21\3\21\3\21\3\21\3\21"+
		"\3\21\3\21\3\21\3\21\5\21\u00d2\n\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21"+
		"\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21"+
		"\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21"+
		"\3\21\3\21\3\21\7\21\u00fa\n\21\f\21\16\21\u00fd\13\21\3\22\3\22\3\23"+
		"\3\23\7\23\u0103\n\23\f\23\16\23\u0106\13\23\3\24\3\24\3\24\3\u0104\3"+
		" \25\2\4\6\b\n\f\16\20\22\24\26\30\32\34\36 \"$&\2\r\3\2\26\27\3\2\37"+
		" \3\2*+\3\2!#\4\2\60\61\63\63\3\2\64\65\4\2$%()\3\2&\'\3\2-.\5\2\16\20"+
		"\31\31\36\36\3\2\32\35\2\u0126\2+\3\2\2\2\4\63\3\2\2\2\6?\3\2\2\2\bA\3"+
		"\2\2\2\nM\3\2\2\2\fQ\3\2\2\2\16a\3\2\2\2\20f\3\2\2\2\22q\3\2\2\2\24s\3"+
		"\2\2\2\26\u0087\3\2\2\2\30\u0089\3\2\2\2\32\u0099\3\2\2\2\34\u00a9\3\2"+
		"\2\2\36\u00ad\3\2\2\2 \u00d1\3\2\2\2\"\u00fe\3\2\2\2$\u0104\3\2\2\2&\u0107"+
		"\3\2\2\2(*\5\4\3\2)(\3\2\2\2*-\3\2\2\2+)\3\2\2\2+,\3\2\2\2,.\3\2\2\2-"+
		"+\3\2\2\2./\7\2\2\3/\3\3\2\2\2\60\64\5\6\4\2\61\64\5\16\b\2\62\64\5\b"+
		"\5\2\63\60\3\2\2\2\63\61\3\2\2\2\63\62\3\2\2\2\64\5\3\2\2\2\65\66\5\n"+
		"\6\2\66\67\7\36\2\2\678\7\3\2\28@\3\2\2\29:\5\n\6\2:;\7\36\2\2;<\7\4\2"+
		"\2<=\5 \21\2=>\7\3\2\2>@\3\2\2\2?\65\3\2\2\2?9\3\2\2\2@\7\3\2\2\2AB\7"+
		"\5\2\2BC\7\36\2\2CG\7\6\2\2DF\5\22\n\2ED\3\2\2\2FI\3\2\2\2GE\3\2\2\2G"+
		"H\3\2\2\2HJ\3\2\2\2IG\3\2\2\2JK\7\7\2\2K\t\3\2\2\2LN\5\"\22\2ML\3\2\2"+
		"\2MN\3\2\2\2NO\3\2\2\2OP\5$\23\2P\13\3\2\2\2Q]\7\b\2\2RS\5\n\6\2SZ\7\36"+
		"\2\2TU\7\t\2\2UV\5\n\6\2VW\7\36\2\2WY\3\2\2\2XT\3\2\2\2Y\\\3\2\2\2ZX\3"+
		"\2\2\2Z[\3\2\2\2[^\3\2\2\2\\Z\3\2\2\2]R\3\2\2\2]^\3\2\2\2^_\3\2\2\2_`"+
		"\7\n\2\2`\r\3\2\2\2ab\5\n\6\2bc\7\36\2\2cd\5\f\7\2de\5\20\t\2e\17\3\2"+
		"\2\2fj\7\6\2\2gi\5\26\f\2hg\3\2\2\2il\3\2\2\2jh\3\2\2\2jk\3\2\2\2km\3"+
		"\2\2\2lj\3\2\2\2mn\7\7\2\2n\21\3\2\2\2or\5\6\4\2pr\5\16\b\2qo\3\2\2\2"+
		"qp\3\2\2\2r\23\3\2\2\2st\7\b\2\2tu\5 \21\2uv\7\n\2\2v\25\3\2\2\2wy\5 "+
		"\21\2xw\3\2\2\2xy\3\2\2\2yz\3\2\2\2z\u0088\7\3\2\2{\u0088\5\20\t\2|\u0088"+
		"\5\30\r\2}\u0088\5\32\16\2~\u0088\5\34\17\2\177\u0081\7\30\2\2\u0080\u0082"+
		"\5 \21\2\u0081\u0080\3\2\2\2\u0081\u0082\3\2\2\2\u0082\u0083\3\2\2\2\u0083"+
		"\u0088\7\3\2\2\u0084\u0085\t\2\2\2\u0085\u0088\7\3\2\2\u0086\u0088\5\6"+
		"\4\2\u0087x\3\2\2\2\u0087{\3\2\2\2\u0087|\3\2\2\2\u0087}\3\2\2\2\u0087"+
		"~\3\2\2\2\u0087\177\3\2\2\2\u0087\u0084\3\2\2\2\u0087\u0086\3\2\2\2\u0088"+
		"\27\3\2\2\2\u0089\u008a\7\21\2\2\u008a\u008b\5\24\13\2\u008b\u0097\5\26"+
		"\f\2\u008c\u008d\7\23\2\2\u008d\u008e\5\24\13\2\u008e\u008f\5\26\f\2\u008f"+
		"\u0091\3\2\2\2\u0090\u008c\3\2\2\2\u0091\u0094\3\2\2\2\u0092\u0090\3\2"+
		"\2\2\u0092\u0093\3\2\2\2\u0093\u0095\3\2\2\2\u0094\u0092\3\2\2\2\u0095"+
		"\u0096\7\22\2\2\u0096\u0098\5\26\f\2\u0097\u0092\3\2\2\2\u0097\u0098\3"+
		"\2\2\2\u0098\31\3\2\2\2\u0099\u009a\7\25\2\2\u009a\u009c\7\b\2\2\u009b"+
		"\u009d\5 \21\2\u009c\u009b\3\2\2\2\u009c\u009d\3\2\2\2\u009d\u009e\3\2"+
		"\2\2\u009e\u00a0\7\3\2\2\u009f\u00a1\5 \21\2\u00a0\u009f\3\2\2\2\u00a0"+
		"\u00a1\3\2\2\2\u00a1\u00a2\3\2\2\2\u00a2\u00a4\7\3\2\2\u00a3\u00a5\5 "+
		"\21\2\u00a4\u00a3\3\2\2\2\u00a4\u00a5\3\2\2\2\u00a5\u00a6\3\2\2\2\u00a6"+
		"\u00a7\7\n\2\2\u00a7\u00a8\5\26\f\2\u00a8\33\3\2\2\2\u00a9\u00aa\7\24"+
		"\2\2\u00aa\u00ab\5\24\13\2\u00ab\u00ac\5\26\f\2\u00ac\35\3\2\2\2\u00ad"+
		"\u00af\7\b\2\2\u00ae\u00b0\5 \21\2\u00af\u00ae\3\2\2\2\u00af\u00b0\3\2"+
		"\2\2\u00b0\u00b5\3\2\2\2\u00b1\u00b2\7\t\2\2\u00b2\u00b4\5 \21\2\u00b3"+
		"\u00b1\3\2\2\2\u00b4\u00b7\3\2\2\2\u00b5\u00b3\3\2\2\2\u00b5\u00b6\3\2"+
		"\2\2\u00b6\u00b8\3\2\2\2\u00b7\u00b5\3\2\2\2\u00b8\u00b9\7\n\2\2\u00b9"+
		"\37\3\2\2\2\u00ba\u00bb\b\21\1\2\u00bb\u00d2\5\24\13\2\u00bc\u00d2\5&"+
		"\24\2\u00bd\u00d2\7\36\2\2\u00be\u00bf\7\36\2\2\u00bf\u00d2\5\36\20\2"+
		"\u00c0\u00c1\7\r\2\2\u00c1\u00c7\5\"\22\2\u00c2\u00c3\7\13\2\2\u00c3\u00c4"+
		"\5 \21\2\u00c4\u00c5\7\f\2\2\u00c5\u00c6\5$\23\2\u00c6\u00c8\3\2\2\2\u00c7"+
		"\u00c2\3\2\2\2\u00c7\u00c8\3\2\2\2\u00c8\u00d2\3\2\2\2\u00c9\u00ca\t\3"+
		"\2\2\u00ca\u00d2\5 \21\17\u00cb\u00cc\t\4\2\2\u00cc\u00d2\5 \21\7\u00cd"+
		"\u00ce\7/\2\2\u00ce\u00d2\5 \21\5\u00cf\u00d0\7\62\2\2\u00d0\u00d2\5 "+
		"\21\4\u00d1\u00ba\3\2\2\2\u00d1\u00bc\3\2\2\2\u00d1\u00bd\3\2\2\2\u00d1"+
		"\u00be\3\2\2\2\u00d1\u00c0\3\2\2\2\u00d1\u00c9\3\2\2\2\u00d1\u00cb\3\2"+
		"\2\2\u00d1\u00cd\3\2\2\2\u00d1\u00cf\3\2\2\2\u00d2\u00fb\3\2\2\2\u00d3"+
		"\u00d4\f\16\2\2\u00d4\u00d5\t\5\2\2\u00d5\u00fa\5 \21\17\u00d6\u00d7\f"+
		"\r\2\2\u00d7\u00d8\t\3\2\2\u00d8\u00fa\5 \21\16\u00d9\u00da\f\f\2\2\u00da"+
		"\u00db\t\6\2\2\u00db\u00fa\5 \21\r\u00dc\u00dd\f\13\2\2\u00dd\u00de\t"+
		"\7\2\2\u00de\u00fa\5 \21\f\u00df\u00e0\f\n\2\2\u00e0\u00e1\t\b\2\2\u00e1"+
		"\u00fa\5 \21\13\u00e2\u00e3\f\t\2\2\u00e3\u00e4\t\t\2\2\u00e4\u00fa\5"+
		" \21\n\u00e5\u00e6\f\b\2\2\u00e6\u00e7\t\n\2\2\u00e7\u00fa\5 \21\t\u00e8"+
		"\u00e9\f\3\2\2\u00e9\u00ea\7\4\2\2\u00ea\u00fa\5 \21\3\u00eb\u00ec\f\23"+
		"\2\2\u00ec\u00ed\7,\2\2\u00ed\u00fa\7\36\2\2\u00ee\u00ef\f\22\2\2\u00ef"+
		"\u00f0\7,\2\2\u00f0\u00f1\7\36\2\2\u00f1\u00fa\5\36\20\2\u00f2\u00f3\f"+
		"\21\2\2\u00f3\u00f4\7\13\2\2\u00f4\u00f5\5 \21\2\u00f5\u00f6\7\f\2\2\u00f6"+
		"\u00fa\3\2\2\2\u00f7\u00f8\f\6\2\2\u00f8\u00fa\t\4\2\2\u00f9\u00d3\3\2"+
		"\2\2\u00f9\u00d6\3\2\2\2\u00f9\u00d9\3\2\2\2\u00f9\u00dc\3\2\2\2\u00f9"+
		"\u00df\3\2\2\2\u00f9\u00e2\3\2\2\2\u00f9\u00e5\3\2\2\2\u00f9\u00e8\3\2"+
		"\2\2\u00f9\u00eb\3\2\2\2\u00f9\u00ee\3\2\2\2\u00f9\u00f2\3\2\2\2\u00f9"+
		"\u00f7\3\2\2\2\u00fa\u00fd\3\2\2\2\u00fb\u00f9\3\2\2\2\u00fb\u00fc\3\2"+
		"\2\2\u00fc!\3\2\2\2\u00fd\u00fb\3\2\2\2\u00fe\u00ff\t\13\2\2\u00ff#\3"+
		"\2\2\2\u0100\u0101\7\13\2\2\u0101\u0103\7\f\2\2\u0102\u0100\3\2\2\2\u0103"+
		"\u0106\3\2\2\2\u0104\u0105\3\2\2\2\u0104\u0102\3\2\2\2\u0105%\3\2\2\2"+
		"\u0106\u0104\3\2\2\2\u0107\u0108\t\f\2\2\u0108\'\3\2\2\2\32+\63?GMZ]j"+
		"qx\u0081\u0087\u0092\u0097\u009c\u00a0\u00a4\u00af\u00b5\u00c7\u00d1\u00f9"+
		"\u00fb\u0104";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}