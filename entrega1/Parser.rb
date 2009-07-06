#
# DO NOT MODIFY!!!!
# This file is automatically generated by racc 1.4.5
# from racc grammer file "Parser.y".
#

require 'racc/parser'


require 'AST.rb'
require 'SymTable.rb'
require 'Sym.rb'

class Parser < Racc::Parser

module_eval <<'..end Parser.y modeval..id4fd75ffdc5', 'Parser.y', 26
@ultimo_token_leido
@tabla_de_simbolos
@arbol_main
def initialize(l)
   @arbol_main=nil
   @tabla_de_simbolos=SymTable.new
   @lex =l
end

def on_error(error_token_id, error_value, value_stack)
puts "\nError de sintaxis, revisar la sintaxis cerca de los tokens:\n   #{@ultimo_token_leido}"
puts "   #{@lex.yylex}"
puts "   #{@lex.yylex}"
puts "   #{@lex.yylex}"

end

def parser
   do_parse
end    

def next_token
   t= @lex.yylex
   @ultimo_token_leido = t
   if t== nil then return [false,false] end
   if t!=nil then return [t.class.to_s.to_sym, t.value] end
end
..end Parser.y modeval..id4fd75ffdc5

##### racc 1.4.5 generates ###

racc_reduce_table = [
 0, 0, :racc_error,
 1, 53, :_reduce_1,
 2, 53, :_reduce_2,
 2, 53, :_reduce_3,
 3, 53, :_reduce_4,
 4, 55, :_reduce_5,
 5, 55, :_reduce_6,
 4, 59, :_reduce_7,
 5, 59, :_reduce_8,
 1, 57, :_reduce_9,
 3, 57, :_reduce_10,
 1, 58, :_reduce_11,
 3, 58, :_reduce_12,
 1, 56, :_reduce_13,
 2, 56, :_reduce_14,
 7, 60, :_reduce_15,
 8, 60, :_reduce_16,
 6, 60, :_reduce_17,
 7, 60, :_reduce_18,
 2, 61, :_reduce_19,
 2, 61, :_reduce_20,
 4, 61, :_reduce_21,
 4, 61, :_reduce_22,
 1, 62, :_reduce_23,
 1, 62, :_reduce_24,
 1, 62, :_reduce_25,
 3, 62, :_reduce_26,
 3, 62, :_reduce_27,
 3, 62, :_reduce_28,
 4, 62, :_reduce_29,
 2, 62, :_reduce_30,
 2, 62, :_reduce_31,
 1, 64, :_reduce_32,
 3, 64, :_reduce_33,
 3, 65, :_reduce_34,
 5, 65, :_reduce_35,
 3, 63, :_reduce_36,
 5, 63, :_reduce_37,
 6, 63, :_reduce_38,
 8, 63, :_reduce_39,
 1, 67, :_reduce_40,
 1, 67, :_reduce_41,
 2, 67, :_reduce_42,
 2, 67, :_reduce_43,
 3, 67, :_reduce_44,
 4, 67, :_reduce_45,
 2, 67, :_reduce_46,
 2, 67, :_reduce_47,
 4, 67, :_reduce_48,
 2, 69, :_reduce_49,
 2, 69, :_reduce_50,
 2, 69, :_reduce_51,
 2, 69, :_reduce_52,
 2, 69, :_reduce_53,
 3, 54, :_reduce_54,
 1, 71, :_reduce_55,
 1, 71, :_reduce_56,
 3, 71, :_reduce_57,
 3, 71, :_reduce_58,
 3, 71, :_reduce_59,
 4, 71, :_reduce_60,
 2, 71, :_reduce_61,
 2, 71, :_reduce_62,
 1, 70, :_reduce_63,
 3, 70, :_reduce_64,
 3, 72, :_reduce_65,
 5, 72, :_reduce_66,
 1, 66, :_reduce_67,
 3, 66, :_reduce_68,
 2, 68, :_reduce_69,
 1, 68, :_reduce_70,
 1, 68, :_reduce_71,
 2, 68, :_reduce_72,
 2, 68, :_reduce_73,
 2, 74, :_reduce_74,
 2, 74, :_reduce_75,
 2, 73, :_reduce_76,
 2, 73, :_reduce_77,
 2, 73, :_reduce_78,
 2, 73, :_reduce_79,
 2, 73, :_reduce_80,
 2, 73, :_reduce_81 ]

racc_reduce_n = 82

racc_shift_n = 188

