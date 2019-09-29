/* A Bison parser, made by GNU Bison 3.3.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2019 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

#ifndef YY_YY_MONGA_TAB_H_INCLUDED
# define YY_YY_MONGA_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    TOKEN_CHARACTER = 258,
    TOKEN_TRUE = 259,
    TOKEN_FALSE = 260,
    TOKEN_INTEGER = 261,
    TOKEN_FLOAT = 262,
    TOKEN_STRING = 263,
    TOKEN_IDENTIFIER = 264,
    TOKEN_NEW = 265,
    TOKEN_WORD_BOOL = 266,
    TOKEN_WORD_CHAR = 267,
    TOKEN_WORD_INT = 268,
    TOKEN_WORD_FLOAT = 269,
    TOKEN_IF = 270,
    TOKEN_ELSE = 271,
    TOKEN_WHILE = 272,
    TOKEN_AS = 273,
    TOKEN_RETURN = 274,
    TOKEN_OPEN_PARENTHESES = 275,
    TOKEN_CLOSE_PARENTHESES = 276,
    TOKEN_OPEN_BRACKETS = 277,
    TOKEN_CLOSE_BRACKETS = 278,
    TOKEN_OPEN_BRACES = 279,
    TOKEN_CLOSE_BRACES = 280,
    TOKEN_EQUAL = 281,
    TOKEN_NOT_EQUAL = 282,
    TOKEN_LESS_EQUAL = 283,
    TOKEN_GREATER_EQUAL = 284,
    TOKEN_AND = 285,
    TOKEN_OR = 286,
    TOKEN_SUBTRACT = 287,
    TOKEN_ADD = 288,
    TOKEN_MULTIPLY = 289,
    TOKEN_DIVIDE = 290,
    TOKEN_ASSIGNMENT = 291,
    TOKEN_LESS = 292,
    TOKEN_GREATER = 293,
    TOKEN_NOT = 294,
    TOKEN_AT_SIGN = 295,
    TOKEN_COMMA = 296,
    TOKEN_COLON = 297,
    TOKEN_SEMICOLON = 298
  };
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED

union YYSTYPE
{
#line 12 "monga.y" /* yacc.c:1921  */

	char c;
	int b;
	int i;
	float f;
	char* s;

	Node n;

#line 112 "monga.tab.h" /* yacc.c:1921  */
};

typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_MONGA_TAB_H_INCLUDED  */
