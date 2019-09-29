/* A Bison parser, made by GNU Bison 3.3.2.  */

/* Bison implementation for Yacc-like parsers in C

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

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Undocumented macros, especially those whose name start with YY_,
   are private implementation details.  Do not rely on them.  */

/* Identify Bison output.  */
#define YYBISON 1

/* Bison version.  */
#define YYBISON_VERSION "3.3.2"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* First part of user prologue.  */
#line 1 "monga.y" /* yacc.c:337  */

	// Nome: Thiago Lages de Alencar
	// Matricula: 1721629

	#include"monga.h"
	
	Node __root__;

#line 79 "monga.tab.c" /* yacc.c:337  */
# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif

/* Enabling verbose error messages.  */
#ifdef YYERROR_VERBOSE
# undef YYERROR_VERBOSE
# define YYERROR_VERBOSE 1
#else
# define YYERROR_VERBOSE 0
#endif

/* In a future release of Bison, this section will be replaced
   by #include "monga.tab.h".  */
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
#line 12 "monga.y" /* yacc.c:352  */

	char c;
	int b;
	int i;
	float f;
	char* s;

	Node n;

#line 176 "monga.tab.c" /* yacc.c:352  */
};

typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;

int yyparse (void);

#endif /* !YY_YY_MONGA_TAB_H_INCLUDED  */



#ifdef short
# undef short
#endif

#ifdef YYTYPE_UINT8
typedef YYTYPE_UINT8 yytype_uint8;
#else
typedef unsigned char yytype_uint8;
#endif

#ifdef YYTYPE_INT8
typedef YYTYPE_INT8 yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef YYTYPE_UINT16
typedef YYTYPE_UINT16 yytype_uint16;
#else
typedef unsigned short yytype_uint16;
#endif

#ifdef YYTYPE_INT16
typedef YYTYPE_INT16 yytype_int16;
#else
typedef short yytype_int16;
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif ! defined YYSIZE_T
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned
# endif
#endif

#define YYSIZE_MAXIMUM ((YYSIZE_T) -1)

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif

#ifndef YY_ATTRIBUTE
# if (defined __GNUC__                                               \
      && (2 < __GNUC__ || (__GNUC__ == 2 && 96 <= __GNUC_MINOR__)))  \
     || defined __SUNPRO_C && 0x5110 <= __SUNPRO_C
#  define YY_ATTRIBUTE(Spec) __attribute__(Spec)
# else
#  define YY_ATTRIBUTE(Spec) /* empty */
# endif
#endif

#ifndef YY_ATTRIBUTE_PURE
# define YY_ATTRIBUTE_PURE   YY_ATTRIBUTE ((__pure__))
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# define YY_ATTRIBUTE_UNUSED YY_ATTRIBUTE ((__unused__))
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YYUSE(E) ((void) (E))
#else
# define YYUSE(E) /* empty */
#endif

#if defined __GNUC__ && ! defined __ICC && 407 <= __GNUC__ * 100 + __GNUC_MINOR__
/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN \
    _Pragma ("GCC diagnostic push") \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")\
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# define YY_IGNORE_MAYBE_UNINITIALIZED_END \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif


#if ! defined yyoverflow || YYERROR_VERBOSE

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* ! defined yyoverflow || YYERROR_VERBOSE */


#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yytype_int16 yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (sizeof (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (sizeof (yytype_int16) + sizeof (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYSIZE_T yynewbytes;                                            \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * sizeof (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / sizeof (*yyptr);                          \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, (Count) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYSIZE_T yyi;                         \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  9
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   247

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  44
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  36
/* YYNRULES -- Number of rules.  */
#define YYNRULES  86
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  148

#define YYUNDEFTOK  2
#define YYMAXUTOK   298

/* YYTRANSLATE(TOKEN-NUM) -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, with out-of-bounds checking.  */
#define YYTRANSLATE(YYX)                                                \
  ((unsigned) (YYX) <= YYMAXUTOK ? yytranslate[YYX] : YYUNDEFTOK)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex.  */
static const yytype_uint8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43
};

