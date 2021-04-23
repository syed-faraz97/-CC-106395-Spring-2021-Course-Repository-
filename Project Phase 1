
# CC Spring 2021: Project Phase 1
### PROJECT MEMBERS ###
StdID | Name
------------ | -------------
**59679** | **FARAZ ASHRAF** 
62628 | MUHAMMAD AHSAN

## Language Selected ##
Mini Java

## Example of main constructs ##

 public static void main(String[] args)
 
## Example of for loop constructs ##
 
 class ForLoopExample {
 
    public static void main(String args[]){
    
         for(int i=10; i>1; i--){
         
              System.out.println("The value of i is: "+i);
         }
    }
}

## Example of array constructs ##

 int arr[]={2,11,45,9};

## Example of if else condition constructs ##

public class IfElseExample {

   public static void main(String args[]){
    
    int num=120;
     if( num < 50 ){
	System.out.println("num is less than 50");
     }
     else {
	System.out.println("num is greater than or equal 50");
     }
   }
}

## Example of while loop constructs ##

int a = 100;

while(a > 0)
{
    // Do something

    a = a - 1;
}


## Lexical Specifications ##

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
	"boolean"
	"int"
	Identifier

Statement	::=	"{" ( Statement )* "}"
	"if" "(" Expression ")" Statement "else" Statement
	"while" "(" Expression ")" Statement
	"System.out.println" "(" Expression ")" ";"
	Identifier "=" Expression ";"
	Identifier "[" Expression "]" "=" Expression ";"


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



## Line Terminators ##

A Java compiler next divides the sequence of Unicode input characters into lines
by recognizing line terminators.
LineTerminator:
the ASCII LF character, also known as "newline"
the ASCII CR character, also known as "return"
the ASCII CR character followed by the ASCII LF character
InputCharacter:
UnicodeInputCharacter but not CR or LF
Lines are terminated by the ASCII characters CR, or LF, or CR LF. The two
characters CR immediately followed by LF are counted as one line terminator, not
two.
A line terminator specifies the termination of the // form of a comment (§3.7).
The lines defined by line terminators may determine the line numbers produced by a Java
compiler.
The result is a sequence of line terminators and input characters, which are the
terminal symbols for the third step in the tokenization process.

## Input Elements and Tokens ##

