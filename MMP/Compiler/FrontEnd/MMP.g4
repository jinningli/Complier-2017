grammar MMP;
/*
    Filename: MMP.g4
    Created by Jinning Li, 2017, Shanghai
*/

/*****************************    Declare of Parser    *****************************/

program:      decl* EOF
            ;
decl:         varDecl
            | funcDecl
            | classDecl
            ;

// Declare of Variable, Class and Function
varDecl:      type ptrBracket ID ';'
            | type ptrBracket ID '=' expr ';'
            ;
classDecl:  'class' ID classBlock;
funcDecl:   (type ptrBracket | VOID) ID '(' ( type ptrBracket ID ( ',' type ptrBracket ID )* )?')' block;

//Block for General and Class
block:      '{' stmt* '}';
classBlock: '{' (varDecl | funcDecl)* '}';
exprBkt:    '(' expr ')';

//Statement Implement
stmt:       expr? ';'                                        # ExprStatement
            | block                                          # BlockStatement
            | ifStmt                                         # IfStatement
            | forStmt                                        # ForStatement
            | whileStmt                                      # WhileStatement
            | RETURN expr? ';'                               # ControlStatement
            | operation = (BREAK | CONTINUE) ';'             # ControlStatement
            | varDecl                                        # VarDeclare
            ;

//Structure of If, For and While
ifStmt:     IF exprBkt
            stmt
            (
            (
            ELSEIF exprBkt
            stmt
            )*
            ELSE
            stmt
            )?
            ;
forStmt:    FOR '(' expr? ';' expr? ';' expr? ')'
            stmt
            ;
whileStmt:  WHILE exprBkt
            stmt
            ;


// Expression
expr:       exprBkt                                                                 # ExprWithBracket
            | constant                                                              # ConstantValue
            | ID                                                                    # Identifier
            | ID '(' (expr (',' expr)*)? ')'                                        # FunctionCall
            | expr DOT ID                                                           # Member
            | expr DOT ID '(' type ptrBracket ID ( ',' type ptrBracket ID )* ')'    # MemberFunction
            | 'new' type ('[' expr ']' ptrBracket)?                                 # NewOperation
            | operation = (MINUS | PLUS)                                    expr    # SignExpression
            | expr operation = (PLUS   | MINUS)                             expr    # BinaryExpression
            | expr operation = (MUL    | DIV    | MOD)                      expr    # BinaryExpression
            | expr operation = (BAND   | BXOR   | BOR)                      expr    # BinaryBitOperation
            | expr operation = (BMOV_L | BMOV_R)                            expr    # BinaryBitMov
            | expr operation = (LESS   | LARGE  | LESSEQ | LARGEEQ)         expr    # LogicExpression
            | expr operation = (EQ     | NEQ)                               expr    # LogicExpression
            | expr operation = (AND    | OR)                                expr    # LogicExpression
            | operation      = (PLUSPLUS        | MINUSMINUS)               expr    # PreSelfOp
            | expr operation = (PLUSPLUS        | MINUSMINUS)                       # PostSelfOp
            | expr '[' expr ']'                                                     # ArrIndex
            | NOT expr                                                              # NotOperation
            | BNOT expr                                                             # BitNotOperation
            | <assoc=right> expr '=' expr                                           # Assign
            ;

// Other Parser
type:       'bool'
            | 'int'
            | 'string'
            | ID
            ;
ptrBracket: '[]'*?;
constant:   NULL
            | INT
            | STRING
            | BOOL
            ;


/*****************************    Declare of Lexer    *****************************/

//Structure Lexer
IF          : 'if';
ELSE        : 'else';
ELSEIF      : 'else if';
WHILE       : 'while';
FOR         : 'for';
CONTINUE    : 'continue';
BREAK       : 'break';
RETURN      : 'return';
VOID        : 'void';


// Type Lexer
INT         : DIGIT+;
BOOL        : 'true' | 'false';
NULL        : 'null';
STRING      : '"' (ESC | .)*? '"';
ID          : LETTER (LETTER | DIGIT)*;



//Calculating Operator
PLUS        : '+';
MINUS        : '-';
MUL         : '*';
DIV         : '/';
MOD         : '%';
LESS        : '<';
LARGE       : '>';
EQ          : '==';
NEQ         : '!=';
LESSEQ      : '<=';
LARGEEQ     : '>=';
PLUSPLUS    : '++';
MINUSMINUS  : '--';
DOT         : '.';
AND         : '&&';
OR          : '||';
NOT         : '!';
BAND        : '&';
BOR         : '|';
BNOT        : '~';
BXOR        : '^';
BMOV_L      : '<<';
BMOV_R      : '>>';

//To Skip
COMMENT     : '//' ~[\r\n]* ->skip;
WHITESPACE  : [ \n\r\t]+ ->skip;

//Global Lexer
fragment ESC     : '\\'["\\n];
fragment LETTER  : [a-zA-Z_];
fragment DIGIT   : [0-9];