#if YYDEBUG
  /* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_uint16 yyrline[] =
{
       0,   123,   123,   124,   127,   128,   131,   132,   135,   138,
     139,   140,   141,   142,   145,   146,   147,   148,   151,   152,
     155,   158,   159,   160,   161,   164,   165,   168,   169,   172,
     173,   174,   175,   176,   177,   178,   179,   182,   183,   186,
     187,   190,   193,   194,   197,   200,   201,   204,   205,   208,
     209,   212,   213,   216,   217,   220,   221,   224,   225,   228,
     229,   232,   233,   236,   237,   240,   241,   244,   245,   248,
     249,   252,   253,   256,   257,   260,   261,   262,   263,   266,
     267,   270,   271,   272,   273,   274,   275
};
#endif

#if YYDEBUG || YYERROR_VERBOSE || 0
/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "$end", "error", "$undefined", "TOKEN_CHARACTER", "TOKEN_TRUE",
  "TOKEN_FALSE", "TOKEN_INTEGER", "TOKEN_FLOAT", "TOKEN_STRING",
  "TOKEN_IDENTIFIER", "TOKEN_NEW", "TOKEN_WORD_BOOL", "TOKEN_WORD_CHAR",
  "TOKEN_WORD_INT", "TOKEN_WORD_FLOAT", "TOKEN_IF", "TOKEN_ELSE",
  "TOKEN_WHILE", "TOKEN_AS", "TOKEN_RETURN", "TOKEN_OPEN_PARENTHESES",
  "TOKEN_CLOSE_PARENTHESES", "TOKEN_OPEN_BRACKETS", "TOKEN_CLOSE_BRACKETS",
  "TOKEN_OPEN_BRACES", "TOKEN_CLOSE_BRACES", "TOKEN_EQUAL",
  "TOKEN_NOT_EQUAL", "TOKEN_LESS_EQUAL", "TOKEN_GREATER_EQUAL",
  "TOKEN_AND", "TOKEN_OR", "TOKEN_SUBTRACT", "TOKEN_ADD", "TOKEN_MULTIPLY",
  "TOKEN_DIVIDE", "TOKEN_ASSIGNMENT", "TOKEN_LESS", "TOKEN_GREATER",
  "TOKEN_NOT", "TOKEN_AT_SIGN", "TOKEN_COMMA", "TOKEN_COLON",
  "TOKEN_SEMICOLON", "$accept", "program", "define_list", "define",
  "define_variable", "variable_type", "define_function", "parameter_list",
  "parameter", "block", "variable_list", "command_list", "command",
  "variable", "function_call", "new_array", "expression_list",
  "expression", "expression_or", "expression_and", "expression_equal",
  "expression_not_equal", "expression_greater", "expression_greater_equal",
  "expression_less", "expression_less_equal", "expression_sub",
  "expression_add", "expression_div", "expression_mult", "expression_cast",
  "expression_negative", "expression_not", "expression_reference",
  "expression_scope", "expression_data", YY_NULLPTR
};
#endif

# ifdef YYPRINT
/* YYTOKNUM[NUM] -- (External) token number corresponding to the
   (internal) symbol number NUM (which must be that of a token).  */
static const yytype_uint16 yytoknum[] =
{
       0,   256,   257,   258,   259,   260,   261,   262,   263,   264,
     265,   266,   267,   268,   269,   270,   271,   272,   273,   274,
     275,   276,   277,   278,   279,   280,   281,   282,   283,   284,
     285,   286,   287,   288,   289,   290,   291,   292,   293,   294,
     295,   296,   297,   298
};
# endif

#define YYPACT_NINF -44

#define yypact_value_is_default(Yystate) \
  (!!((Yystate) == (-44)))

#define YYTABLE_NINF -1

#define yytable_value_is_error(Yytable_value) \
  0

  /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
     STATE-NUM.  */
static const yytype_int16 yypact[] =
{
       2,   -13,     9,     2,   -44,   -44,   -44,     1,    37,   -44,
     -44,   -30,    -1,     3,   -44,   -44,   -44,   -44,   -44,    37,
     -29,    37,    58,    37,   -44,     4,     6,    -5,   -44,   -44,
     -44,   -44,   -44,   -44,   -44,   -44,     0,    37,   190,   190,
     190,   190,   -44,   190,   -44,   -44,    99,   123,   -44,   -19,
     -22,   -44,    23,   -44,   -44,    28,    37,   -44,   -44,   -44,
     170,    31,     5,   190,   208,   -44,   -44,    28,    25,    24,
      32,    30,    22,    40,    34,    51,    48,    53,    46,    50,
      69,   -44,   -44,    23,    28,    45,    71,    47,   -44,   -44,
     147,   -44,   -44,   190,   -44,   190,   -44,    28,   -44,    72,
      54,   190,   -44,   -44,    78,   190,   190,   190,   190,   190,
     190,   190,   190,   190,   190,   190,   190,    37,   -44,   -44,
     -44,   -44,   -44,    57,    73,   -44,   -44,   190,    87,    28,
      24,    32,    30,    22,    40,    34,    51,    48,    53,    46,
      50,    69,   -44,   -44,   -44,   -44,   -44,   -44
};

  /* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
     Performed when YYTABLE does not specify something else to do.  Zero
     means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       2,     0,     0,     3,     5,     6,     7,     0,     0,     1,
       4,     0,     0,     0,    19,     9,    10,    11,    12,     0,
       0,     0,     0,     0,    17,     0,     0,     0,     8,    20,
      83,    81,    82,    84,    85,    86,    38,     0,     0,     0,
       0,     0,    24,     0,    26,    36,     0,     0,    28,    75,
      76,    77,     0,    78,    80,     0,     0,    15,    18,    13,
       0,     0,    38,     0,     0,    75,    76,     0,    44,    46,
      48,    50,    52,    54,    56,    58,    60,    62,    64,    66,
      68,    70,    72,    74,     0,     0,     0,     0,    22,    25,
       0,    23,    27,     0,    35,     0,    16,     0,    40,     0,
      43,     0,    71,    73,    29,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,    31,    33,
      79,    34,    21,     0,     0,    14,    39,     0,     0,     0,
      45,    47,    49,    51,    53,    55,    57,    59,    61,    63,
      65,    67,    69,    32,    37,    42,    41,    30
};

  /* YYPGOTO[NTERM-NUM].  */