racc_action_table = [
    41,   124,    97,    41,   173,    35,   183,    30,    35,   182,
   123,   170,    41,    96,   121,   172,    94,    35,    60,    61,
    62,    85,    63,    64,    34,    41,    84,    34,    37,    43,
    35,    37,    43,    60,    61,    62,    34,    63,    64,    36,
    37,    43,    36,    39,   169,    33,    39,    41,    33,    34,
    83,    36,    35,    37,    43,    39,    41,    33,   129,    83,
     7,    35,    29,    30,    36,   171,    86,    67,    39,    41,
    33,    34,    15,   107,    35,    37,    43,    46,    41,     5,
    34,     7,    68,    35,    37,    43,    36,    26,    66,     4,
    39,    41,    33,    34,   169,    36,    35,    37,    43,    39,
     5,    33,    34,    35,   132,    35,    37,    43,    36,   167,
    10,   127,    39,     7,    33,    34,   133,    36,   148,    37,
    43,    39,    34,    33,    34,    35,    37,    35,    37,   147,
    36,    47,     5,    32,    39,    35,    33,    36,    89,    36,
    48,     7,    46,    33,    34,    33,    34,    35,    37,    35,
    37,    99,    49,   118,    34,   153,    50,    35,    37,    36,
     5,    36,    15,    81,    78,    33,    34,    33,    34,    36,
    37,    35,    37,    35,   120,    33,    34,    25,    57,   121,
    37,    36,   185,    36,    56,    35,    15,    33,   165,    33,
    34,    36,    34,    35,    37,    35,    37,    33,    35,    52,
    57,    81,    78,    35,    34,    36,    56,    36,    37,    57,
    53,    33,    34,    33,    34,    56,    37,    34,    37,    36,
   168,    37,    34,    35,   122,    33,    37,    36,    35,    36,
    35,    35,    36,    33,    58,    33,    15,    36,    33,    57,
    81,    78,    34,    33,   146,    56,    37,    34,   125,    34,
    34,    37,    65,    37,    37,    35,    35,    36,    35,   130,
    54,    30,    36,    33,    36,    36,    81,    78,    33,   126,
    33,    33,    48,    70,    34,    34,    89,    34,    37,    37,
    35,    37,    35,   166,    49,    79,   176,    30,    50,    36,
    36,   159,    36,   nil,   nil,    33,    33,   nil,    33,    34,
   nil,    34,   nil,    37,   nil,    37,    60,    61,    62,   137,
    63,    64,   142,   nil,    36,   nil,    36,   135,   nil,   nil,
    33,   140,    33,    60,    61,    62,   nil,    63,    64,   136,
   137,   138,   139,   142,   143,    48,   137,   nil,   135,   142,
   nil,   nil,   140,   nil,   135,   119,   nil,    49,   140,   nil,
   136,    50,   138,   139,    51,   160,   136,   137,   138,   139,
   142,   143,   128,   137,   nil,   135,   142,   nil,   nil,   140,
   nil,   135,    60,    61,    62,   140,    18,   136,   nil,   138,
   139,   nil,   160,   136,    16,   138,   139,   nil,    20,   137,
   nil,   nil,   142,   nil,    18,   nil,    17,   135,    19,    22,
   nil,   140,    16,    60,    61,    62,    20,   137,   nil,   136,
   142,   138,   139,    18,    17,   135,    19,    22,   nil,   140,
    18,    16,   nil,   nil,   nil,    20,   nil,   136,    16,   138,
   139,   nil,    20,    17,   nil,    19,    22,   nil,   137,   nil,
    17,   142,    19,    22,    18,   nil,   135,   nil,   nil,   nil,
   140,   nil,    16,   nil,   nil,   nil,    20,   nil,   136,   nil,
   138,   139,   nil,   nil,    17,   nil,    19,    22,    60,    61,
    62,   nil,    63,    64,   nil,   nil,    71,    72,    73,    74,
    75,    76,    60,    61,    62,   nil,    63,    64,    60,    61,
    62,   nil,    63,    64,    60,    61,    62,   nil,    63,    64,
    60,    61,    62,   nil,    63,    64,    60,    61,    62,   nil,
    63,    64,    60,    61,    62,   nil,    63,    64,    60,    61,
    62,   nil,    63,    64,    60,    61,    62,   nil,    63,    64,
    60,    61,    62,   nil,    63,    64,    60,    61,    62,   nil,
    63,    64,    60,    61,    62,   nil,    63,    64,    60,    61,
    62,   nil,    63,    64,    60,    61,    62,   nil,    63,    64,
    60,    61,    62,   nil,    63,    64 ]

