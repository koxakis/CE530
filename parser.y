//************************ SPICE Parser *************************//
//                       CE530, Fall 2018                        //
//                       ECE, UTH, Greece                        //
// File: parser.y, Yacc rules file                               //
// Authors: Nikolaos Koxenoglou (1711), Stavros Simoglou (1852), //
// Christos Georgakidis (1964).                                  //
//***************************************************************//

%{
#include "lib_parser.h"
#include <stdio.h>
#include <string.h>
#include <math.h>
#include <stdlib.h>
extern int yylex();
extern char *yytext;
extern FILE *yyin;
void yyerror(const char *s);
%}

%union {
  double doubleVal;
  char *stringVal;
  int token;
}