static const yytype_int8 yypgoto[] =
{
     -44,   -44,   -44,    98,    -6,   -18,   -44,   -44,    85,   -12,
     -44,    66,   -43,   -20,   -16,   -44,    -7,    -4,   -44,     8,
      15,    18,     7,    13,    26,    33,    29,    21,    35,    20,
      42,    74,    81,   -14,   -44,   -44
};

  /* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int8 yydefgoto[] =
{
      -1,     2,     3,     4,     5,    20,     6,    13,    14,    45,
      46,    47,    48,    65,    66,    51,    99,   100,    68,    69,
      70,    71,    72,    73,    74,    75,    76,    77,    78,    79,
      80,    81,    82,    83,    53,    54
};

  /* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
     positive, shift that token.  If negative, reduce the rule whose
     number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_uint8 yytable[] =
{
      24,    27,    49,    29,    92,    55,    50,     7,    52,     9,
      11,     1,    21,    57,    28,    11,    44,    93,    59,    61,
      60,    94,    12,    22,    25,    60,    49,    49,    22,     8,
      50,    50,    52,    52,    67,    84,    85,    86,    97,    87,
      89,    23,     8,    96,    26,    95,    56,    92,    15,    16,
      17,    18,    22,   101,   106,   104,   105,   108,   107,    19,
     109,    30,    31,    32,    33,    34,    35,    36,    37,   110,
      49,   111,   118,    38,    50,    39,    52,    40,    41,   112,
     113,   115,    22,    42,   116,   125,   114,   117,   119,   123,
     121,   124,   120,   126,   129,   127,   144,   128,    43,   142,
     143,    10,    30,    31,    32,    33,    34,    35,    36,    37,
     146,    58,    90,   130,    38,   133,    39,   147,    40,    41,
     145,   131,   134,    22,    88,   132,    30,    31,    32,    33,
      34,    35,    62,    37,   138,   140,   135,   102,    38,    43,
      39,   137,    40,    41,   136,   103,     0,    22,    91,   139,
      30,    31,    32,    33,    34,    35,    62,    37,   141,     0,
       0,     0,    38,    43,    39,     0,    40,    41,     0,     0,
       0,    22,   122,    30,    31,    32,    33,    34,    35,    62,
      37,     0,     0,     0,     0,     0,     0,    43,     0,     0,
      41,    98,     0,    30,    31,    32,    33,    34,    35,    62,
      37,     0,    63,     0,     0,     0,     0,     0,     0,    64,
      41,    30,    31,    32,    33,    34,    35,    62,    37,     0,
       0,     0,    63,     0,     0,     0,     0,     0,    41,    64,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    64
};

static const yytype_int16 yycheck[] =
{
      12,    19,    22,    21,    47,    23,    22,    20,    22,     0,
       9,     9,    42,    25,    43,     9,    22,    36,    23,    37,
      20,    43,    21,    24,    21,    20,    46,    47,    24,    42,
      46,    47,    46,    47,    38,    39,    40,    41,    56,    43,
      46,    42,    42,    55,    41,    22,    42,    90,    11,    12,
      13,    14,    24,    22,    30,    67,    31,    27,    26,    22,
      38,     3,     4,     5,     6,     7,     8,     9,    10,    29,
      90,    37,    84,    15,    90,    17,    90,    19,    20,    28,
      32,    35,    24,    25,    34,    97,    33,    18,    43,    93,
      43,    95,    21,    21,    16,    41,    23,   101,    40,   117,
      43,     3,     3,     4,     5,     6,     7,     8,     9,    10,
      23,    26,    46,   105,    15,   108,    17,   129,    19,    20,
     127,   106,   109,    24,    25,   107,     3,     4,     5,     6,
       7,     8,     9,    10,   113,   115,   110,    63,    15,    40,
      17,   112,    19,    20,   111,    64,    -1,    24,    25,   114,
       3,     4,     5,     6,     7,     8,     9,    10,   116,    -1,
      -1,    -1,    15,    40,    17,    -1,    19,    20,    -1,    -1,
      -1,    24,    25,     3,     4,     5,     6,     7,     8,     9,
      10,    -1,    -1,    -1,    -1,    -1,    -1,    40,    -1,    -1,
      20,    21,    -1,     3,     4,     5,     6,     7,     8,     9,
      10,    -1,    32,    -1,    -1,    -1,    -1,    -1,    -1,    39,
      20,     3,     4,     5,     6,     7,     8,     9,    10,    -1,
      -1,    -1,    32,    -1,    -1,    -1,    -1,    -1,    20,    39,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    39
};

  /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
     symbol of state STATE-NUM.  */