racc_action_check = [
    81,    95,    53,   169,   158,    81,   175,   175,   169,   174,
    95,   155,    41,    53,   174,   158,    53,    41,   106,   106,
   106,    44,   106,   106,    81,    78,    42,   169,    81,    81,
    78,   169,   169,    69,    69,    69,    41,    69,    69,    81,
    41,    41,   169,    81,   155,    81,   169,    83,   169,    78,
    44,    41,    83,    78,    78,    41,   137,    41,   106,    42,
     0,   137,    14,    14,    78,   156,    45,    35,    78,   136,
    78,    83,     4,    69,   136,    83,    83,    45,    18,     0,
   137,     1,    35,    18,   137,   137,    83,     7,    35,     0,
    83,    17,    83,   136,   156,   137,    17,   136,   136,   137,
     1,   137,    18,    60,   119,    16,    18,    18,   136,   151,
     1,    99,   136,     2,   136,    17,   119,    18,   124,    17,
    17,    18,    60,    18,    16,   132,    60,   135,    16,   124,
    17,    21,     2,    16,    17,   118,    17,    60,   133,    16,
    89,     9,    21,    60,   132,    16,   135,    51,   132,    61,
   135,    56,    89,    90,   118,   135,    89,   121,   118,   132,
     9,   135,    10,   180,   180,   132,    51,   135,    61,   118,
    51,   159,    61,    62,    92,   118,   121,     6,   183,    92,
   121,    51,   180,    61,   183,    75,   160,    51,   147,    61,
   159,   121,    62,    74,   159,    73,    62,   121,    72,    25,
   176,   154,   154,    36,    75,   159,   176,    62,    75,    29,
    26,   159,    74,    62,    73,    29,    74,    72,    73,    75,
   154,    72,    36,    71,    94,    75,    36,    74,    68,    73,
   167,    50,    72,    74,    30,    73,   143,    36,    72,    54,
   117,   117,    71,    36,   123,    54,    71,    68,    96,   167,
    50,    68,    33,   167,    50,    65,    64,    71,    63,   117,
    28,    28,    68,    71,   167,    50,    40,    40,    68,    97,
   167,    50,   139,    37,    65,    64,    49,    63,    65,    64,
    48,    63,    76,   148,   139,    40,   162,   162,   139,    65,
    64,   139,    63,   nil,   nil,    65,    64,   nil,    63,    48,
   nil,    76,   nil,    48,   nil,    76,    91,    91,    91,   146,
    91,    91,   146,   nil,    48,   nil,    76,   146,   nil,   nil,
    48,   146,    76,   105,   105,   105,   nil,   105,   105,   146,
   163,   146,   146,   163,   146,    22,   122,   nil,   163,   122,
   nil,   nil,   163,   nil,   122,    91,   nil,    22,   122,   nil,
   163,    22,   163,   163,    22,   163,   122,   141,   122,   122,
   141,   122,   105,   185,   nil,   141,   185,   nil,   nil,   141,
   nil,   185,   103,   103,   103,   185,     5,   141,   nil,   141,
   141,   nil,   141,   185,     5,   185,   185,   nil,     5,   138,
   nil,   nil,   138,   nil,    79,   nil,     5,   138,     5,     5,
   nil,   138,    79,   104,   104,   104,    79,   172,   nil,   138,
   172,   138,   138,    46,    79,   172,    79,    79,   nil,   172,
   130,    46,   nil,   nil,   nil,    46,   nil,   172,   130,   172,
   172,   nil,   130,    46,   nil,    46,    46,   nil,   168,   nil,
   130,   168,   130,   130,    19,   nil,   168,   nil,   nil,   nil,
   168,   nil,    19,   nil,   nil,   nil,    19,   nil,   168,   nil,
   168,   168,   nil,   nil,    19,   nil,    19,    19,    38,    38,
    38,   nil,    38,    38,   nil,   nil,    38,    38,    38,    38,
    38,    38,   113,   113,   113,   nil,   113,   113,   112,   112,
   112,   nil,   112,   112,   111,   111,   111,   nil,   111,   111,
   110,   110,   110,   nil,   110,   110,   178,   178,   178,   nil,
   178,   178,   109,   109,   109,   nil,   109,   109,   108,   108,
   108,   nil,   108,   108,    31,    31,    31,   nil,    31,    31,
   131,   131,   131,   nil,   131,   131,    88,    88,    88,   nil,
    88,    88,   134,   134,   134,   nil,   134,   134,   152,   152,
   152,   nil,   152,   152,    93,    93,    93,   nil,    93,    93,
   150,   150,   150,   nil,   150,   150 ]

