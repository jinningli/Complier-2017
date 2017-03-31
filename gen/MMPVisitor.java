// Generated from /Users/lijinning/Desktop/Compiler - 2017/src/Compiler/FrontEnd/MMP.g4 by ANTLR 4.6
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link MMPParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface MMPVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link MMPParser#program}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitProgram(MMPParser.ProgramContext ctx);
	/**
	 * Visit a parse tree produced by {@link MMPParser#decl}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDecl(MMPParser.DeclContext ctx);
	/**
	 * Visit a parse tree produced by {@link MMPParser#varDecl}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVarDecl(MMPParser.VarDeclContext ctx);
	/**
	 * Visit a parse tree produced by {@link MMPParser#classDecl}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitClassDecl(MMPParser.ClassDeclContext ctx);
	/**
	 * Visit a parse tree produced by {@link MMPParser#funcDecl}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFuncDecl(MMPParser.FuncDeclContext ctx);
	/**
	 * Visit a parse tree produced by {@link MMPParser#block}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBlock(MMPParser.BlockContext ctx);
	/**
	 * Visit a parse tree produced by {@link MMPParser#classBlock}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitClassBlock(MMPParser.ClassBlockContext ctx);
	/**
	 * Visit a parse tree produced by {@link MMPParser#exprBkt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprBkt(MMPParser.ExprBktContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ExprStatement}
	 * labeled alternative in {@link MMPParser#stmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprStatement(MMPParser.ExprStatementContext ctx);
	/**
	 * Visit a parse tree produced by the {@code BlockStatement}
	 * labeled alternative in {@link MMPParser#stmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBlockStatement(MMPParser.BlockStatementContext ctx);
	/**
	 * Visit a parse tree produced by the {@code IfStatement}
	 * labeled alternative in {@link MMPParser#stmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIfStatement(MMPParser.IfStatementContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ForStatement}
	 * labeled alternative in {@link MMPParser#stmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitForStatement(MMPParser.ForStatementContext ctx);
	/**
	 * Visit a parse tree produced by the {@code WhileStatement}
	 * labeled alternative in {@link MMPParser#stmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitWhileStatement(MMPParser.WhileStatementContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ControlStatement}
	 * labeled alternative in {@link MMPParser#stmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitControlStatement(MMPParser.ControlStatementContext ctx);
	/**
	 * Visit a parse tree produced by the {@code VarDeclare}
	 * labeled alternative in {@link MMPParser#stmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVarDeclare(MMPParser.VarDeclareContext ctx);
	/**
	 * Visit a parse tree produced by {@link MMPParser#ifStmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIfStmt(MMPParser.IfStmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link MMPParser#forStmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitForStmt(MMPParser.ForStmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link MMPParser#whileStmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitWhileStmt(MMPParser.WhileStmtContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ArrIndex}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitArrIndex(MMPParser.ArrIndexContext ctx);
	/**
	 * Visit a parse tree produced by the {@code BinaryBitOperation}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBinaryBitOperation(MMPParser.BinaryBitOperationContext ctx);
	/**
	 * Visit a parse tree produced by the {@code SignExpression}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSignExpression(MMPParser.SignExpressionContext ctx);
	/**
	 * Visit a parse tree produced by the {@code BinaryBitMov}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBinaryBitMov(MMPParser.BinaryBitMovContext ctx);
	/**
	 * Visit a parse tree produced by the {@code BitNotOperation}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBitNotOperation(MMPParser.BitNotOperationContext ctx);
	/**
	 * Visit a parse tree produced by the {@code NotOperation}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNotOperation(MMPParser.NotOperationContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ExprWithBracket}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprWithBracket(MMPParser.ExprWithBracketContext ctx);
	/**
	 * Visit a parse tree produced by the {@code NewOperation}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNewOperation(MMPParser.NewOperationContext ctx);
	/**
	 * Visit a parse tree produced by the {@code PostSelfOp}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPostSelfOp(MMPParser.PostSelfOpContext ctx);
	/**
	 * Visit a parse tree produced by the {@code PreSelfOp}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPreSelfOp(MMPParser.PreSelfOpContext ctx);
	/**
	 * Visit a parse tree produced by the {@code Identifier}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIdentifier(MMPParser.IdentifierContext ctx);
	/**
	 * Visit a parse tree produced by the {@code BinaryExpression}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBinaryExpression(MMPParser.BinaryExpressionContext ctx);
	/**
	 * Visit a parse tree produced by the {@code LogicExpression}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLogicExpression(MMPParser.LogicExpressionContext ctx);
	/**
	 * Visit a parse tree produced by the {@code CallMember}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitCallMember(MMPParser.CallMemberContext ctx);
	/**
	 * Visit a parse tree produced by the {@code Assign}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAssign(MMPParser.AssignContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ConstantValue}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitConstantValue(MMPParser.ConstantValueContext ctx);
	/**
	 * Visit a parse tree produced by the {@code CallFunction}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitCallFunction(MMPParser.CallFunctionContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ExpressionList}
	 * labeled alternative in {@link MMPParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpressionList(MMPParser.ExpressionListContext ctx);
	/**
	 * Visit a parse tree produced by {@link MMPParser#type}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitType(MMPParser.TypeContext ctx);
	/**
	 * Visit a parse tree produced by {@link MMPParser#ptrBracket}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPtrBracket(MMPParser.PtrBracketContext ctx);
	/**
	 * Visit a parse tree produced by {@link MMPParser#constant}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitConstant(MMPParser.ConstantContext ctx);
}