static const yytype_uint8 yystos[] =
{
       0,     9,    45,    46,    47,    48,    50,    20,    42,     0,
      47,     9,    21,    51,    52,    11,    12,    13,    14,    22,
      49,    42,    24,    42,    53,    21,    41,    49,    43,    49,
       3,     4,     5,     6,     7,     8,     9,    10,    15,    17,
      19,    20,    25,    40,    48,    53,    54,    55,    56,    57,
      58,    59,    77,    78,    79,    49,    42,    53,    52,    23,
      20,    49,     9,    32,    39,    57,    58,    61,    62,    63,
      64,    65,    66,    67,    68,    69,    70,    71,    72,    73,
      74,    75,    76,    77,    61,    61,    61,    61,    25,    48,
      55,    25,    56,    36,    43,    22,    53,    49,    21,    60,
      61,    22,    75,    76,    53,    31,    30,    26,    27,    38,
      29,    37,    28,    32,    33,    35,    34,    18,    53,    43,
      21,    43,    25,    61,    61,    53,    21,    41,    61,    16,
      63,    64,    65,    66,    67,    68,    69,    70,    71,    72,
      73,    74,    49,    43,    23,    60,    23,    53
};

  /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_uint8 yyr1[] =
{
       0,    44,    45,    45,    46,    46,    47,    47,    48,    49,
      49,    49,    49,    49,    50,    50,    50,    50,    51,    51,
      52,    53,    53,    53,    53,    54,    54,    55,    55,    56,
      56,    56,    56,    56,    56,    56,    56,    57,    57,    58,
      58,    59,    60,    60,    61,    62,    62,    63,    63,    64,
      64,    65,    65,    66,    66,    67,    67,    68,    68,    69,
      69,    70,    70,    71,    71,    72,    72,    73,    73,    74,
      74,    75,    75,    76,    76,    77,    77,    77,    77,    78,
      78,    79,    79,    79,    79,    79,    79
};

  /* YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
{
       0,     2,     0,     1,     2,     1,     1,     1,     4,     1,
       1,     1,     1,     3,     7,     5,     6,     4,     3,     1,
       3,     4,     3,     3,     2,     2,     1,     2,     1,     3,
       5,     3,     4,     3,     3,     2,     1,     4,     1,     4,
       3,     5,     3,     1,     1,     3,     1,     3,     1,     3,
       1,     3,     1,     3,     1,     3,     1,     3,     1,     3,
       1,     3,     1,     3,     1,     3,     1,     3,     1,     3,
       1,     2,     1,     2,     1,     1,     1,     1,     1,     3,
       1,     1,     1,     1,     1,     1,     1
};


#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)
#define YYEMPTY         (-2)
#define YYEOF           0

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                    \
  do                                                              \
    if (yychar == YYEMPTY)                                        \
      {                                                           \
        yychar = (Token);                                         \
        yylval = (Value);                                         \
        YYPOPSTACK (yylen);                                       \
        yystate = *yyssp;                                         \
        goto yybackup;                                            \
      }                                                           \
    else                                                          \
      {                                                           \
        yyerror (YY_("syntax error: cannot back up")); \
        YYERROR;                                                  \
      }                                                           \
  while (0)

/* Error token number */
#define YYTERROR        1
#define YYERRCODE       256



/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)

/* This macro is provided for backward compatibility. */
#ifndef YY_LOCATION_PRINT
# define YY_LOCATION_PRINT(File, Loc) ((void) 0)
#endif


# define YY_SYMBOL_PRINT(Title, Type, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Type, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*-----------------------------------.
| Print this symbol's value on YYO.  |
`-----------------------------------*/

static void
yy_symbol_value_print (FILE *yyo, int yytype, YYSTYPE const * const yyvaluep)
{
  FILE *yyoutput = yyo;
  YYUSE (yyoutput);
  if (!yyvaluep)
    return;
# ifdef YYPRINT
  if (yytype < YYNTOKENS)
    YYPRINT (yyo, yytoknum[yytype], *yyvaluep);
# endif
  YYUSE (yytype);
}


/*---------------------------.
| Print this symbol on YYO.  |
`---------------------------*/

static void
yy_symbol_print (FILE *yyo, int yytype, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyo, "%s %s (",
             yytype < YYNTOKENS ? "token" : "nterm", yytname[yytype]);

  yy_symbol_value_print (yyo, yytype, yyvaluep);
  YYFPRINTF (yyo, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yytype_int16 *yybottom, yytype_int16 *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yytype_int16 *yyssp, YYSTYPE *yyvsp, int yyrule)
{
  unsigned long yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %lu):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       yystos[yyssp[yyi + 1 - yynrhs]],
                       &yyvsp[(yyi + 1) - (yynrhs)]
                                              );
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args)
# define YY_SYMBOL_PRINT(Title, Type, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif


#if YYERROR_VERBOSE

# ifndef yystrlen
#  if defined __GLIBC__ && defined _STRING_H
#   define yystrlen strlen
#  else
/* Return the length of YYSTR.  */
static YYSIZE_T
yystrlen (const char *yystr)
{
  YYSIZE_T yylen;
  for (yylen = 0; yystr[yylen]; yylen++)
    continue;
  return yylen;
}
#  endif
# endif