racc_action_pointer = [
    39,    60,    92,   nil,    24,   351,   177,    39,   nil,   120,
   114,   nil,   nil,   nil,    28,   nil,    97,    88,    75,   419,
   nil,    93,   312,   nil,   nil,   199,   168,   nil,   226,   189,
   186,   520,   nil,   213,   nil,    40,   195,   225,   464,   nil,
   256,     9,     8,   nil,    -1,    28,   388,   nil,   272,   228,
   223,   139,   nil,   -28,   219,   nil,   127,   nil,   nil,   nil,
    95,   141,   165,   250,   248,   247,   nil,   nil,   220,    29,
   nil,   215,   190,   187,   185,   177,   274,   nil,    22,   369,
   nil,    -3,   nil,    44,   nil,   nil,   nil,   nil,   532,   117,
   118,   302,   130,   550,   205,   -34,   200,   221,   nil,    84,
   nil,   nil,   nil,   368,   399,   319,    14,   nil,   514,   508,
   496,   490,   484,   478,   nil,   nil,   nil,   230,   127,    81,
   nil,   149,   311,   225,    88,   nil,   nil,   nil,   nil,   nil,
   395,   526,   117,    90,   538,   119,    66,    53,   364,   249,
   nil,   332,   nil,   188,   nil,   nil,   284,   140,   235,   nil,
   556,    74,   544,   nil,   191,    -7,    43,   nil,   -34,   163,
   138,   nil,   252,   305,   nil,   nil,   nil,   222,   413,     0,
   nil,   nil,   382,   nil,   -35,   -28,   180,   nil,   502,   nil,
   153,   nil,   nil,   158,   nil,   338,   nil,   nil ]

racc_action_default = [
   -82,   -82,   -82,   -13,   -82,   -82,   -82,   -82,    -1,   -82,
   -82,    -2,   -14,    -3,   -82,    -9,   -82,   -82,   -82,   -82,
   -55,   -82,   -82,   -63,   -56,   -82,   -82,    -4,   -82,   -82,
   -82,   -61,   -62,   -41,   -40,   -82,   -82,   -82,   -82,   -71,
   -82,   -82,   -82,   -70,   -82,   -82,   -82,   -54,   -82,   -82,
   -82,   -82,   188,   -82,   -82,    -5,   -82,   -11,   -10,   -43,
   -82,   -82,   -82,   -82,   -82,   -82,   -47,   -46,   -82,   -82,
   -42,   -82,   -82,   -82,   -82,   -82,   -82,   -69,   -82,   -82,
   -72,   -82,   -73,   -82,   -58,   -59,   -57,   -64,   -36,   -82,
   -82,   -82,   -82,   -67,   -82,   -82,   -82,   -82,    -6,   -82,
   -49,   -52,   -53,   -50,   -51,   -82,   -82,   -44,   -76,   -77,
   -78,   -79,   -80,   -81,   -75,   -65,   -74,   -82,   -82,   -82,
   -60,   -82,   -82,   -82,   -82,   -20,   -19,   -12,   -45,   -48,
   -82,   -37,   -82,   -82,   -68,   -82,   -82,   -82,   -82,   -82,
   -23,   -82,   -24,   -82,   -17,   -25,   -82,   -82,   -82,   -66,
   -38,   -82,   -30,   -31,   -82,   -82,   -82,   -32,   -82,   -82,
   -82,   -18,   -82,   -82,   -15,   -22,   -21,   -82,   -82,   -82,
   -27,   -28,   -82,   -26,   -82,   -82,   -82,   -16,   -39,   -34,
   -82,   -33,   -29,   -82,    -7,   -82,    -8,   -35 ]

racc_goto_table = [
    14,    55,    31,    82,   141,    92,    28,    21,    87,     8,
    11,    13,    12,   155,   156,    42,    44,     6,    27,    12,
   158,    45,    69,     2,     9,    95,    98,     1,   163,    77,
   nil,   nil,   nil,   nil,    88,   nil,    91,    93,    24,   nil,
   114,   115,   nil,   116,   nil,   117,   100,   101,   102,   103,
   104,   105,    24,   nil,   106,   nil,   144,   108,   109,   110,
   111,   112,   113,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   157,   nil,   nil,   161,   nil,   nil,   nil,    24,
   164,   nil,    90,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,   149,   nil,   nil,   nil,   nil,   177,   154,   154,
   nil,   nil,   179,   nil,   131,   nil,   181,   134,   nil,   nil,
   nil,   nil,    24,   174,   nil,   nil,   nil,   nil,   150,   187,
   nil,   152,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   180,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   162,
   nil,   nil,   nil,   nil,   nil,    93,   nil,   nil,   184,   nil,
   nil,   nil,   nil,   178,   nil,   186,   175,   nil,   nil,   nil,
   nil,   nil,   nil,    24,   nil,   nil,   151 ]

