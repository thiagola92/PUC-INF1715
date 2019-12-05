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
  
  Node* __root__;

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

  int i;
  float f;
  char* s;
  
  Node* n;

#line 174 "monga.tab.c" /* yacc.c:352  */
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
#define YYFINAL  8
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   293

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  44
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  32
/* YYNRULES -- Number of rules.  */
#define YYNRULES  84
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
       0,   116,   116,   117,   120,   121,   124,   125,   128,   131,
     134,   135,   136,   137,   138,   141,   142,   143,   144,   147,
     148,   151,   154,   155,   156,   157,   160,   161,   164,   165,
     168,   169,   170,   171,   172,   173,   174,   175,   176,   179,
     180,   183,   184,   187,   190,   191,   194,   197,   198,   201,
     202,   205,   206,   207,   210,   211,   212,   213,   214,   217,
     218,   219,   222,   223,   224,   227,   228,   231,   232,   235,
     236,   239,   240,   241,   242,   245,   246,   249,   250,   253,
     254,   255,   256,   257,   258
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
  "define_variable", "identifier", "variable_type", "define_function",
  "parameter_list", "parameter", "block", "variable_list", "command_list",
  "command", "variable", "function_call", "new_array", "expression_list",
  "expression", "expression_or", "expression_and",
  "expression_equal_not_equal", "expression_greater_less_equal",
  "expression_add_sub", "expression_mult_div", "expression_cast",
  "expression_negative", "expression_not", "expression_reference",
  "expression_variable", "expression_scope", "expression_data", YY_NULLPTR
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

#define YYPACT_NINF -47

#define yypact_value_is_default(Yystate) \
  (!!((Yystate) == (-47)))

#define YYTABLE_NINF -77

#define yytable_value_is_error(Yytable_value) \
  0

  /* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
     STATE-NUM.  */
static const yytype_int16 yypact[] =
{
      10,   -47,    13,    10,   -47,   -47,    -4,   -47,   -47,   -47,
      30,    56,     6,   -19,   -14,   -47,   -47,   -47,   -47,   -47,
      56,    17,   121,    56,   -47,    56,     7,    10,    22,   -47,
     -47,   -47,   -47,   -47,   -47,   -47,    56,   236,   236,    80,
     236,   -47,   236,   -47,     4,   -47,   145,   169,   -47,    14,
      31,   -47,    55,   -47,   -47,   -47,    41,   -47,    56,   -47,
     -47,   -47,    57,   236,   254,    73,   -47,    41,    63,    65,
       2,    43,    20,    23,    79,   -47,   -47,    76,    41,   -47,
      61,    78,    67,   216,   -47,   -47,   193,   -47,     0,   -47,
     236,   -47,   236,   -47,    41,   236,   -47,   -47,    95,   236,
     236,   236,   236,   236,   236,   236,   236,   236,   236,   236,
     236,    56,   236,   -47,   -47,   -47,   -47,   -47,    -9,   -47,
     -47,    71,    92,   -47,    93,    41,    65,     2,    43,    43,
      20,    20,    20,    20,    23,    23,    79,    79,   -47,    94,
     -47,   236,   -47,    96,   -47,   -47,   -47,   -47
};

  /* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
     Performed when YYTABLE does not specify something else to do.  Zero
     means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       2,     9,     0,     3,     5,     6,     0,     7,     1,     4,
       0,     0,     0,     0,     0,    20,    10,    11,    12,    13,
       0,     0,     0,     0,    18,     0,     0,     0,     0,     8,
      81,    79,    80,    82,    83,    84,     0,     0,     0,     0,
       0,    25,     0,    27,    40,    38,     0,     0,    29,     0,
      72,    73,     0,    71,    74,    78,     0,    21,     0,    16,
      19,    14,     0,     0,     0,    76,    72,     0,    46,    48,
      50,    53,    58,    61,    64,    66,    68,    70,     0,    35,
       0,     0,     0,     0,    23,    26,     0,    24,    40,    28,
       0,    37,     0,    17,     0,     0,    67,    69,    30,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    32,    34,    77,    36,    42,     0,    45,
      22,     0,     0,    15,     0,     0,    47,    49,    51,    52,
      57,    55,    56,    54,    59,    60,    63,    62,    65,     0,
      41,     0,    33,    39,    43,    31,    75,    44
};

  /* YYPGOTO[NTERM-NUM].  */
