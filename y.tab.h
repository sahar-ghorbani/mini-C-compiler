
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton interface for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.
   
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


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     ID = 258,
     NUM = 259,
     COMMENT = 260,
     SEMICOL = 261,
     COL = 262,
     OBR = 263,
     CBR = 264,
     INT = 265,
     VOID = 266,
     BOOL = 267,
     OPAR = 268,
     CPAR = 269,
     OAQ = 270,
     CAQ = 271,
     IF = 272,
     ELSE = 273,
     WHILE = 274,
     RETURN = 275,
     BREAK = 276,
     EQUAL = 277,
     LESSEQ = 278,
     GREATEREQ = 279,
     PLUSEQUAL = 280,
     MINUSEQUAL = 281,
     PLUS = 282,
     MINUS = 283,
     AND = 284,
     OR = 285,
     NOT = 286,
     LESS = 287,
     GREATER = 288,
     EQUALEQUAL = 289,
     NOTEQUAL = 290,
     STAR = 291,
     DIVIDE = 292,
     PERCENT = 293,
     TRUE = 294,
     FALSE = 295
   };
#endif
/* Tokens.  */
#define ID 258
#define NUM 259
#define COMMENT 260
#define SEMICOL 261
#define COL 262
#define OBR 263
#define CBR 264
#define INT 265
#define VOID 266
#define BOOL 267
#define OPAR 268
#define CPAR 269
#define OAQ 270
#define CAQ 271
#define IF 272
#define ELSE 273
#define WHILE 274
#define RETURN 275
#define BREAK 276
#define EQUAL 277
#define LESSEQ 278
#define GREATEREQ 279
#define PLUSEQUAL 280
#define MINUSEQUAL 281
#define PLUS 282
#define MINUS 283
#define AND 284
#define OR 285
#define NOT 286
#define LESS 287
#define GREATER 288
#define EQUALEQUAL 289
#define NOTEQUAL 290
#define STAR 291
#define DIVIDE 292
#define PERCENT 293
#define TRUE 294
#define FALSE 295




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