racc_goto_check = [
     5,     6,    15,    16,     7,    14,     5,    18,    19,     2,
     2,     2,     8,    13,    13,    20,    20,     1,     2,     8,
    12,    18,    15,     4,     4,     9,     6,     3,     7,    21,
   nil,   nil,   nil,   nil,    15,   nil,    15,    15,    11,   nil,
    16,    19,   nil,    16,   nil,    16,    15,    15,    15,    15,
    15,    15,    11,   nil,    15,   nil,    10,    15,    15,    15,
    15,    15,    15,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,    10,   nil,   nil,    10,   nil,   nil,   nil,    11,
    10,   nil,    11,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,   nil,    19,   nil,   nil,   nil,   nil,    10,    16,    16,
   nil,   nil,    10,   nil,    15,   nil,    10,    15,   nil,   nil,
   nil,   nil,    11,    14,   nil,   nil,   nil,   nil,    15,    10,
   nil,    15,   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   nil,    16,   nil,   nil,   nil,   nil,   nil,   nil,   nil,     5,
   nil,   nil,   nil,   nil,   nil,    15,   nil,   nil,     6,   nil,
   nil,   nil,   nil,    15,   nil,     6,     5,   nil,   nil,   nil,
   nil,   nil,   nil,    11,   nil,   nil,    11 ]

racc_goto_pointer = [
   nil,    17,     9,    27,    23,    -4,   -28,  -118,    10,   -28,
   -66,    33,  -118,  -123,   -46,   -14,   -38,   nil,     2,   -38,
    -2,    -9,   nil ]

racc_goto_default = [
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   nil,     3,   nil,
   nil,   145,   nil,   nil,   nil,    38,    40,    59,   nil,    23,
   nil,   nil,    80 ]

racc_token_table = {
 false => 0,
 Object.new => 1,
 :UMINUS => 2,
 :TokNot => 3,
 :TokMult => 4,
 :TokDiv => 5,
 :TokMod => 6,
 :BIMINUS => 7,
 :TokMinus => 8,
 :TokPlus => 9,
 :TokOr => 10,
 :TokAnd => 11,
 :TokLess => 12,
 :TokMoreEq => 13,
 :TokLessEq => 14,
 :TokMore => 15,
 :TokEqual => 16,
 :TokNotEqual => 17,
 :TokFi => 18,
 :TokAs => 19,
 :TokValue => 20,
 :TokProc => 21,
 :TokOd => 22,
 :TokAssign => 23,
 :TokOf => 24,
 :TokDo => 25,
 :TokArray => 26,
 :TokNumber => 27,
 :TokReturn => 28,
 :TokSelect => 29,
 :TokIn => 30,
 :TokLength => 31,
 :TokTrue => 32,
 :TokShow => 33,
 :TokTwoDots => 34,
 :TokComma => 35,
 :TokString => 36,
 :TokSkip => 37,
 :TokEnd => 38,
 :TokOpBracet => 39,
 :TokMain => 40,
 :TokOut => 41,
 :TokOpenParen => 42,
 :TokCloseBracket => 43,
 :TokCloseParen => 44,
 :TokIf => 45,
 :TokFalse => 46,
 :TokBegin => 47,
 :TokId => 48,
 :TokDotComma => 49,
 :TokVar => 50,
 :TokPipe => 51 }

racc_use_result_var = true

racc_nt_base = 52

Racc_arg = [
 racc_action_table,
 racc_action_check,
 racc_action_default,
 racc_action_pointer,
 racc_goto_table,
 racc_goto_check,
 racc_goto_default,
 racc_goto_pointer,
 racc_nt_base,
 racc_reduce_table,
 racc_token_table,
 racc_shift_n,
 racc_reduce_n,
 racc_use_result_var ]

Racc_token_to_s_table = [
'$end',
'error',
'UMINUS',
'TokNot',
'TokMult',
'TokDiv',
'TokMod',
'BIMINUS',
'TokMinus',
'TokPlus',
'TokOr',
'TokAnd',
'TokLess',
'TokMoreEq',
'TokLessEq',
'TokMore',
'TokEqual',
'TokNotEqual',
'TokFi',
'TokAs',
'TokValue',
'TokProc',
'TokOd',
'TokAssign',
'TokOf',
'TokDo',
'TokArray',
'TokNumber',
'TokReturn',
'TokSelect',
'TokIn',
'TokLength',
'TokTrue',
'TokShow',
'TokTwoDots',
'TokComma',
'TokString',
'TokSkip',
'TokEnd',
'TokOpBracet',
'TokMain',
'TokOut',
'TokOpenParen',
'TokCloseBracket',
'TokCloseParen',
'TokIf',
'TokFalse',
'TokBegin',
'TokId',
'TokDotComma',
'TokVar',
'TokPipe',
'$start',
'START',
'MAIN',
'VAR',
'PROC',
'LIST_ID',
'TIPO',
'P_VAR',
'PROCEDIMIENTO',
'PARAMETRO',
'P_INSTRUCCION',
'ASIGNACION',
'LIST_P_INST',
'P_SELECCION',
'LIST_EXPR',
'EXPRESION',
'GUARDIA',
'EXPROPER',
'LIST_INST',
'INSTRUCCION',
'SELECCION',
'COMPARE',
'GUARDIAOPER']