The input characters and line terminators that result from Unicode escape
processing (§3.3) and then input line recognition (§3.4) are reduced to a sequence
of input elements.
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
the ASCII SUB character, also known as "control-Z"
Those input elements that are not white space or comments are tokens. The tokens
are the terminal symbols of the syntactic grammar (§2.3).
White space (§3.6) and comments (§3.7) can serve to separate tokens that, if
adjacent, might be tokenized in another manner. For example, the ASCII characters
- and = in the input can form the operator token -= (§3.12) only if there is no
intervening white space or comment.
As a special concession for compatibility with certain operating systems, the ASCII
SUB character (\u001a, or control-Z) is ignored if it is the last character in the
escaped input stream.
Consider two tokens x and y in the resulting input stream. If x precedes y, then we
say that x is to the left of y and that y is to the right of x.
For example, in this simple piece of code:
class Empty {
}
we say that the } token is to the right of the { token, even though it appears, in this twodimensional representation, downward and to the left of the { token. This convention about
the use of the words left and right allows us to speak, for example, of the right-hand operand
of a binary operator or of the left-hand side of an assignment.

## White Space ##

White space is defined as the ASCII space character, horizontal tab character, form
feed character, and line terminator characters (§3.4).
WhiteSpace:
the ASCII SP character, also known as "space"
the ASCII HT character, also known as "horizontal tab"
the ASCII FF character, also known as "form feed"
LineTerminator

## Comments ##

There are two kinds of comments:
• /* text */
A traditional comment: all the text from the ASCII characters /* to the ASCII
characters */ is ignored (as in C and C++).
• // text
An end-of-line comment: all the text from the ASCII characters // to the end of
the line is ignored (as in C++).
Comment:
TraditionalComment
EndOfLineComment
TraditionalComment:
/ * CommentTail
CommentTail:
* CommentTailStar
NotStar CommentTail
CommentTailStar:
/
* CommentTailStar
NotStarNotSlash CommentTail
NotStar:
InputCharacter but not *
LineTerminator
NotStarNotSlash:
InputCharacter but not * or /
LineTerminator
EndOfLineComment:
/ / {InputCharacter}
These productions imply all of the following properties:
• Comments do not nest.
• /* and */ have no special meaning in comments that begin with //.
• // has no special meaning in comments that begin with /* or /**.
As a result, the following text is a single complete comment:
/* this comment /* // /** ends here: */
The lexical grammar implies that comments do not occur within character literals,
string literals, or text blocks

## Identifiers ##

An identifier is an unlimited-length sequence of Java letters and Java digits, the
first of which must be a Java letter.
Identifier:
IdentifierChars but not a Keyword or BooleanLiteral or NullLiteral
IdentifierChars:
JavaLetter {JavaLetterOrDigit}
JavaLetter:
any Unicode character that is a "Java letter"
JavaLetterOrDigit:
any Unicode character that is a "Java letter-or-digit"
A "Java letter" is a character for which the method
Character.isJavaIdentifierStart(int) returns true.
A "Java letter-or-digit" is a character for which the method
Character.isJavaIdentifierPart(int) returns true.
The "Java letters" include uppercase and lowercase ASCII Latin letters A-Z (\u0041-
\u005a), and a-z (\u0061-\u007a), and, for historical reasons, the ASCII dollar sign
($, or \u0024) and underscore (_, or \u005f). The dollar sign should be used only in
mechanically generated source code or, rarely, to access pre-existing names on legacy
systems. The underscore may be used in identifiers formed of two or more characters, but
it cannot be used as a one-character identifier due to being a keyword.
The "Java digits" include the ASCII digits 0-9 (\u0030-\u0039).
Letters and digits may be drawn from the entire Unicode character set, which
supports most writing scripts in use in the world today, including the large sets for
Chinese, Japanese, and Korean. This allows programmers to use identifiers in their
programs that are written in their native languages.
An identifier cannot have the same spelling (Unicode character sequence) as a
keyword (§3.9), boolean literal (§3.10.3), or the null literal (§3.10.8), or a compiletime error occurs.
Two identifiers are the same only if, after ignoring characters that are
ignorable, the identifiers have the same Unicode character for each letter
or digit. An ignorable character is a character for which the method
Character.isIdentifierIgnorable(int) returns true. Identifiers that have the
same external appearance may yet be different.
For example, the identifiers consisting of the single letters LATIN CAPITAL LETTER
A (A, \u0041), LATIN SMALL LETTER A (a, \u0061), GREEK CAPITAL
LETTER ALPHA (A, \u0391), CYRILLIC SMALL LETTER A (a, \u0430) and
MATHEMATICAL BOLD ITALIC SMALL A (a, \ud835\udc82) are all different.
Unicode composite characters are different from their canonical equivalent decomposed
characters. For example, a LATIN CAPITAL LETTER A ACUTE (Á, \u00c1) is different
from a LATIN CAPITAL LETTER A (A, \u0041) immediately followed by a NONSPACING ACUTE (´, \u0301) in identifiers. See The Unicode Standard, Section 3.11
"Normalization Forms".
Examples of identifiers are:
• String
• i3
• αρετη
• MAX_VALUE
• isLetterOrDigit
The identifiers var, yield, and record are restricted identifiers because they are
not allowed in some contexts.
A type identifier is an identifier that is not the character sequence var, yield, or
record.
TypeIdentifier:
Identifier but not var, yield, or record
Type identifiers are used in certain contexts involving the declaration of classes and
interfaces, and the use of types. For example, the name of a class must be a TypeIdentifier,
so it is illegal to declare a class named var, yield, or record (§8.1).
An unqualified method identifier is an identifier that is not the character sequence
yield.
UnqualifiedMethodIdentifier:
Identifier but not yield
This restriction allows yield to be used in a yield statement (§14.21) and still also be
used as a (qualified) method name for compatibility reasons.

## Keywords ##

51 character sequences, formed from ASCII letters, are reserved for use as
keywords and cannot be used as identifiers
Keyword:
(one of)
abstract continue for new switch
assert default if package synchronized
boolean do goto private this
break double implements protected throw
byte else import public throws
case enum instanceof return transient
catch extends int short try
char final interface static void
class finally long strictfp volatile
const float native super while
_ (underscore)
The keywords const and goto are reserved, even though they are not currently used.
This may allow a Java compiler to produce better error messages if these C++ keywords
incorrectly appear in programs. The keyword _ (underscore) is reserved for possible future
use in parameter declarations.
A variety of character sequences are sometimes assumed, incorrectly, to be keywords:
• true and false are not keywords, but rather boolean literals (§3.10.3).
• null is not a keyword, but rather the null literal (§3.10.8).
• var, yield, and record are not keywords, but rather restricted identifiers (§3.8).
var has special meaning as the type of a local variable declaration (§14.4) and the
type of a lambda formal parameter (§15.27.1). yield has special meaning in a yield
statement (§14.21); all invocations of a method named yield must be qualified so as
to be distinguished from a yield statement. record has special meaning in a record
declaration (§8.10).
A further ten character sequences are restricted keywords: open, module,
requires, transitive, exports, opens, to, uses, provides, and with. These
character sequences are tokenized as keywords solely where they appear as
terminals in the ModuleDeclaration, ModuleDirective, and RequiresModifier
productions (§7.7). They are tokenized as identifiers everywhere else, for
compatibility with programs written before the introduction of restricted keywords.
There is one exception: immediately to the right of the character sequence
requires in the ModuleDirective production, the character sequence transitive
is tokenized as a keyword unless it is followed by a separator, in which case it is
tokenized as an identifier.

## Literals ##

A literal is the source code representation of a value of a primitive type (§4.2), the
String type (§4.3.3), or the null type (§4.1).
Literal:
IntegerLiteral
FloatingPointLiteral
BooleanLiteral
CharacterLiteral
StringLiteral
TextBlock
NullLiteral

## Separators ##

Twelve tokens, formed from ASCII characters, are the separators (punctuators).
Separator:
(one of)
( ) { } [ ] ; , . ... @ ::

## Operators ##

38 tokens, formed from ASCII characters, are the operators.
Operator:
(one of)
= > < ! ~ ? : ->
== >= <= != && || ++ --
+ - * / & | ^ % << >> >>>
+= -= *= /= &= |= ^= %= <<= >>= >>>=


## Language CFG ##

A context-free grammar consists of a number of productions. Each production has an abstract symbol called a nonterminal as its left-hand side, and a sequence of one or more nonterminal and terminal symbols as its right-hand side. For each grammar, the terminal symbols are drawn from a specified alphabet.

Starting from a sentence consisting of a single distinguished nonterminal, called the goal symbol, a given context-free grammar specifies a language, namely, the set of possible sequences of terminal symbols that can result from repeatedly replacing any nonterminal in the sequence with a right-hand side of a production for which the nonterminal is the left-hand side.
