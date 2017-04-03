// Generated from /Users/lijinning/Desktop/Compiler - 2017/MAPLE/Compiler/FrontEnd/Maple.g4 by ANTLR 4.6
package Compiler.FrontEnd;
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link MapleParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface MapleVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link MapleParser#program}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitProgram(MapleParser.ProgramContext ctx);
	/**
	 * Visit a parse tree produced by {@link MapleParser#decl}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitDecl(MapleParser.DeclContext ctx);
	/**
	 * Visit a parse tree produced by {@link MapleParser#varDecl}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVarDecl(MapleParser.VarDeclContext ctx);
	/**
	 * Visit a parse tree produced by {@link MapleParser#classDecl}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitClassDecl(MapleParser.ClassDeclContext ctx);
	/**
	 * Visit a parse tree produced by {@link MapleParser#funcDecl}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFuncDecl(MapleParser.FuncDeclContext ctx);
	/**
	 * Visit a parse tree produced by {@link MapleParser#block}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBlock(MapleParser.BlockContext ctx);
	/**
	 * Visit a parse tree produced by {@link MapleParser#classBlock}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitClassBlock(MapleParser.ClassBlockContext ctx);
	/**
	 * Visit a parse tree produced by {@link MapleParser#exprBkt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprBkt(MapleParser.ExprBktContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ExprStatement}
	 * labeled alternative in {@link MapleParser#stmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprStatement(MapleParser.ExprStatementContext ctx);
	/**
	 * Visit a parse tree produced by the {@code BlockStatement}
	 * labeled alternative in {@link MapleParser#stmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBlockStatement(MapleParser.BlockStatementContext ctx);
	/**
	 * Visit a parse tree produced by the {@code IfStatement}
	 * labeled alternative in {@link MapleParser#stmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIfStatement(MapleParser.IfStatementContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ForStatement}
	 * labeled alternative in {@link MapleParser#stmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitForStatement(MapleParser.ForStatementContext ctx);
	/**
	 * Visit a parse tree produced by the {@code WhileStatement}
	 * labeled alternative in {@link MapleParser#stmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitWhileStatement(MapleParser.WhileStatementContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ControlStatement}
	 * labeled alternative in {@link MapleParser#stmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitControlStatement(MapleParser.ControlStatementContext ctx);
	/**
	 * Visit a parse tree produced by the {@code VarDeclare}
	 * labeled alternative in {@link MapleParser#stmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVarDeclare(MapleParser.VarDeclareContext ctx);
	/**
	 * Visit a parse tree produced by {@link MapleParser#ifStmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIfStmt(MapleParser.IfStmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link MapleParser#forStmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitForStmt(MapleParser.ForStmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link MapleParser#whileStmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitWhileStmt(MapleParser.WhileStmtContext ctx);
	/**
	 * Visit a parse tree produced by the {@code MemberFunction}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMemberFunction(MapleParser.MemberFunctionContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ArrIndex}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitArrIndex(MapleParser.ArrIndexContext ctx);
	/**
	 * Visit a parse tree produced by the {@code BinaryBitOperation}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBinaryBitOperation(MapleParser.BinaryBitOperationContext ctx);
	/**
	 * Visit a parse tree produced by the {@code SignExpression}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSignExpression(MapleParser.SignExpressionContext ctx);
	/**
	 * Visit a parse tree produced by the {@code BinaryBitMov}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBinaryBitMov(MapleParser.BinaryBitMovContext ctx);
	/**
	 * Visit a parse tree produced by the {@code BitNotOperation}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBitNotOperation(MapleParser.BitNotOperationContext ctx);
	/**
	 * Visit a parse tree produced by the {@code NotOperation}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNotOperation(MapleParser.NotOperationContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ExprWithBracket}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExprWithBracket(MapleParser.ExprWithBracketContext ctx);
	/**
	 * Visit a parse tree produced by the {@code NewOperation}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNewOperation(MapleParser.NewOperationContext ctx);
	/**
	 * Visit a parse tree produced by the {@code PostSelfOp}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPostSelfOp(MapleParser.PostSelfOpContext ctx);
	/**
	 * Visit a parse tree produced by the {@code PreSelfOp}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPreSelfOp(MapleParser.PreSelfOpContext ctx);
	/**
	 * Visit a parse tree produced by the {@code Identifier}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIdentifier(MapleParser.IdentifierContext ctx);
	/**
	 * Visit a parse tree produced by the {@code BinaryExpression}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBinaryExpression(MapleParser.BinaryExpressionContext ctx);
	/**
	 * Visit a parse tree produced by the {@code LogicExpression}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLogicExpression(MapleParser.LogicExpressionContext ctx);
	/**
	 * Visit a parse tree produced by the {@code Assign}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAssign(MapleParser.AssignContext ctx);
	/**
	 * Visit a parse tree produced by the {@code FunctionCall}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFunctionCall(MapleParser.FunctionCallContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ConstantValue}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitConstantValue(MapleParser.ConstantValueContext ctx);
	/**
	 * Visit a parse tree produced by the {@code Member}
	 * labeled alternative in {@link MapleParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMember(MapleParser.MemberContext ctx);
	/**
	 * Visit a parse tree produced by {@link MapleParser#type}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitType(MapleParser.TypeContext ctx);
	/**
	 * Visit a parse tree produced by {@link MapleParser#ptrBracket}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPtrBracket(MapleParser.PtrBracketContext ctx);
	/**
	 * Visit a parse tree produced by {@link MapleParser#constant}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitConstant(MapleParser.ConstantContext ctx);
}