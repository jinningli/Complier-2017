// Generated from /Users/lijinning/Desktop/Compiler - 2017/MAPLE/Compiler/FrontEnd/Maple.g4 by ANTLR 4.6
package Compiler.FrontEnd;
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link MapleParser}.
 */
public interface MapleListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link MapleParser#program}.
	 * @param ctx the parse tree
	 */
	void enterProgram(MapleParser.ProgramContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapleParser#program}.
	 * @param ctx the parse tree
	 */
	void exitProgram(MapleParser.ProgramContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapleParser#decl}.
	 * @param ctx the parse tree
	 */
	void enterDecl(MapleParser.DeclContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapleParser#decl}.
	 * @param ctx the parse tree
	 */
	void exitDecl(MapleParser.DeclContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapleParser#varDecl}.
	 * @param ctx the parse tree
	 */
	void enterVarDecl(MapleParser.VarDeclContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapleParser#varDecl}.
	 * @param ctx the parse tree
	 */
	void exitVarDecl(MapleParser.VarDeclContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapleParser#classDecl}.
	 * @param ctx the parse tree
	 */
	void enterClassDecl(MapleParser.ClassDeclContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapleParser#classDecl}.
	 * @param ctx the parse tree
	 */
	void exitClassDecl(MapleParser.ClassDeclContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapleParser#funcDecl}.
	 * @param ctx the parse tree
	 */
	void enterFuncDecl(MapleParser.FuncDeclContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapleParser#funcDecl}.
	 * @param ctx the parse tree
	 */
	void exitFuncDecl(MapleParser.FuncDeclContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapleParser#block}.
	 * @param ctx the parse tree
	 */
	void enterBlock(MapleParser.BlockContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapleParser#block}.
	 * @param ctx the parse tree
	 */
	void exitBlock(MapleParser.BlockContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapleParser#classBlock}.
	 * @param ctx the parse tree
	 */
	void enterClassBlock(MapleParser.ClassBlockContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapleParser#classBlock}.
	 * @param ctx the parse tree
	 */
	void exitClassBlock(MapleParser.ClassBlockContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapleParser#exprBkt}.
	 * @param ctx the parse tree
	 */
	void enterExprBkt(MapleParser.ExprBktContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapleParser#exprBkt}.
	 * @param ctx the parse tree
	 */
	void exitExprBkt(MapleParser.ExprBktContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprStatement}
	 * labeled alternative in {@link MapleParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterExprStatement(MapleParser.ExprStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprStatement}
	 * labeled alternative in {@link MapleParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitExprStatement(MapleParser.ExprStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code BlockStatement}
	 * labeled alternative in {@link MapleParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterBlockStatement(MapleParser.BlockStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code BlockStatement}
	 * labeled alternative in {@link MapleParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitBlockStatement(MapleParser.BlockStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code IfStatement}
	 * labeled alternative in {@link MapleParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterIfStatement(MapleParser.IfStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code IfStatement}
	 * labeled alternative in {@link MapleParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitIfStatement(MapleParser.IfStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ForStatement}
	 * labeled alternative in {@link MapleParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterForStatement(MapleParser.ForStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ForStatement}
	 * labeled alternative in {@link MapleParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitForStatement(MapleParser.ForStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code WhileStatement}
	 * labeled alternative in {@link MapleParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterWhileStatement(MapleParser.WhileStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code WhileStatement}
	 * labeled alternative in {@link MapleParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitWhileStatement(MapleParser.WhileStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ControlStatement}
	 * labeled alternative in {@link MapleParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterControlStatement(MapleParser.ControlStatementContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ControlStatement}
	 * labeled alternative in {@link MapleParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitControlStatement(MapleParser.ControlStatementContext ctx);
	/**
	 * Enter a parse tree produced by the {@code VarDeclare}
	 * labeled alternative in {@link MapleParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterVarDeclare(MapleParser.VarDeclareContext ctx);
	/**
	 * Exit a parse tree produced by the {@code VarDeclare}
	 * labeled alternative in {@link MapleParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitVarDeclare(MapleParser.VarDeclareContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapleParser#ifStmt}.
	 * @param ctx the parse tree
	 */
	void enterIfStmt(MapleParser.IfStmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapleParser#ifStmt}.
	 * @param ctx the parse tree
	 */
	void exitIfStmt(MapleParser.IfStmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapleParser#forStmt}.
	 * @param ctx the parse tree
	 */
	void enterForStmt(MapleParser.ForStmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapleParser#forStmt}.
	 * @param ctx the parse tree
	 */
	void exitForStmt(MapleParser.ForStmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapleParser#whileStmt}.
	 * @param ctx the parse tree
	 */
	void enterWhileStmt(MapleParser.WhileStmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapleParser#whileStmt}.
	 * @param ctx the parse tree
	 */
	void exitWhileStmt(MapleParser.WhileStmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code MemberFunction}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterMemberFunction(MapleParser.MemberFunctionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code MemberFunction}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitMemberFunction(MapleParser.MemberFunctionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ArrIndex}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterArrIndex(MapleParser.ArrIndexContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ArrIndex}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitArrIndex(MapleParser.ArrIndexContext ctx);
	/**
	 * Enter a parse tree produced by the {@code BinaryBitOperation}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterBinaryBitOperation(MapleParser.BinaryBitOperationContext ctx);
	/**
	 * Exit a parse tree produced by the {@code BinaryBitOperation}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitBinaryBitOperation(MapleParser.BinaryBitOperationContext ctx);
	/**
	 * Enter a parse tree produced by the {@code SignExpression}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterSignExpression(MapleParser.SignExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code SignExpression}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitSignExpression(MapleParser.SignExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code BinaryBitMov}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterBinaryBitMov(MapleParser.BinaryBitMovContext ctx);
	/**
	 * Exit a parse tree produced by the {@code BinaryBitMov}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitBinaryBitMov(MapleParser.BinaryBitMovContext ctx);
	/**
	 * Enter a parse tree produced by the {@code BitNotOperation}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterBitNotOperation(MapleParser.BitNotOperationContext ctx);
	/**
	 * Exit a parse tree produced by the {@code BitNotOperation}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitBitNotOperation(MapleParser.BitNotOperationContext ctx);
	/**
	 * Enter a parse tree produced by the {@code NotOperation}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterNotOperation(MapleParser.NotOperationContext ctx);
	/**
	 * Exit a parse tree produced by the {@code NotOperation}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitNotOperation(MapleParser.NotOperationContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ExprWithBracket}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExprWithBracket(MapleParser.ExprWithBracketContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ExprWithBracket}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExprWithBracket(MapleParser.ExprWithBracketContext ctx);
	/**
	 * Enter a parse tree produced by the {@code NewOperation}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterNewOperation(MapleParser.NewOperationContext ctx);
	/**
	 * Exit a parse tree produced by the {@code NewOperation}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitNewOperation(MapleParser.NewOperationContext ctx);
	/**
	 * Enter a parse tree produced by the {@code PostSelfOp}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterPostSelfOp(MapleParser.PostSelfOpContext ctx);
	/**
	 * Exit a parse tree produced by the {@code PostSelfOp}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitPostSelfOp(MapleParser.PostSelfOpContext ctx);
	/**
	 * Enter a parse tree produced by the {@code PreSelfOp}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterPreSelfOp(MapleParser.PreSelfOpContext ctx);
	/**
	 * Exit a parse tree produced by the {@code PreSelfOp}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitPreSelfOp(MapleParser.PreSelfOpContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Identifier}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterIdentifier(MapleParser.IdentifierContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Identifier}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitIdentifier(MapleParser.IdentifierContext ctx);
	/**
	 * Enter a parse tree produced by the {@code BinaryExpression}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterBinaryExpression(MapleParser.BinaryExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code BinaryExpression}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitBinaryExpression(MapleParser.BinaryExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code LogicExpression}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterLogicExpression(MapleParser.LogicExpressionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code LogicExpression}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitLogicExpression(MapleParser.LogicExpressionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Assign}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterAssign(MapleParser.AssignContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Assign}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitAssign(MapleParser.AssignContext ctx);
	/**
	 * Enter a parse tree produced by the {@code FunctionCall}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterFunctionCall(MapleParser.FunctionCallContext ctx);
	/**
	 * Exit a parse tree produced by the {@code FunctionCall}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitFunctionCall(MapleParser.FunctionCallContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ConstantValue}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterConstantValue(MapleParser.ConstantValueContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ConstantValue}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitConstantValue(MapleParser.ConstantValueContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Member}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterMember(MapleParser.MemberContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Member}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitMember(MapleParser.MemberContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapleParser#type}.
	 * @param ctx the parse tree
	 */
	void enterType(MapleParser.TypeContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapleParser#type}.
	 * @param ctx the parse tree
	 */
	void exitType(MapleParser.TypeContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapleParser#ptrBracket}.
	 * @param ctx the parse tree
	 */
	void enterPtrBracket(MapleParser.PtrBracketContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapleParser#ptrBracket}.
	 * @param ctx the parse tree
	 */
	void exitPtrBracket(MapleParser.PtrBracketContext ctx);
	/**
	 * Enter a parse tree produced by {@link MapleParser#constant}.
	 * @param ctx the parse tree
	 */
	void enterConstant(MapleParser.ConstantContext ctx);
	/**
	 * Exit a parse tree produced by {@link MapleParser#constant}.
	 * @param ctx the parse tree
	 */
	void exitConstant(MapleParser.ConstantContext ctx);
}