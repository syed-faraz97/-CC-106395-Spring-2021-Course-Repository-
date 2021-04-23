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

### Lexical Specification ###
Unicode Escapes
A compiler for the Java programming language ("Java compiler") first recognizes Unicode escapes in its input, translating the ASCII characters \u followed by four hexadecimal digits to the UTF-16 code unit (§3.1) for the indicated hexadecimal value, and passing all other characters unchanged. Representing supplementary characters requires two consecutive Unicode escapes. This translation step results in a sequence of Unicode input characters.

UnicodeInputCharacter:
UnicodeEscape
RawInputCharacter
UnicodeEscape:
\ UnicodeMarker HexDigit HexDigit HexDigit HexDigit
UnicodeMarker:
u {u}
HexDigit:
(one of)
0 1 2 3 4 5 6 7 8 9 a b c d e f A B C D E F
RawInputCharacter:
any Unicode character

Line Terminators
A Java compiler next divides the sequence of Unicode input characters into lines by recognizing line terminators.
LineTerminator:
the ASCII LF character, also known as "newline"
the ASCII CR character, also known as "return"
the ASCII CR character followed by the ASCII LF character

Input Elements and Tokens
The input characters and line terminators that result from escape processing and then input line recognition are reduced to a sequence of input elements.

Input:
{InputElement} [Sub]
InputElement:
WhiteSpace
Comment
Token
Token:
Identifier
Keyword
Literal
Separator
Operator
Sub:
the ASCII SUB character, also known as "control-Z

White Space
White space is defined as the ASCII space character, horizontal tab character, form feed character, and line terminator characters.
WhiteSpace:
the ASCII SP character, also known as "space"
the ASCII HT character, also known as "horizontal tab"
the ASCII FF character, also known as "form feed"

Comments
There are two kinds of comments:
/* text */
A traditional comment: all the text from the ASCII characters /* to the ASCII characters */ is ignored (as in C and C++).
// text
An end-of-line comment: all the text from the ASCII characters // to the end of the line is ignored (as in C++).

Identifiers
An identifier is an unlimited-length sequence of Java letters and Java digits, the first of which must be a Java letter.
A "Java letter" is a character for which the method Character.isJavaIdentifierStart(int) returns true.
A "Java letter-or-digit" is a character for which the method Character.isJavaIdentifierPart(int) returns true.

Keywords
50 character sequences, formed from ASCII letters, are reserved for use as keywords and cannot be used as identifiers.
Keywords:
abstract   continue   for          new         switch
assert     default    if           package     synchronized
boolean    do         goto         private     this
break      double     implements   protected   throw
byte       else       import       public      throws
case       enum       instanceof   return      transient
catch      extends    int          short       try
char       final      interface    static      void
class      finally    long         strictfp    volatile
const      float      native       super       while


Literals
A literal is the source code representation of a value of a primitive type (§4.2), the String type, or the null type.

Literal:
IntegerLiteral
FloatingPointLiteral
BooleanLiteral
CharacterLiteral
StringLiteral
NullLiteral

Character Literals
A character literal is expressed as a character or an escape sequence, enclosed in ASCII single quotes. (The single-quote, or apostrophe, character is \u0027.)

CharacterLiterals:
-SingleCharacter '
-EscapeSequence '
SingleCharacter:
InputCharacter but not ' or \

Separators
Twelve tokens, formed from ASCII characters, are the separators (punctuators).
Separators:
(one of)
(   )   {   }   [   ]   ;   ,   .   ...   @   ::

Operators
38 tokens, formed from ASCII characters, are the operators.
Operators:
(one of)
=   >   <   !   ~   ?   :   ->
==  >=  <=  !=  &&  ||  ++  --
+   -   *   /   &   |   ^   %   <<   >>   >>>
+=  -=  *=  /=  &=  |=  ^=  %=  <<=  >>=  >>>=


### Grammar ###
MiniJava Grammar Program ::= MainClass ( ClassDeclaration )* MainClass ::= "class" Identifier "{" "public" "static" "void" "main" "(" "String" "[" "]" Identifier ")" "{" Statement "}" "}" ClassDeclaration ::= "class" Identifier ( "extends" Identifier )? "{" ( VarDeclaration )* ( MethodDeclaration )* "}" VarDeclaration ::= Type Identifier ";" MethodDeclaration ::= "public" Type Identifier "(" ( Type Identifier ( "," Type Identifier )* )? ")" "{" ( VarDeclaration )* ( Statement )* "return" Expression ";" "}" Type ::= "int" "[" "]" | "boolean" | "int" | Identifier Statement ::= "{" ( Statement )* "}" | "if" "(" Expression ")" Statement "else" Statement | "while" "(" Expression ")" Statement | "System.out.println" "(" Expression ")" ";" | Identifier "=" Expression ";" | Identifier "[" Expression "]" "=" Expression ";" Expression ::= Expression ( "&&" | "<" | "+" | "-" | "" ) Expression | Expression "[" Expression "]" | Expression "." "length" | Expression "." Identifier "(" ( Expression ( "," Expression ) )? ")" | <INTEGER_LITERAL> | "true" | "false" | Identifier | "this" | "new" "int" "[" Expression "]" | "new" Identifier "(" ")" | "!" Expression | "(" Expression ")" Identifier ::=

Sample program class Factorial{ public static void main(String[] a){ System.out.println(new Fac().ComputeFac(10)); } }

class Fac { public int ComputeFac(int num){ int num_aux ; if (num < 1) num_aux = 1 ; else num_aux = num * (this.ComputeFac(num-1)) ; return num_aux ; } }



## Problems Faced ##
Multiple problems were faced in que, but with the motivation & guidance of Sir Farooq we kept going and soo far finally succeed in developing a lexical analyzer.  

### Problem 1: How does Lexical Analyzer work? ###
 
As per the lectures and guidance provided via Sir Farooq Zaidi, we found out that it tokenizes the code one by one and creates a token stream.

### Problem 2: YACC###
The input of YACC is the rule or grammar and the output is a java program, which was quite difficult to obtain in a row.

### Confession ###
Ohh God!!
Sir is adequately brilliant to pridict the code is replicated from various sources, But God better You know, what were the conditions to play out thusly. Although the sources are referenced below where we have replicated the code additionally there are not many changes made. The code is running impeccably.


## References ##
- [links](https://youtu.be/54bo1qaHAfk), YouTube video 1.
- [links](https://youtu.be/__-wUHG2rfM), YouTube video 2.
- [links](https://github.com/starbops/MJP), Github Link.