# ifndef yystpcpy
#  if defined __GLIBC__ && defined _STRING_H && defined _GNU_SOURCE
#   define yystpcpy stpcpy
#  else
/* Copy YYSRC to YYDEST, returning the address of the terminating '\0' in
   YYDEST.  */
static char *
yystpcpy (char *yydest, const char *yysrc)
{
  char *yyd = yydest;
  const char *yys = yysrc;

  while ((*yyd++ = *yys++) != '\0')
    continue;

  return yyd - 1;
}
#  endif
# endif

# ifndef yytnamerr
/* Copy to YYRES the contents of YYSTR after stripping away unnecessary
   quotes and backslashes, so that it's suitable for yyerror.  The
   heuristic is that double-quoting is unnecessary unless the string
   contains an apostrophe, a comma, or backslash (other than
   backslash-backslash).  YYSTR is taken from yytname.  If YYRES is
   null, do not copy; instead, return the length of what the result
   would have been.  */
static YYSIZE_T
yytnamerr (char *yyres, const char *yystr)
{
  if (*yystr == '"')
    {
      YYSIZE_T yyn = 0;
      char const *yyp = yystr;

      for (;;)
        switch (*++yyp)
          {
          case '\'':
          case ',':
            goto do_not_strip_quotes;

          case '\\':
            if (*++yyp != '\\')
              goto do_not_strip_quotes;
            else
              goto append;

          append:
          default:
            if (yyres)
              yyres[yyn] = *yyp;
            yyn++;
            break;

          case '"':
            if (yyres)
              yyres[yyn] = '\0';
            return yyn;
          }
    do_not_strip_quotes: ;
    }

  if (! yyres)
    return yystrlen (yystr);

  return (YYSIZE_T) (yystpcpy (yyres, yystr) - yyres);
}
# endif

/* Copy into *YYMSG, which is of size *YYMSG_ALLOC, an error message
   about the unexpected token YYTOKEN for the state stack whose top is
   YYSSP.

   Return 0 if *YYMSG was successfully written.  Return 1 if *YYMSG is
   not large enough to hold the message.  In that case, also set
   *YYMSG_ALLOC to the required number of bytes.  Return 2 if the
   required number of bytes is too large to store.  */
static int
yysyntax_error (YYSIZE_T *yymsg_alloc, char **yymsg,
                yytype_int16 *yyssp, int yytoken)
{
  YYSIZE_T yysize0 = yytnamerr (YY_NULLPTR, yytname[yytoken]);
  YYSIZE_T yysize = yysize0;
  enum { YYERROR_VERBOSE_ARGS_MAXIMUM = 5 };
  /* Internationalized format string. */
  const char *yyformat = YY_NULLPTR;
  /* Arguments of yyformat. */
  char const *yyarg[YYERROR_VERBOSE_ARGS_MAXIMUM];
  /* Number of reported tokens (one for the "unexpected", one per
     "expected"). */
  int yycount = 0;

  /* There are many possibilities here to consider:
     - If this state is a consistent state with a default action, then
       the only way this function was invoked is if the default action
       is an error action.  In that case, don't check for expected
       tokens because there are none.
     - The only way there can be no lookahead present (in yychar) is if
       this state is a consistent state with a default action.  Thus,
       detecting the absence of a lookahead is sufficient to determine
       that there is no unexpected or expected token to report.  In that
       case, just report a simple "syntax error".
     - Don't assume there isn't a lookahead just because this state is a
       consistent state with a default action.  There might have been a
       previous inconsistent state, consistent state with a non-default
       action, or user semantic action that manipulated yychar.
     - Of course, the expected token list depends on states to have
       correct lookahead information, and it depends on the parser not
       to perform extra reductions after fetching a lookahead from the
       scanner and before detecting a syntax error.  Thus, state merging
       (from LALR or IELR) and default reductions corrupt the expected
       token list.  However, the list is correct for canonical LR with
       one exception: it will still contain any token that will not be
       accepted due to an error action in a later state.
  */
  if (yytoken != YYEMPTY)
    {
      int yyn = yypact[*yyssp];
      yyarg[yycount++] = yytname[yytoken];
      if (!yypact_value_is_default (yyn))
        {
          /* Start YYX at -YYN if negative to avoid negative indexes in
             YYCHECK.  In other words, skip the first -YYN actions for
             this state because they are default actions.  */
          int yyxbegin = yyn < 0 ? -yyn : 0;
          /* Stay within bounds of both yycheck and yytname.  */
          int yychecklim = YYLAST - yyn + 1;
          int yyxend = yychecklim < YYNTOKENS ? yychecklim : YYNTOKENS;
          int yyx;

          for (yyx = yyxbegin; yyx < yyxend; ++yyx)
            if (yycheck[yyx + yyn] == yyx && yyx != YYTERROR
                && !yytable_value_is_error (yytable[yyx + yyn]))
              {
                if (yycount == YYERROR_VERBOSE_ARGS_MAXIMUM)
                  {
                    yycount = 1;
                    yysize = yysize0;
                    break;
                  }
                yyarg[yycount++] = yytname[yyx];
                {
                  YYSIZE_T yysize1 = yysize + yytnamerr (YY_NULLPTR, yytname[yyx]);
                  if (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM)
                    yysize = yysize1;
                  else
                    return 2;
                }
              }
        }
    }

  switch (yycount)
    {
# define YYCASE_(N, S)                      \
      case N:                               \
        yyformat = S;                       \
      break
    default: /* Avoid compiler warnings. */
      YYCASE_(0, YY_("syntax error"));
      YYCASE_(1, YY_("syntax error, unexpected %s"));
      YYCASE_(2, YY_("syntax error, unexpected %s, expecting %s"));
      YYCASE_(3, YY_("syntax error, unexpected %s, expecting %s or %s"));
      YYCASE_(4, YY_("syntax error, unexpected %s, expecting %s or %s or %s"));
      YYCASE_(5, YY_("syntax error, unexpected %s, expecting %s or %s or %s or %s"));
# undef YYCASE_
    }

  {
    YYSIZE_T yysize1 = yysize + yystrlen (yyformat);
    if (yysize <= yysize1 && yysize1 <= YYSTACK_ALLOC_MAXIMUM)
      yysize = yysize1;
    else
      return 2;
  }

  if (*yymsg_alloc < yysize)
    {
      *yymsg_alloc = 2 * yysize;
      if (! (yysize <= *yymsg_alloc
             && *yymsg_alloc <= YYSTACK_ALLOC_MAXIMUM))
        *yymsg_alloc = YYSTACK_ALLOC_MAXIMUM;
      return 1;
    }

  /* Avoid sprintf, as that infringes on the user's name space.
     Don't have undefined behavior even if the translation
     produced a string with the wrong number of "%s"s.  */
  {
    char *yyp = *yymsg;
    int yyi = 0;
    while ((*yyp = *yyformat) != '\0')
      if (*yyp == '%' && yyformat[1] == 's' && yyi < yycount)
        {
          yyp += yytnamerr (yyp, yyarg[yyi++]);
          yyformat += 2;
        }
      else
        {
          yyp++;
          yyformat++;
        }
  }
  return 0;
}
#endif /* YYERROR_VERBOSE */