Racc_debug_parser = false

##### racc system variables end #####

 # reduce 0 omitted

module_eval <<'.,.,', 'Parser.y', 17
  def _reduce_1( val, _values, result )
puts "START -> MAIN"; puts ""; puts @tabla_de_simbolos;@arbol_main.run(@tabla_de_simbolos)
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 18
  def _reduce_2( val, _values, result )
puts "START -> VAR MAIN"; puts ""; puts @tabla_de_simbolos;@arbol_main.run(@tabla_de_simbolos)
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 19
  def _reduce_3( val, _values, result )
puts "START -> PROC MAIN"; puts ""; puts @tabla_de_simbolos;@arbol_main.run(@tabla_de_simbolos)
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 20
  def _reduce_4( val, _values, result )
puts "START -> VAR PROC MAIN"; puts ""; puts @tabla_de_simbolos;@arbol_main.run(@tabla_de_simbolos)
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 22
  def _reduce_5( val, _values, result )
puts "VAR -> var LIST_ID : TIPO"; @tabla_de_simbolos.insertVars(val[1],val[3])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 23
  def _reduce_6( val, _values, result )
puts "VAR -> VAR var LIST_ID : TIPO"; @tabla_de_simbolos.insertVars(val[2],val[4])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 25
  def _reduce_7( val, _values, result )
puts "P_VAR -> var LIST_ID : TIPO"; return [[val[1],val[3]]]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 26
  def _reduce_8( val, _values, result )
puts "P_VAR -> P_VAR var LIST_ID : TIPO"; x=val[0]; x.push([val[2],val[4]]); return x
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 28
  def _reduce_9( val, _values, result )
puts "LIST_ID -> TokId(#{val[0]})"; return [@ultimo_token_leido]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 29
  def _reduce_10( val, _values, result )
puts "LIST_ID -> LIST_ID , TokId(#{val[2]})"; x=val[0]; x.push(@ultimo_token_leido); return x
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 31
  def _reduce_11( val, _values, result )
puts "TIPO -> value"; return -1
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 32
  def _reduce_12( val, _values, result )
puts "TIPO -> array of TokNum(#{val[2]})"; return val[2]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 34
  def _reduce_13( val, _values, result )
puts "PROC -> PROCEDIMIENTO"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 35
  def _reduce_14( val, _values, result )
puts "PROC -> PROC PROCEDIMIENTO"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 37
  def _reduce_15( val, _values, result )
puts "PROCEDIMENTO -> proc TokId(#{val[1]}) ( PARAMETRO ) as P_INSTRUCCION"; @tabla_de_simbolos.insertProc(val[1],val[3],nil,val[6])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 38
  def _reduce_16( val, _values, result )
puts "PROCEDIMENTO -> PROCEDIMIENTO proc TokId(#{val[1]}) ( PARAMETRO ) as P_INSTRUCCION"; @tabla_de_simbolos.insertProc(val[1],val[3],val[6],val[7])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 39
  def _reduce_17( val, _values, result )
puts "PROCEDIMENTO -> proc TokId(#{val[1]}) () as P_INSTRUCCION"; @tabla_de_simbolos.insertProc(val[1],nil,nil,val[6])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 40
  def _reduce_18( val, _values, result )
puts "PROCEDIMENTO -> PROCEDIMIENTO proc TokId(#{val[1]}) () as P_INSTRUCCION"; @tabla_de_simbolos.insertProc(val[1],nil,val[6],val[7])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 42
  def _reduce_19( val, _values, result )
puts "PARAMETRO -> in TokId(#{val[1]})"; return [[true, @ultimo_token_leido]]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 43
  def _reduce_20( val, _values, result )
puts "PARAMETRO -> out TokId(#{val[1]})"; return [[false, @ultimo_token_leido]]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 44
  def _reduce_21( val, _values, result )
puts "PARAMETRO -> PARAMETRO , in TokId(#{val[1]})"; x=val[0]; x.push([true,  @ultimo_token_leido]); return x
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 45
  def _reduce_22( val, _values, result )
