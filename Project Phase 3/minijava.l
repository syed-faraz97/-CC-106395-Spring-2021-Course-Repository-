
%{
#include "minijava.h"
%}

%%

class 									return PROGRAM;        
main 									return PROGRAM; 
"+"|"-"|"*"|"/" 							return OPERATOR;
"<"|">"|"=="|"!=" 							return OPERATOR;
"=" 									return OPERATOR;
"&&"|"||" 								return OPERATOR;
[a-zA-Z] 								return STRING;
[0-9]* 									return NUMBER;
"("|")"|"["|"]"|"{"|"}" 						return BRACKET;
int|void|boolean|double|float 						return KEYWORD;
"."|";"|"," 								return PUNCTUATION;
private|static|public 							return SPECIFIER;
if|else 								return KEYWORD;
void|int 								return KEYWORD;
"System.out.println"|"System.out.print" 				return PRINT;
[a-zA-Z]+[_a-zA-Z0-9]* 							return ID;
null|return|this|new|true|false 					return KEYWORD;
do|while|switch 							return KEYWORD;
[ |\n|\t|" "] 								return SPACES;
"*/"

"//"[a-zA-Z0-9!@#.,:$%^&()_+]|"/"[a-zA-Z0-9!@#$%^&()_+]"/" 	return COMMENT;

%%

int yywrap(void)
{
  return 1;

}