static const yytype_int8 yypgoto[] =
{
     -47,   -47,   -47,   117,    -5,    15,   -15,   -47,   -47,   105,
     -12,   -47,    75,   -46,   -47,   -13,   -47,   -47,   -36,   -47,
      34,    35,   -38,     3,   -16,    -7,    59,    70,   -11,   -47,
     -47,   -47
};

  /* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int8 yydefgoto[] =
{
      -1,     2,     3,     4,     5,    65,    21,     7,    14,    15,
      45,    46,    47,    48,    49,    66,    51,   118,    67,    68,
      69,    70,    71,    72,    73,    74,    75,    76,    77,    53,
      54,    55
};

  /* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
     positive, shift that token.  If negative, reduce the rule whose
     number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
      24,    89,    78,    80,    81,    28,    82,    26,    56,    50,
      57,    52,   140,     8,    59,     6,    10,    43,     6,     1,
      83,    62,   -76,    25,    83,    13,   -76,    27,   101,   102,
      22,    22,   141,    50,    50,    52,    52,    44,    11,     1,
      89,    85,    13,    94,    93,    61,    11,   119,    23,    58,
      90,    12,   107,   108,   121,    98,   122,   109,   110,   124,
      29,    44,    88,   128,   129,    22,   113,    16,    17,    18,
      19,   103,   104,    50,    91,    52,   139,    92,    20,    95,
     105,   106,   123,    30,    31,    32,    33,    34,    35,     1,
      36,   134,   135,    83,    99,   100,   138,   111,   112,   115,
      40,    88,   136,   137,   114,   147,   130,   131,   132,   133,
     116,   125,    63,   145,   142,   143,   144,   146,   -75,    64,
       9,    86,    96,    79,    30,    31,    32,    33,    34,    35,
       1,    36,    60,   126,    97,   127,    37,     0,    38,     0,
      39,    40,     0,     0,     0,    22,    41,     0,    30,    31,
      32,    33,    34,    35,     1,    36,     0,     0,     0,     0,
      37,    42,    38,     0,    39,    40,     0,     0,     0,    22,
      84,     0,    30,    31,    32,    33,    34,    35,     1,    36,
       0,     0,     0,     0,    37,    42,    38,     0,    39,    40,
       0,     0,     0,    22,    87,     0,    30,    31,    32,    33,
      34,    35,     1,    36,     0,     0,     0,     0,    37,    42,
      38,     0,    39,    40,     0,     0,     0,    22,   120,    30,
      31,    32,    33,    34,    35,     1,    36,     0,     0,     0,
       0,     0,     0,    42,     0,     0,    40,   117,     0,    30,
      31,    32,    33,    34,    35,     1,    36,     0,    63,     0,
       0,     0,     0,     0,     0,    64,    40,    30,    31,    32,
      33,    34,    35,     1,    36,     0,     0,     0,    63,     0,
       0,     0,     0,     0,    40,    64,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    64
};

static const yytype_int16 yycheck[] =
{
      12,    47,    38,    39,    40,    20,    42,    21,    23,    22,
      25,    22,    21,     0,    26,     0,    20,    22,     3,     9,
      20,    36,    22,    42,    20,    10,    22,    41,    26,    27,
      24,    24,    41,    46,    47,    46,    47,    22,    42,     9,
      86,    46,    27,    58,    56,    23,    42,    83,    42,    42,
      36,    21,    32,    33,    90,    67,    92,    34,    35,    95,
      43,    46,    47,   101,   102,    24,    78,    11,    12,    13,
      14,    28,    29,    86,    43,    86,   112,    22,    22,    22,
      37,    38,    94,     3,     4,     5,     6,     7,     8,     9,
      10,   107,   108,    20,    31,    30,   111,    18,    22,    21,
      20,    86,   109,   110,    43,   141,   103,   104,   105,   106,
      43,    16,    32,   125,    43,    23,    23,    23,    22,    39,
       3,    46,    63,    43,     3,     4,     5,     6,     7,     8,
       9,    10,    27,    99,    64,   100,    15,    -1,    17,    -1,
      19,    20,    -1,    -1,    -1,    24,    25,    -1,     3,     4,
       5,     6,     7,     8,     9,    10,    -1,    -1,    -1,    -1,
      15,    40,    17,    -1,    19,    20,    -1,    -1,    -1,    24,
      25,    -1,     3,     4,     5,     6,     7,     8,     9,    10,
      -1,    -1,    -1,    -1,    15,    40,    17,    -1,    19,    20,
      -1,    -1,    -1,    24,    25,    -1,     3,     4,     5,     6,
       7,     8,     9,    10,    -1,    -1,    -1,    -1,    15,    40,
      17,    -1,    19,    20,    -1,    -1,    -1,    24,    25,     3,
       4,     5,     6,     7,     8,     9,    10,    -1,    -1,    -1,
      -1,    -1,    -1,    40,    -1,    -1,    20,    21,    -1,     3,
       4,     5,     6,     7,     8,     9,    10,    -1,    32,    -1,
      -1,    -1,    -1,    -1,    -1,    39,    20,     3,     4,     5,
       6,     7,     8,     9,    10,    -1,    -1,    -1,    32,    -1,
      -1,    -1,    -1,    -1,    20,    39,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    39
};

  /* YYSTOS[STATE-NUM] -- The (internal number of the) accessing
     symbol of state STATE-NUM.  */