puts "PARAMETRO -> PARAMETRO , out TokId(#{val[1]})"; x=val[0]; x.push([false,  @ultimo_token_leido]); return x
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 47
  def _reduce_23( val, _values, result )
puts "P_INSTRUCCION -> skip"; return ASTSkip.new(0)
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 48
  def _reduce_24( val, _values, result )
puts "P_INSTRUCCION -> return"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 49
  def _reduce_25( val, _values, result )
puts "P_INSTRUCCION -> ASIGNACION"; return ASTMultAssign.new(val[0])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 50
  def _reduce_26( val, _values, result )
puts "P_INSTRUCCION -> begin LIST_P_INST end"; return ASTBlock.new(val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 51
  def _reduce_27( val, _values, result )
puts "P_INSTRUCCION -> if P_SELECCION fi"; return ASTSelect.new(val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 52
  def _reduce_28( val, _values, result )
puts "P_INSTRUCCION -> do P_SELECCION od";  return ASTRepeat.new(val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 53
  def _reduce_29( val, _values, result )
puts "P_INSTRUCCION -> TokId(#{val[0]}) ( LIST_EXPR )"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 54
  def _reduce_30( val, _values, result )
puts "P_INSTRUCCION -> show EXPRESION"; return ASTShow.new(val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 55
  def _reduce_31( val, _values, result )
puts "P_INSTRUCCION -> show TokString(#{val[1]})"; return ASTShow.new(val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 57
  def _reduce_32( val, _values, result )
puts "LIST_P_INST -> P_INSTRUCCION"; return [val[0]]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 58
  def _reduce_33( val, _values, result )
puts "LIST_P_INST -> LIST_P_INST ; P_INSTRUCCION"; x=val[0]; x.push(val[2]); return x
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 60
  def _reduce_34( val, _values, result )
puts "P_SELECCION -> GUARDIA -> P_INSTRUCCION"; return [[val[0],val[2]]]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 61
  def _reduce_35( val, _values, result )
puts "P_SELECCION -> P_SELECCION GUARDIA -> P_INSTRUCCION"; return val[0]<<[val[2],val[4]]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 63
  def _reduce_36( val, _values, result )
puts "ASIGNACION -> TokId(#{val[0]}) <- EXPRESION"; return [[val[0],val[2]]]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 64
  def _reduce_37( val, _values, result )
puts "ASIGNACION -> TokId(#{val[0]}) , ASIGNACION , EXPRESION"; x=val[2]; x.push([val[0],val[4]]);return x
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 65
  def _reduce_38( val, _values, result )
puts "ASIGNACION -> TokId(#{val[0]}) [ EXPRESION ] <- EXPRESION"; return [[[val[0],val[2]],val[5]]]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 66
  def _reduce_39( val, _values, result )
puts "ASIGNACION -> TokId(#{val[0]}) [ EXPRESION ] , ASIGNACION , EXPRESION"; x=val[5]; x.push([[val[0],val[2]],val[7]]);return x
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 68
  def _reduce_40( val, _values, result )
puts "EXPRESION -> TokNum(#{val[0]})"; return ASTNumber.new(val[0]);
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 69
  def _reduce_41( val, _values, result )
puts "EXPRESION -> TokId(#{val[0]})"; return ASTId.new(val[0])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 70
  def _reduce_42( val, _values, result )
puts "EXPRESION -> $(#{val[1]})"; return ASTArraySize.new(val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 71
  def _reduce_43( val, _values, result )
puts "EXPRESION -> EXPRESION EXPROPER"; return ASTMathOp.new(val[0],val[1][1],val[1][0])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 72
  def _reduce_44( val, _values, result )
puts "EXPRESION -> ( EXPRESION )"; return val[1]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 73
  def _reduce_45( val, _values, result )
puts "EXPRESION -> TokId(#{val[0]}) [EXPRESION]"; return ASTArrayId.new(val[0],val[2])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 74
  def _reduce_46( val, _values, result )
puts "EXPRESION -> - TokNum(#{val[1]})"; return ASTMath.new(ASTNumber.new(-1),"*",val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 75
  def _reduce_47( val, _values, result )
puts "EXPRESION -> - TokId(#{val[1]})"; return ASTMath.new(ASTNumber.new(-1),"*",val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 76
  def _reduce_48( val, _values, result )
puts "EXPRESION -> - ( EXPRESION )"; return ASTMath.new(ASTNumber.new(-1),"*",val[2])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 79
  def _reduce_49( val, _values, result )
puts "EXPROPER -> * EXPRESION"; return ["*",val[1]]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 80
  def _reduce_50( val, _values, result )
puts "EXPROPER -> - EXPRESION"; return ["-",val[1]]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 81
  def _reduce_51( val, _values, result )
puts "EXPROPER -> + EXPRESION"; return ["+",val[1]]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 82
  def _reduce_52( val, _values, result )
puts "EXPROPER -> / EXPRESION"; return ["/",val[1]]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 83
  def _reduce_53( val, _values, result )
puts "EXPROPER -> % EXPRESION"; return ["%",val[1]]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 85
  def _reduce_54( val, _values, result )
puts "MAIN -> main LIST_INST end"; return @arbol_main = ASTMainBlock.new(val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 87
  def _reduce_55( val, _values, result )
puts "INSTRUCCION -> skip"; return ASTSkip.new(0)
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 88
  def _reduce_56( val, _values, result )
puts "INSTRUCCION -> ASIGNACION"; return ASTMultAssign.new(val[0])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 89
  def _reduce_57( val, _values, result )
puts "INSTRUCCION -> begin LIST_INST end"; return ASTBlock.new(val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 90
  def _reduce_58( val, _values, result )
puts "INSTRUCCION -> if SELECCION fi"; return ASTSelect.new(val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 91
  def _reduce_59( val, _values, result )
puts "INSTRUCCION -> do SELECCION od"; return ASTRepeat.new(val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 92
  def _reduce_60( val, _values, result )
puts "INSTRUCCION -> TokId(#{val[0]}) ( LIST_EXPR )"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 93
  def _reduce_61( val, _values, result )
puts "INSTRUCCION -> show EXPRESION"; return ASTShow.new(val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 94
  def _reduce_62( val, _values, result )
puts "INSTRUCCION -> show TokString(#{val[1]})"; return ASTShow.new(val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 96
  def _reduce_63( val, _values, result )
puts "LIST_INST -> INSTRUCCION"; return [val[0]]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 97
  def _reduce_64( val, _values, result )
puts "LIST_INST -> LIST_INST ; INSTRUCCION"; x=val[0]; x.push(val[2]); return x
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 99
  def _reduce_65( val, _values, result )
puts "SELECCION -> GUARDIA -> INSTRUCCION"; return [[val[0],val[2]]]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 100
  def _reduce_66( val, _values, result )
puts "SELECCION -> SELECCION GUARDIA -> INSTRUCCION"; return val[0]<<[val[2],val[4]]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 102
  def _reduce_67( val, _values, result )
puts "LIST_EXPR -> EXPRESION"; return [val[0]]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 103
  def _reduce_68( val, _values, result )
puts "LIST_EXPR -> LIST_EXPR ; EXPRESION"; return val[0].push(val[2])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 105
  def _reduce_69( val, _values, result )
puts "GUARDIA -> EXPRESION COMPARE "; return ASTBoolOp.new(val[0],val[1][1],val[1][0])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 106
  def _reduce_70( val, _values, result )
puts "GUARDIA -> true"; return ASTBoolCte.new(true)
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 107
  def _reduce_71( val, _values, result )
puts "GUARDIA -> false"; return ASTBoolCte.new(false)
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 108
  def _reduce_72( val, _values, result )
puts "GUARDIA -> GUARDIA GUARDIAOPER"; return ASTBoolOp.new(val[0],val[1][1],val[1][0])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 109
  def _reduce_73( val, _values, result )
puts "GUARDIA -> ~ GUARDIA"; return ASTBoolNeg(val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 111
  def _reduce_74( val, _values, result )
puts "GUARDIAOPER -> || GUARDIA "; return ["||",val[1]]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 112
  def _reduce_75( val, _values, result )
puts "GUARDIAOPER -> && GUARDIA"; return ["&&",val[1]]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 114
  def _reduce_76( val, _values, result )
puts "COMPARE -> < EXPRESION"; return ["<",val[1]]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 115
  def _reduce_77( val, _values, result )
puts "COMPARE -> >= EXPRESION"; return [">=",val[1]]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 116
  def _reduce_78( val, _values, result )
puts "COMPARE -> <= EXPRESION"; return ["<=",val[1]]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 117
  def _reduce_79( val, _values, result )
puts "COMPARE -> > EXPRESION"; return [">",val[1]]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 118
  def _reduce_80( val, _values, result )
puts "COMPARE -> = EXPRESION"; return ["==",val[1]]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 119
  def _reduce_81( val, _values, result )
puts "COMPARE -> != EXPRESION"; return ["!=",val[1]]
   result
  end
.,.,

 def _reduce_none( val, _values, result )
  result
 end

end   # class Parser
