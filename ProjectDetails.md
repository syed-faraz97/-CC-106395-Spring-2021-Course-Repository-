# CC Spring 2021: Project Basic Details
### PROJECT MEMBERS ###
StdID | Name
------------ | -------------
**59679** | **FARAZ ASHRAF** 
62628 | MUHAMMAD AHSAN


#  MiniJava Language Specifications

## Introduction:

MiniJava is used for compiler construction. The language contains only few statements as well as expressions and requires only a simple run-time system. It does not include giving exceptions and multi-threading.

### Properties:

### Type system

MiniJava knows the base types int for integers and boolean for logical values. Userdefined types are classes and method types. Classes contain attributes and methods. Methods have a method type, which indicates the number and type of the method’s parameters as well as the method’s return type. Method overloading (several methods with the same name but different parameter and/or return types) is not allowed. On method invocation, the number and type of arguments must match the number and type of the method’s parameters.

### Run-time system

MiniJava only has a minimal run-time system without large standard libraries. Execution of a program starts at the main method, which must always be present. There is no automatic memory management, i.e. MiniJava programs can only allocate memory, memory cannot be freed for reuse.

### Lexical elements

•	White space: These are space, new line, carriage return and tabulator

•	Comments: The string /* followed by any characters until the terminating */ is a comment. Comments are not nestable, further /* within a comment are ignored, a comment always ends when the first */ is encountered.

•	Keywords and operators, all tokens printed in bold in the grammar specification are keywords or operators. Exceptions are main, String, System, Out, and println. There are identifiers, not keywords.

•	IDENT: An identifier starts with an underscore or letter and is followed by anynumber of letters, underscores and digits. Only the letters A to Z and a to z are allowed, case is important. Keywords are not IDENTs.

•	INTEGER_LITERAL: A decimal integer literal is a digit sequence starting with any of the digits 1 to 9 and is followed by any number of digits 0 to 9. A single 0 is also an integer literal.

Comments and white space have no meaning except for separating tokens.

### Syntax

•	Non-terminals are printed in italic. Example: Expression.

•	Terminals are printed in bold typewriter font. Example: public.

•	X ? means no or exactly one occurrence of X .

•	X * means any number of occurrences of X (in particular no occurrence).

•	| indicates alternatives.

•	 ( ) is for grouping multiple syntactical elements.

Semantics
Except for a few exceptions the semantics of MiniJava is consistent with the semantics
of Java. The latter is described in [GJSB00]. The exceptions are:
• The method main(String[] args) must not be called.
• The definite assignment rules of Java need not be checked.
• There must be exactly one MainMethod in a MiniJava program.

MiniJava Grammar
Program	::=	MainClass ( ClassDeclaration )* <EOF>
MainClass	::=	"class" Identifier "{" "public" "static" "void" "main" "(" "String" "[" "]" Identifier ")" "{" Statement "}" "}"
ClassDeclaration	::=	"class" Identifier ( "extends" Identifier )? "{" ( VarDeclaration )* ( MethodDeclaration )* "}"
VarDeclaration	::=	Type Identifier ";"
MethodDeclaration	::=	"public" Type Identifier "(" ( Type Identifier ( "," Type Identifier )* )? ")" "{" ( VarDeclaration )* ( Statement )* "return" Expression ";" "}"
Type	::=	"int" "[" "]"
|	"boolean"
|	"int"
|	Identifier
Statement	::=	"{" ( Statement )* "}"
|	"if" "(" Expression ")" Statement "else" Statement
|	"while" "(" Expression ")" Statement
|	"System.out.println" "(" Expression ")" ";"
|	Identifier "=" Expression ";"
|	Identifier "[" Expression "]" "=" Expression ";"
Expression	::=	Expression ( "&&" | "<" | "+" | "-" | "*" ) Expression
|	Expression "[" Expression "]"
|	Expression "." "length"
|	Expression "." Identifier "(" ( Expression ( "," Expression )* )? ")"
|	<INTEGER_LITERAL>
|	"true"
|	"false"
|	Identifier
|	"this"
|	"new" "int" "[" Expression "]"
|	"new" Identifier "(" ")"
|	"!" Expression
|	"(" Expression ")"
Identifier	::=	<IDENTIFIER>
  
Sample program
class Factorial{
    public static void main(String[] a){
        System.out.println(new Fac().ComputeFac(10));
    }
}

class Fac {
    public int ComputeFac(int num){
        int num_aux ;
        if (num < 1)
            num_aux = 1 ;
        else
            num_aux = num * (this.ComputeFac(num-1)) ;
        return num_aux ;
    }
}

