// Generated from /Users/lijinning/Desktop/Compiler - 2017/src/Compiler/FrontEnd/MMP.g4 by ANTLR 4.6
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link MMPParser}.
 */
public interface MMPListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link MMPParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(MMPParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link MMPParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(MMPParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by {@link MMPParser#decl}.
	 * @param ctx the parse tree
	 */
	void enterDecl(MMPParser.DeclContext ctx);
	/**
	 * Exit a parse tree produced by {@link MMPParser#decl}.
	 * @param ctx the parse tree
	 */
	void exitDecl(MMPParser.DeclContext ctx);
	/**
	 * Enter a parse tree produced by {@link MMPParser#varDecl}.
	 * @param ctx the parse tree
	 */
	void enterVarDecl(MMPParser.VarDeclContext ctx);
	/**
	 * Exit a parse tree produced by {@link MMPParser#varDecl}.
	 * @param ctx the parse tree
	 */
	void exitVarDecl(MMPParser.VarDeclContext ctx);
	/**
	 * Enter a parse tree produced by {@link MMPParser#classDecl}.
	 * @param ctx the parse tree
	 */
	void enterClassDecl(MMPParser.ClassDeclContext ctx);
	/**
	 * Exit a parse tree produced by {@link MMPParser#classDecl}.
	 * @param ctx the parse tree
	 */
	void exitClassDecl(MMPParser.ClassDeclContext ctx);
	/**
	 * Enter a parse tree produced by {@link MMPParser#funcDecl}.
	 * @param ctx the parse tree
	 */
	void enterFuncDecl(MMPParser.FuncDeclContext ctx);
	/**
	 * Exit a parse tree produced by {@link MMPParser#funcDecl}.
	 * @param ctx the parse tree
	 */
	void exitFuncDecl(MMPParser.FuncDeclContext ctx);
	/**
	 * Enter a parse tree produced by {@link MMPParser#block}.
	 * @param ctx the parse tree
	 */
	void enterBlock(MMPParser.BlockContext ctx);
	/**
	 * Exit a parse tree produced by {@link MMPParser#block}.
	 * @param ctx the parse tree
	 */
	void exitBlock(MMPParser.BlockContext ctx);
	/**
	 * Enter a parse tree produced by {@link MMPParser#classBlock}.
	 * @param ctx the parse tree
	 */
	void enterClassBlock(MMPParser.ClassBlockContext ctx);
	/**
	 * Exit a parse tree produced by {@link MMPParser#classBlock}.
	 * @param ctx the parse tree
	 */
	void exitClassBlock(MMPParser.ClassBlockContext ctx);
	/**
	 * Enter a parse tree produced by {@link MMPParser#exprBkt}.
	 * @param ctx the parse tree
	 */
	void enterExprBkt(MMPParser.ExprBktContext ctx);
	/**
	 * Exit a parse tree produced by {@link MMPParser#exprBkt}.
	 * @param ctx the parse tree
	 */
	void exitExprBkt(MMPParser.ExprBktContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprStatement}
	 * labeled alternative in {@link MMPParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterExprStatement(MMPParser.ExprStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprStatement}
	 * labeled alternative in {@link MMPParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitExprStatement(MMPParser.ExprStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code BlockStatement}
	 * labeled alternative in {@link MMPParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterBlockStatement(MMPParser.BlockStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code BlockStatement}
	 * labeled alternative in {@link MMPParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitBlockStatement(MMPParser.BlockStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code IfStatement}
	 * labeled alternative in {@link MMPParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterIfStatement(MMPParser.IfStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code IfStatement}
	 * labeled alternative in {@link MMPParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitIfStatement(MMPParser.IfStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ForStatement}
	 * labeled alternative in {@link MMPParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterForStatement(MMPParser.ForStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ForStatement}
	 * labeled alternative in {@link MMPParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitForStatement(MMPParser.ForStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code WhileStatement}
	 * labeled alternative in {@link MMPParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterWhileStatement(MMPParser.WhileStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code WhileStatement}
	 * labeled alternative in {@link MMPParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitWhileStatement(MMPParser.WhileStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ControlStatement}
	 * labeled alternative in {@link MMPParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterControlStatement(MMPParser.ControlStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ControlStatement}
	 * labeled alternative in {@link MMPParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitControlStatement(MMPParser.ControlStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code VarDeclare}
	 * labeled alternative in {@link MMPParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterVarDeclare(MMPParser.VarDeclareContext ctx);
	/**
	 * Exit a parse tree produced by the {@code VarDeclare}
	 * labeled alternative in {@link MMPParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitVarDeclare(MMPParser.VarDeclareContext ctx);
	/**
	 * Enter a parse tree produced by {@link MMPParser#ifStmt}.
	 * @param ctx the parse tree
	 */
	void enterIfStmt(MMPParser.IfStmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link MMPParser#ifStmt}.
	 * @param ctx the parse tree
	 */
	void exitIfStmt(MMPParser.IfStmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link MMPParser#forStmt}.
	 * @param ctx the parse tree
	 */
	void enterForStmt(MMPParser.ForStmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link MMPParser#forStmt}.
	 * @param ctx the parse tree
	 */
	void exitForStmt(MMPParser.ForStmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link MMPParser#whileStmt}.
	 * @param ctx the parse tree
	 */
	void enterWhileStmt(MMPParser.WhileStmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link MMPParser#whileStmt}.
	 * @param ctx the parse tree
	 */
	void exitWhileStmt(MMPParser.WhileStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ArrIndex}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterArrIndex(MMPParser.ArrIndexContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ArrIndex}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitArrIndex(MMPParser.ArrIndexContext ctx);
	/**
	 * Enter a parse tree produced by the {@code BinaryBitOperation}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterBinaryBitOperation(MMPParser.BinaryBitOperationContext ctx);
	/**
	 * Exit a parse tree produced by the {@code BinaryBitOperation}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitBinaryBitOperation(MMPParser.BinaryBitOperationContext ctx);
	/**
	 * Enter a parse tree produced by the {@code SignExpression}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterSignExpression(MMPParser.SignExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code SignExpression}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitSignExpression(MMPParser.SignExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code BinaryBitMov}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterBinaryBitMov(MMPParser.BinaryBitMovContext ctx);
	/**
	 * Exit a parse tree produced by the {@code BinaryBitMov}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitBinaryBitMov(MMPParser.BinaryBitMovContext ctx);
	/**
	 * Enter a parse tree produced by the {@code BitNotOperation}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterBitNotOperation(MMPParser.BitNotOperationContext ctx);
	/**
	 * Exit a parse tree produced by the {@code BitNotOperation}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitBitNotOperation(MMPParser.BitNotOperationContext ctx);
	/**
	 * Enter a parse tree produced by the {@code NotOperation}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterNotOperation(MMPParser.NotOperationContext ctx);
	/**
	 * Exit a parse tree produced by the {@code NotOperation}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitNotOperation(MMPParser.NotOperationContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprWithBracket}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprWithBracket(MMPParser.ExprWithBracketContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprWithBracket}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprWithBracket(MMPParser.ExprWithBracketContext ctx);
	/**
	 * Enter a parse tree produced by the {@code NewOperation}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterNewOperation(MMPParser.NewOperationContext ctx);
	/**
	 * Exit a parse tree produced by the {@code NewOperation}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitNewOperation(MMPParser.NewOperationContext ctx);
	/**
	 * Enter a parse tree produced by the {@code PostSelfOp}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterPostSelfOp(MMPParser.PostSelfOpContext ctx);
	/**
	 * Exit a parse tree produced by the {@code PostSelfOp}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitPostSelfOp(MMPParser.PostSelfOpContext ctx);
	/**
	 * Enter a parse tree produced by the {@code PreSelfOp}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterPreSelfOp(MMPParser.PreSelfOpContext ctx);
	/**
	 * Exit a parse tree produced by the {@code PreSelfOp}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitPreSelfOp(MMPParser.PreSelfOpContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Identifier}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterIdentifier(MMPParser.IdentifierContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Identifier}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitIdentifier(MMPParser.IdentifierContext ctx);
	/**
	 * Enter a parse tree produced by the {@code BinaryExpression}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterBinaryExpression(MMPParser.BinaryExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code BinaryExpression}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitBinaryExpression(MMPParser.BinaryExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code LogicExpression}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterLogicExpression(MMPParser.LogicExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code LogicExpression}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitLogicExpression(MMPParser.LogicExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code CallMember}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterCallMember(MMPParser.CallMemberContext ctx);
	/**
	 * Exit a parse tree produced by the {@code CallMember}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitCallMember(MMPParser.CallMemberContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Assign}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterAssign(MMPParser.AssignContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Assign}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitAssign(MMPParser.AssignContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ConstantValue}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterConstantValue(MMPParser.ConstantValueContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ConstantValue}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitConstantValue(MMPParser.ConstantValueContext ctx);
	/**
	 * Enter a parse tree produced by the {@code CallFunction}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterCallFunction(MMPParser.CallFunctionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code CallFunction}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitCallFunction(MMPParser.CallFunctionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExpressionList}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExpressionList(MMPParser.ExpressionListContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExpressionList}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExpressionList(MMPParser.ExpressionListContext ctx);
	/**
	 * Enter a parse tree produced by {@link MMPParser#type}.
	 * @param ctx the parse tree
	 */
	void enterType(MMPParser.TypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link MMPParser#type}.
	 * @param ctx the parse tree
	 */
	void exitType(MMPParser.TypeContext ctx);
	/**
	 * Enter a parse tree produced by {@link MMPParser#ptrBracket}.
	 * @param ctx the parse tree
	 */
	void enterPtrBracket(MMPParser.PtrBracketContext ctx);
	/**
	 * Exit a parse tree produced by {@link MMPParser#ptrBracket}.
	 * @param ctx the parse tree
	 */
	void exitPtrBracket(MMPParser.PtrBracketContext ctx);
	/**
	 * Enter a parse tree produced by {@link MMPParser#constant}.
	 * @param ctx the parse tree
	 */
	void enterConstant(MMPParser.ConstantContext ctx);
	/**
	 * Exit a parse tree produced by {@link MMPParser#constant}.
	 * @param ctx the parse tree
	 */
	void exitConstant(MMPParser.ConstantContext ctx);
}