/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg, int yytype, YYSTYPE *yyvaluep)
{
  YYUSE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yytype, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YYUSE (yytype);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}




/* The lookahead symbol.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;


/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    int yystate;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus;

    /* The stacks and their tools:
       'yyss': related to states.
       'yyvs': related to semantic values.

       Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* The state stack.  */
    yytype_int16 yyssa[YYINITDEPTH];
    yytype_int16 *yyss;
    yytype_int16 *yyssp;

    /* The semantic value stack.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs;
    YYSTYPE *yyvsp;

    YYSIZE_T yystacksize;

  int yyn;
  int yyresult;
  /* Lookahead token as an internal (translated) token number.  */
  int yytoken = 0;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;

#if YYERROR_VERBOSE
  /* Buffer for error messages, and its allocated size.  */
  char yymsgbuf[128];
  char *yymsg = yymsgbuf;
  YYSIZE_T yymsg_alloc = sizeof yymsgbuf;
#endif

#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  yyssp = yyss = yyssa;
  yyvsp = yyvs = yyvsa;
  yystacksize = YYINITDEPTH;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yystate = 0;
  yyerrstatus = 0;
  yynerrs = 0;
  yychar = YYEMPTY; /* Cause a token to be read.  */
  goto yysetstate;


/*------------------------------------------------------------.
| yynewstate -- push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;


/*--------------------------------------------------------------------.
| yynewstate -- set current state (the top of the stack) to yystate.  |
`--------------------------------------------------------------------*/
yysetstate:
  *yyssp = (yytype_int16) yystate;

  if (yyss + yystacksize - 1 <= yyssp)
#if !defined yyoverflow && !defined YYSTACK_RELOCATE
    goto yyexhaustedlab;
#else
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYSIZE_T yysize = (YYSIZE_T) (yyssp - yyss + 1);

# if defined yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        YYSTYPE *yyvs1 = yyvs;
        yytype_int16 *yyss1 = yyss;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * sizeof (*yyssp),
                    &yyvs1, yysize * sizeof (*yyvsp),
                    &yystacksize);
        yyss = yyss1;
        yyvs = yyvs1;
      }
# else /* defined YYSTACK_RELOCATE */
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        goto yyexhaustedlab;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yytype_int16 *yyss1 = yyss;
        union yyalloc *yyptr =
          (union yyalloc *) YYSTACK_ALLOC (YYSTACK_BYTES (yystacksize));
        if (! yyptr)
          goto yyexhaustedlab;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
# undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YYDPRINTF ((stderr, "Stack size increased to %lu\n",
                  (unsigned long) yystacksize));

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }
#endif /* !defined yyoverflow && !defined YYSTACK_RELOCATE */

  YYDPRINTF ((stderr, "Entering state %d\n", yystate));

  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;


/*-----------.
| yybackup.  |
`-----------*/
yybackup:
  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either YYEMPTY or YYEOF or a valid lookahead symbol.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token: "));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = yytoken = YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);

  /* Discard the shifted token.  */
  yychar = YYEMPTY;

  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
        case 2:
