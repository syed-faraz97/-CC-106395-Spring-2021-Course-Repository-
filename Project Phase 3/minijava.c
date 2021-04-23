#include <stdio.h>
#include "minijava.h"

extern int yylex();
extern int yylineno;
extern char* yytext;

int main(void)
{
	int ntoken, vtoken;
	
	ntoken = yylex();
	while(ntoken){
		printf("%d\n", ntoken);
		vtoken = yylex();
		switch(ntoken){
			case PROGRAM:
			case OPERATOR:
			case STRING:
			case NUMBER:
			case BRACKET:
			case KEYWORD:
			case SPECIFIER:
			case PRINT:
			case ID:
			case SPACES:
				printf("set to %s\n", yytext);
				break;
			default:
				printf("Syntax error in line %d\n", yylineno);
			}
		ntoken = yylex();
		}

	return 0;
}