static const yytype_uint8 yystos[] =
{
       0,     9,    45,    46,    47,    48,    49,    51,     0,    47,
      20,    42,    21,    49,    52,    53,    11,    12,    13,    14,
      22,    50,    24,    42,    54,    42,    21,    41,    50,    43,
       3,     4,     5,     6,     7,     8,    10,    15,    17,    19,
      20,    25,    40,    48,    49,    54,    55,    56,    57,    58,
      59,    60,    72,    73,    74,    75,    50,    50,    42,    54,
      53,    23,    50,    32,    39,    49,    59,    62,    63,    64,
      65,    66,    67,    68,    69,    70,    71,    72,    62,    43,
      62,    62,    62,    20,    25,    48,    56,    25,    49,    57,
      36,    43,    22,    54,    50,    22,    70,    71,    54,    31,
      30,    26,    27,    28,    29,    37,    38,    32,    33,    34,
      35,    18,    22,    54,    43,    21,    43,    21,    61,    62,
      25,    62,    62,    54,    62,    16,    64,    65,    66,    66,
      67,    67,    67,    67,    68,    68,    69,    69,    50,    62,
      21,    41,    43,    23,    23,    54,    23,    62
};

  /* YYR1[YYN] -- Symbol number of symbol that rule YYN derives.  */
static const yytype_uint8 yyr1[] =
{
       0,    44,    45,    45,    46,    46,    47,    47,    48,    49,
      50,    50,    50,    50,    50,    51,    51,    51,    51,    52,
      52,    53,    54,    54,    54,    54,    55,    55,    56,    56,
      57,    57,    57,    57,    57,    57,    57,    57,    57,    58,
      58,    59,    59,    60,    61,    61,    62,    63,    63,    64,
      64,    65,    65,    65,    66,    66,    66,    66,    66,    67,
      67,    67,    68,    68,    68,    69,    69,    70,    70,    71,
      71,    72,    72,    72,    72,    73,    73,    74,    74,    75,
      75,    75,    75,    75,    75
};

  /* YYR2[YYN] -- Number of symbols on the right hand side of rule YYN.  */
