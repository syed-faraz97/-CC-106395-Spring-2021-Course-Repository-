# Project Report: MiniJava Compiler
**106359**

### PROJECT MEMBERS ###
StdID | Name
------------ | -------------
**59679** | **FARAZ ASHRAF** 
62628 | MUHAMMAD AHSAN

## Project Description ##
We made our project on FLEX with C# as a programming language. The project consist of two main aspects. First, on providing an input in the form of Mini Pascal code, our project successfully convert it into the C-Sharp code. Keeping aside the code conversion, our project also creates the grammar of that code (input) from start till end.  The project is all about the few main areas of Compiler Construction i.e. Parser, WACC and Lexical Analyzer. We done our level best to deliver a good project in terms of Compiler Construction and tried to cover the main topics what we have learned in our regular classes also.

## MiniJava ##
MiniJava is used for compiler construction. The language contains only few statements as well as expressions and requires only a simple run-time system. It does not include giving exceptions and multi-threading.

## Sample Code ##
```Java

public class HelloWorld {

    public static void main(String[] args) {
        // Prints "Hello, World" to the terminal window.
        System.out.println("Hello, World");
    }

}

```

###Lexical Specification###
Java programs are composed of characters from the Unicode character set.
Java comments
Comments are used by humans to clarify the source code. There are three types of comments in C#. Single-line comments, multi-line comments and XML comments. XML comments can be extracted to HTML files.
Java white space
White space in C# is used to separate tokens in the source file. It is also used to improve readability of the source code.
Java variables
A variable is an identifier which holds a value. In programming we say that we assign a value to a variable. Technically speaking, a variable is a reference to a computer memory where the value is stored. Variable names can have alphanumerical characters and underscores. An identifier may begin with a character or an underscore. It may not begin with a number.
Java literals
A literal is a textual representation of a particular value of a type. Literal types include boolean, integer, floating point, string, character, and date. Technically, a literal will be assigned a value at compile time, while a variable will be assigned at runtime.
Java operators
An operator is a symbol used to perform an action on some value. Operators are used in expressions to describe operations involving one or more operands.
+    -    *    /    %    ^    &    |    !    ~
=    +=   -=   *=   /=   %=    ^=    ++    --
==   !=    <   >    &=  >>=   <<=   >=   <=
||   &&    >>    <<    ?:
Java separators
A separator is a sequence of one or more characters used to specify the boundary between separate, independent regions in plain text or other data stream.
[ ]   ( )   { }   ,   :   ;
Java keywords
A keyword is a reserved word in the C# language. Keywords are used to perform a specific task in the computer program. For example, define variables, do repetitive tasks, or perform logical operations.
Java conventions
Conventions are best practices followed by programmers when writing source code. Each language can have its own set of conventions. Conventions are not strict rules; they are merely recommendations for writing good quality code.
Java Tokens
Tokens are generally any unit that is not whitespace or a comment. They are part of the text of a program.


###Grammar###
MiniJava Grammar Program ::= MainClass ( ClassDeclaration )* MainClass ::= "class" Identifier "{" "public" "static" "void" "main" "(" "String" "[" "]" Identifier ")" "{" Statement "}" "}" ClassDeclaration ::= "class" Identifier ( "extends" Identifier )? "{" ( VarDeclaration )* ( MethodDeclaration )* "}" VarDeclaration ::= Type Identifier ";" MethodDeclaration ::= "public" Type Identifier "(" ( Type Identifier ( "," Type Identifier )* )? ")" "{" ( VarDeclaration )* ( Statement )* "return" Expression ";" "}" Type ::= "int" "[" "]" | "boolean" | "int" | Identifier Statement ::= "{" ( Statement )* "}" | "if" "(" Expression ")" Statement "else" Statement | "while" "(" Expression ")" Statement | "System.out.println" "(" Expression ")" ";" | Identifier "=" Expression ";" | Identifier "[" Expression "]" "=" Expression ";" Expression ::= Expression ( "&&" | "<" | "+" | "-" | "" ) Expression | Expression "[" Expression "]" | Expression "." "length" | Expression "." Identifier "(" ( Expression ( "," Expression ) )? ")" | <INTEGER_LITERAL> | "true" | "false" | Identifier | "this" | "new" "int" "[" Expression "]" | "new" Identifier "(" ")" | "!" Expression | "(" Expression ")" Identifier ::=

Sample program class Factorial{ public static void main(String[] a){ System.out.println(new Fac().ComputeFac(10)); } }

class Fac { public int ComputeFac(int num){ int num_aux ; if (num < 1) num_aux = 1 ; else num_aux = num * (this.ComputeFac(num-1)) ; return num_aux ; } }



##Problems Faced##
Multiple problems were faced in que, but with the motivation & guidance of Sir Farooq we kept going and soo far finally succeed in developing a lexical analyzer.  

###Problem 1: How does Lexical Analyzer work?###
 
As per the lectures and guidance provided via Sir Farooq Zaidi, we found out that it tokenizes the code one by one and creates a token stream.

### Problem 2: YACC###
The input of YACC is the rule or grammar and the output is a java program, which was quite difficult to obtain in a row.

### Confession ###
Ohh God!!
Sir is adequately brilliant to pridict the code is replicated from various sources, But God better You know, what were the conditions to play out thusly. Although the sources are referenced below where we have replicated the code additionally there are not many changes made. The code is running impeccably.


##References##
- [links](https://youtu.be/54bo1qaHAfk), YouTube video 1.
- [links](https://youtu.be/__-wUHG2rfM), YouTube video 2.
- [links](https://github.com/starbops/MJP), Github Link.