#line 123 "monga.y" /* yacc.c:1652  */
    { __root__ = create_node_empty(); (yyval.n) = __root__; }
#line 1403 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 3:
#line 124 "monga.y" /* yacc.c:1652  */
    { __root__ = (yyvsp[0].n); (yyval.n) = __root__; }
#line 1409 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 4:
#line 127 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_define_list((yyvsp[-1].n), (yyvsp[0].n)); }
#line 1415 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 5:
#line 128 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_define((yyvsp[0].n)); }
#line 1421 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 6:
#line 131 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1427 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 7:
#line 132 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1433 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 8:
#line 135 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_define_variable((yyvsp[-3].s), (yyvsp[-1].n)); }
#line 1439 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 9:
#line 138 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_variable_type_bool(); }
#line 1445 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 10:
#line 139 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_variable_type_char(); }
#line 1451 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 11:
#line 140 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_variable_type_int(); }
#line 1457 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 12:
#line 141 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_variable_type_float(); }
#line 1463 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 13:
#line 142 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_variable_type_array((yyvsp[-1].n)); }
#line 1469 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 14:
#line 145 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_define_function_double((yyvsp[-6].s), (yyvsp[-4].n), (yyvsp[-1].n), (yyvsp[0].n)); }
#line 1475 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 15:
#line 146 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_define_function_single((yyvsp[-4].s), (yyvsp[-2].n), (yyvsp[0].n)); }
#line 1481 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 16:
#line 147 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_define_function_single((yyvsp[-5].s), (yyvsp[-1].n), (yyvsp[0].n)); }
#line 1487 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 17:
#line 148 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_define_function_empty((yyvsp[-3].s), (yyvsp[0].n)); }
#line 1493 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 18:
#line 151 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_parameter_list((yyvsp[-2].n), (yyvsp[0].n)); }
#line 1499 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 19:
#line 152 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1505 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 20:
#line 155 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_parameter((yyvsp[-2].s), (yyvsp[0].n)); }
#line 1511 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 21:
#line 158 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_block_double((yyvsp[-2].n), (yyvsp[-1].n)); }
#line 1517 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 22:
#line 159 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_block_single((yyvsp[-1].n)); }
#line 1523 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 23:
#line 160 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_block_single((yyvsp[-1].n)); }
#line 1529 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 24:
#line 161 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_block_empty(); }
#line 1535 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 25:
#line 164 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_variable_list((yyvsp[-1].n), (yyvsp[0].n)); }
#line 1541 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 26:
#line 165 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1547 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 27:
#line 168 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_command_list((yyvsp[-1].n), (yyvsp[0].n)); }
#line 1553 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 28:
#line 169 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1559 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 29:
#line 172 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_if((yyvsp[-1].n), (yyvsp[0].n)); }
#line 1565 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 30:
#line 173 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_if_else((yyvsp[-3].n), (yyvsp[-2].n), (yyvsp[0].n)); }
#line 1571 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 31:
#line 174 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_while((yyvsp[-1].n), (yyvsp[0].n)); }
#line 1577 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 32:
#line 175 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_assignment((yyvsp[-3].n), (yyvsp[-1].n)); }
#line 1583 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 33:
#line 176 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_return((yyvsp[-1].n)); }
#line 1589 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 34:
#line 177 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_print((yyvsp[-1].n)); }
#line 1595 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 35:
#line 178 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[-1].n); }
#line 1601 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 36:
#line 179 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1607 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 37:
#line 182 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_variable_array((yyvsp[-3].n), (yyvsp[-1].n)); }
#line 1613 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 38:
#line 183 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_variable_simple((yyvsp[0].s)); }
#line 1619 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 39:
#line 186 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_function_call_with_parameters((yyvsp[-3].s), (yyvsp[-1].n)); }
#line 1625 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 40:
#line 187 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_function_call_empty((yyvsp[-2].s)); }
#line 1631 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 41:
#line 190 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_new_array((yyvsp[-3].n), (yyvsp[-1].n)); }
#line 1637 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 42:
#line 193 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_expression_list((yyvsp[-2].n), (yyvsp[0].n)); }
#line 1643 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 43:
#line 194 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1649 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 44:
#line 197 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1655 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 45:
#line 200 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_expression_or((yyvsp[-2].n), (yyvsp[0].n)); }
#line 1661 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 46:
#line 201 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1667 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 47:
#line 204 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_expression_and((yyvsp[-2].n), (yyvsp[0].n)); }
#line 1673 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 48:
#line 205 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1679 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 49:
#line 208 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_expression_equal((yyvsp[-2].n), (yyvsp[0].n)); }
#line 1685 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 50:
#line 209 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1691 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 51:
#line 212 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_expression_not_equal((yyvsp[-2].n), (yyvsp[0].n)); }
#line 1697 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 52:
#line 213 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1703 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 53:
#line 216 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_expression_greater((yyvsp[-2].n), (yyvsp[0].n)); }
#line 1709 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 54:
#line 217 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1715 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 55:
#line 220 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_expression_greater_equal((yyvsp[-2].n), (yyvsp[0].n)); }
#line 1721 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 56:
#line 221 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1727 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 57:
#line 224 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_expression_less((yyvsp[-2].n), (yyvsp[0].n)); }
#line 1733 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 58:
#line 225 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1739 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 59:
#line 228 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_expression_less_equal((yyvsp[-2].n), (yyvsp[0].n)); }
#line 1745 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 60:
#line 229 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1751 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 61:
#line 232 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_expression_sub((yyvsp[-2].n), (yyvsp[0].n)); }
#line 1757 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 62:
#line 233 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1763 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 63:
#line 236 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_expression_add((yyvsp[-2].n), (yyvsp[0].n)); }
#line 1769 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 64:
#line 237 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1775 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 65:
#line 240 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_expression_div((yyvsp[-2].n), (yyvsp[0].n)); }
#line 1781 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 66:
#line 241 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1787 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 67:
#line 244 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_expression_mult((yyvsp[-2].n), (yyvsp[0].n)); }
#line 1793 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 68:
#line 245 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1799 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 69:
#line 248 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_expression_cast((yyvsp[-2].n), (yyvsp[0].n)); }
#line 1805 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 70:
#line 249 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1811 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 71:
#line 252 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_expression_negative((yyvsp[0].n)); }
#line 1817 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 72:
#line 253 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1823 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 73:
#line 256 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_expression_not((yyvsp[0].n)); }
#line 1829 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 74:
#line 257 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1835 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 75:
#line 260 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_expression_reference((yyvsp[0].n)); }
#line 1841 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 76:
#line 261 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_expression_reference((yyvsp[0].n)); }
#line 1847 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 77:
#line 262 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_expression_reference((yyvsp[0].n)); }
#line 1853 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 78:
#line 263 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_expression_reference((yyvsp[0].n)); }
#line 1859 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 79:
#line 266 "monga.y" /* yacc.c:1652  */
    { create_node_expression_scope((yyvsp[-1].n)); }