static const yytype_uint8 yyr2[] =
{
       0,     2,     0,     1,     2,     1,     1,     1,     4,     1,
       1,     1,     1,     1,     3,     7,     5,     6,     4,     3,
       1,     3,     4,     3,     3,     2,     2,     1,     2,     1,
       3,     5,     3,     4,     3,     2,     3,     2,     1,     4,
       1,     4,     3,     5,     3,     1,     1,     3,     1,     3,
       1,     3,     3,     1,     3,     3,     3,     3,     1,     3,
       3,     1,     3,     3,     1,     3,     1,     2,     1,     2,
       1,     1,     1,     1,     1,     4,     1,     3,     1,     1,
       1,     1,     1,     1,     1
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
#line 116 "monga.y" /* yacc.c:1652  */
    { __root__ = create_node(EMPTY, 0); (yyval.n) = __root__; }
#line 1410 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 3:
#line 117 "monga.y" /* yacc.c:1652  */
    { __root__ = (yyvsp[0].n); (yyval.n) = __root__; }
#line 1416 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 4:
#line 120 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = append_node(DEFINE_LIST, (yyvsp[-1].n), (yyvsp[0].n)); }
#line 1422 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 5:
#line 121 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1428 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 6:
#line 124 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1434 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 7:
#line 125 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1440 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 8:
#line 128 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(DEFINE_VARIABLE, 2, (yyvsp[-3].n), (yyvsp[-1].n)); }
#line 1446 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 9:
#line 131 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_string(IDENTIFIER, (yyvsp[0].s)); }
#line 1452 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 10:
#line 134 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(TYPE_BOOLEAN, 0); }
#line 1458 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 11:
#line 135 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(TYPE_CHARACTER, 0); }
#line 1464 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 12:
#line 136 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(TYPE_INTEGER, 0); }
#line 1470 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 13:
#line 137 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(TYPE_FLOAT, 0); }
#line 1476 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 14:
#line 138 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(TYPE_ARRAY, 1, (yyvsp[-1].n)); }
#line 1482 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 15:
#line 141 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(DEFINE_FUNCTION, 4, (yyvsp[-6].n), (yyvsp[-4].n), (yyvsp[-1].n), (yyvsp[0].n)); }
#line 1488 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 16:
#line 142 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(DEFINE_FUNCTION, 3, (yyvsp[-4].n), (yyvsp[-2].n), (yyvsp[0].n)); }
#line 1494 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 17:
#line 143 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(DEFINE_FUNCTION, 3, (yyvsp[-5].n), (yyvsp[-1].n), (yyvsp[0].n)); }
#line 1500 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 18:
#line 144 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(DEFINE_FUNCTION, 2, (yyvsp[-3].n), (yyvsp[0].n)); }
#line 1506 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 19:
#line 147 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = append_node(PARAMETER_LIST, (yyvsp[-2].n), (yyvsp[0].n)); }
#line 1512 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 20:
#line 148 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1518 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 21:
#line 151 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(PARAMETER, 2, (yyvsp[-2].n), (yyvsp[0].n)); }
#line 1524 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 22:
#line 154 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(BLOCK, 2, (yyvsp[-2].n), (yyvsp[-1].n)); }
#line 1530 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 23:
#line 155 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(BLOCK, 1, (yyvsp[-1].n)); }
#line 1536 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 24:
#line 156 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(BLOCK, 1, (yyvsp[-1].n)); }
#line 1542 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 25:
#line 157 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(BLOCK, 0); }
#line 1548 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 26:
#line 160 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = append_node(VARIABLE_LIST, (yyvsp[-1].n), (yyvsp[0].n)); }
#line 1554 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 27:
#line 161 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1560 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 28:
#line 164 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = append_node(COMMAND_LIST, (yyvsp[-1].n), (yyvsp[0].n)); }
#line 1566 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 29:
#line 165 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1572 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 30:
#line 168 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(IF, 2, (yyvsp[-1].n), (yyvsp[0].n)); }
#line 1578 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 31:
#line 169 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(IF, 3, (yyvsp[-3].n), (yyvsp[-2].n), (yyvsp[0].n)); }
#line 1584 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 32:
#line 170 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(WHILE, 2, (yyvsp[-1].n), (yyvsp[0].n)); }
#line 1590 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 33:
#line 171 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(ASSIGNMENT, 2, (yyvsp[-3].n), (yyvsp[-1].n)); }
#line 1596 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 34:
#line 172 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(RETURN, 1, (yyvsp[-1].n)); }
#line 1602 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 35:
#line 173 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(RETURN, 0); }
#line 1608 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 36:
#line 174 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(PRINT, 1, (yyvsp[-1].n)); }
#line 1614 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 37:
#line 175 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[-1].n); }
#line 1620 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 38:
#line 176 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1626 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 39:
#line 179 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(ARRAY_POSITION, 2, (yyvsp[-3].n), (yyvsp[-1].n)); }
#line 1632 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 40:
#line 180 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(VARIABLE, 1, (yyvsp[0].n)); }
#line 1638 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 41:
#line 183 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(FUNCTION_CALL, 2, (yyvsp[-3].n), (yyvsp[-1].n)); }
#line 1644 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 42:
#line 184 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(FUNCTION_CALL, 1, (yyvsp[-2].n)); }
#line 1650 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 43:
#line 187 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(NEW_ARRAY, 2, (yyvsp[-3].n), (yyvsp[-1].n)); }
#line 1656 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 44:
#line 190 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = append_node(EXPRESSION_LIST, (yyvsp[-2].n), (yyvsp[0].n)); }
#line 1662 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 45:
#line 191 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1668 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 46:
#line 194 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1674 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 47:
#line 197 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(EXPRESSION_OR, 2, (yyvsp[-2].n), (yyvsp[0].n)); }
#line 1680 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 48:
#line 198 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1686 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 49:
#line 201 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(EXPRESSION_AND, 2, (yyvsp[-2].n), (yyvsp[0].n)); }
#line 1692 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 50:
#line 202 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1698 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 51:
#line 205 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(EXPRESSION_EQUAL, 2, (yyvsp[-2].n), (yyvsp[0].n)); }
#line 1704 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 52:
#line 206 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(EXPRESSION_NOT_EQUAL, 2, (yyvsp[-2].n), (yyvsp[0].n)); }
#line 1710 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 53:
#line 207 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1716 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 54:
#line 210 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(EXPRESSION_GREATER, 2, (yyvsp[-2].n), (yyvsp[0].n)); }
#line 1722 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 55:
#line 211 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(EXPRESSION_GREATER_EQUAL, 2, (yyvsp[-2].n), (yyvsp[0].n)); }
#line 1728 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 56:
#line 212 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(EXPRESSION_LESS, 2, (yyvsp[-2].n), (yyvsp[0].n)); }
#line 1734 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 57:
#line 213 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(EXPRESSION_LESS_EQUAL, 2, (yyvsp[-2].n), (yyvsp[0].n)); }
#line 1740 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 58:
#line 214 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1746 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 59:
#line 217 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(EXPRESSION_SUB, 2, (yyvsp[-2].n), (yyvsp[0].n)); }
#line 1752 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 60:
#line 218 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(EXPRESSION_ADD, 2, (yyvsp[-2].n), (yyvsp[0].n)); }
#line 1758 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 61:
#line 219 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1764 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 62:
#line 222 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(EXPRESSION_DIV, 2, (yyvsp[-2].n), (yyvsp[0].n)); }
#line 1770 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 63:
#line 223 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(EXPRESSION_MULT, 2, (yyvsp[-2].n), (yyvsp[0].n)); }
#line 1776 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 64:
#line 224 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1782 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 65:
#line 227 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(EXPRESSION_CAST, 2, (yyvsp[-2].n), (yyvsp[0].n)); }
#line 1788 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 66:
#line 228 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1794 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 67:
#line 231 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(EXPRESSION_NEGATIVE, 1, (yyvsp[0].n)); }
#line 1800 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 68:
#line 232 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1806 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 69:
#line 235 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(EXPRESSION_NOT, 1, (yyvsp[0].n)); }
#line 1812 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 70:
#line 236 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1818 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 71:
#line 239 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1824 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 72:
#line 240 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1830 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 73:
#line 241 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1836 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 74:
#line 242 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1842 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 75:
#line 245 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(EXPRESSION_ARRAY_POSITION, 2, (yyvsp[-3].n), (yyvsp[-1].n)); }
#line 1848 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 76:
#line 246 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node(EXPRESSION_VARIABLE, 1, (yyvsp[0].n)); }
#line 1854 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 77:
#line 249 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[-1].n); }
#line 1860 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 78:
#line 250 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = (yyvsp[0].n); }
#line 1866 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 79:
#line 253 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_boolean(1); }
#line 1872 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 80:
#line 254 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_boolean(0); }
#line 1878 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 81:
#line 255 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_character((yyvsp[0].i)); }
#line 1884 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 82:
#line 256 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_integer((yyvsp[0].i)); }
#line 1890 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 83:
#line 257 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_float((yyvsp[0].f)); }
#line 1896 "monga.tab.c" /* yacc.c:1652  */
    break;

  case 84:
#line 258 "monga.y" /* yacc.c:1652  */
    { (yyval.n) = create_node_string(DATA_STRING, (yyvsp[0].s)); }
#line 1902 "monga.tab.c" /* yacc.c:1652  */
    break;


#line 1906 "monga.tab.c" /* yacc.c:1652  */
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
#line 261 "monga.y" /* yacc.c:1918  */