#line 1865 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 80:
#line 267 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1871 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 81:
#line 270 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_bool(1); }
#line 1877 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 82:
#line 271 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_bool(0); }
#line 1883 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 83:
#line 272 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_char((yyvsp[0].c)); }
#line 1889 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 84:
#line 273 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_int((yyvsp[0].i)); }
#line 1895 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 85:
#line 274 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_float((yyvsp[0].f)); }
#line 1901 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 86:
#line 275 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_string((yyvsp[0].s)); }
#line 1907 "monga.tab.c" /* yacc.c:1652  */
    break;


#line 1911 "monga.tab.c" /* yacc.c:1652  */
      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", yyr1[yyn], &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */
  {
    const int yylhs = yyr1[yyn] - YYNTOKENS;
    const int yyi = yypgoto[yylhs] + *yyssp;
    yystate = (0 <= yyi && yyi <= YYLAST && yycheck[yyi] == *yyssp
               ? yytable[yyi]
               : yydefgoto[yylhs]);
  }

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYEMPTY : YYTRANSLATE (yychar);

  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
#if ! YYERROR_VERBOSE
      yyerror (YY_("syntax error"));
#else
# define YYSYNTAX_ERROR yysyntax_error (&yymsg_alloc, &yymsg, \
                                        yyssp, yytoken)
      {
        char const *yymsgp = YY_("syntax error");
        int yysyntax_error_status;
        yysyntax_error_status = YYSYNTAX_ERROR;
        if (yysyntax_error_status == 0)
          yymsgp = yymsg;
        else if (yysyntax_error_status == 1)
          {
            if (yymsg != yymsgbuf)
              YYSTACK_FREE (yymsg);
            yymsg = (char *) YYSTACK_ALLOC (yymsg_alloc);
            if (!yymsg)
              {
                yymsg = yymsgbuf;
                yymsg_alloc = sizeof yymsgbuf;
                yysyntax_error_status = 2;
              }
            else
              {
                yysyntax_error_status = YYSYNTAX_ERROR;
                yymsgp = yymsg;
              }
          }
        yyerror (yymsgp);
        if (yysyntax_error_status == 2)
          goto yyexhaustedlab;
      }
# undef YYSYNTAX_ERROR
#endif
    }



  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:
  /* Pacify compilers when the user code never invokes YYERROR and the
     label yyerrorlab therefore never appears in user code.  */
  if (0)
    YYERROR;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYTERROR;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYTERROR)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  yystos[yystate], yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", yystos[yyn], yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturn;


/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturn;


#if !defined yyoverflow || YYERROR_VERBOSE
/*-------------------------------------------------.
| yyexhaustedlab -- memory exhaustion comes here.  |
`-------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  /* Fall through.  */
#endif


/*-----------------------------------------------------.
| yyreturn -- parsing is finished, return the result.  |
`-----------------------------------------------------*/
yyreturn:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  yystos[*yyssp], yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif
#if YYERROR_VERBOSE
  if (yymsg != yymsgbuf)
    YYSTACK_FREE (yymsg);
#endif
  return yyresult;
}
#line 278 "monga.y" /* yacc.c:1918  */


