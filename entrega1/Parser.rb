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

module_eval <<'..end Parser.y modeval..ida95a7d6a14', 'Parser.y', 13
@ultimo_token_leido
@tabla_de_simbolos
@arbol_main
def initialize(l)
	@arbol_main= ASTMainBlock.new
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
..end Parser.y modeval..ida95a7d6a14

##### racc 1.4.5 generates ###

racc_reduce_table = [
 0, 0, :racc_error,
 1, 53, :_reduce_1,
 2, 53, :_reduce_2,
 2, 53, :_reduce_3,
 3, 53, :_reduce_4,
 4, 55, :_reduce_5,
 5, 55, :_reduce_6,
 1, 57, :_reduce_7,
 3, 57, :_reduce_8,
 1, 58, :_reduce_9,
 3, 58, :_reduce_10,
 1, 56, :_reduce_11,
 2, 56, :_reduce_12,
 7, 59, :_reduce_13,
 8, 59, :_reduce_14,
 2, 60, :_reduce_15,
 2, 60, :_reduce_16,
 4, 60, :_reduce_17,
 4, 60, :_reduce_18,
 1, 61, :_reduce_19,
 1, 61, :_reduce_20,
 1, 61, :_reduce_21,
 1, 61, :_reduce_22,
 3, 61, :_reduce_23,
 3, 61, :_reduce_24,
 3, 61, :_reduce_25,
 4, 61, :_reduce_26,
 2, 61, :_reduce_27,
 2, 61, :_reduce_28,
 1, 64, :_reduce_29,
 3, 64, :_reduce_30,
 3, 65, :_reduce_31,
 5, 65, :_reduce_32,
 3, 62, :_reduce_33,
 5, 62, :_reduce_34,
 6, 63, :_reduce_35,
 8, 63, :_reduce_36,
 1, 67, :_reduce_37,
 1, 67, :_reduce_38,
 2, 67, :_reduce_39,
 2, 67, :_reduce_40,
 3, 67, :_reduce_41,
 4, 67, :_reduce_42,
 2, 67, :_reduce_43,
 2, 67, :_reduce_44,
 4, 67, :_reduce_45,
 2, 69, :_reduce_46,
 2, 69, :_reduce_47,
 2, 69, :_reduce_48,
 2, 69, :_reduce_49,
 2, 69, :_reduce_50,
 3, 54, :_reduce_51,
 1, 71, :_reduce_52,
 1, 71, :_reduce_53,
 1, 71, :_reduce_54,
 3, 71, :_reduce_55,
 3, 71, :_reduce_56,
 3, 71, :_reduce_57,
 4, 71, :_reduce_58,
 2, 71, :_reduce_59,
 2, 71, :_reduce_60,
 1, 70, :_reduce_61,
 3, 70, :_reduce_62,
 3, 72, :_reduce_63,
 5, 72, :_reduce_64,
 1, 66, :_reduce_65,
 3, 66, :_reduce_66,
 2, 68, :_reduce_67,
 1, 68, :_reduce_68,
 1, 68, :_reduce_69,
 2, 68, :_reduce_70,
 2, 68, :_reduce_71,
 2, 74, :_reduce_72,
 2, 74, :_reduce_73,
 2, 73, :_reduce_74,
 2, 73, :_reduce_75,
 2, 73, :_reduce_76,
 2, 73, :_reduce_77,
 2, 73, :_reduce_78,
 2, 73, :_reduce_79 ]

racc_reduce_n = 80

racc_shift_n = 178

racc_action_table = [
    42,    49,   131,    42,    87,    36,   134,   123,    36,    55,
    31,   167,    42,    50,   132,    47,   122,    36,    61,    62,
    63,   168,    64,    65,    35,    42,    85,    35,    38,    44,
    36,    38,    44,    61,    62,    63,    35,    64,    65,    37,
    38,    44,    37,    40,   166,    34,    40,    42,    34,    35,
   166,    37,    36,    38,    44,    40,    42,    34,   128,    84,
     7,    36,    30,    31,    37,    86,   136,    68,    40,    42,
    34,    35,    15,   107,    36,    38,    44,   135,    42,     5,
    35,     7,    69,    36,    38,    44,    37,   125,    67,     4,
    40,    42,    34,    35,    84,    37,    36,    38,    44,    40,
     5,    34,    35,    36,   175,    36,    38,    44,    37,   121,
    10,   120,    40,     7,    34,    35,   121,    37,    97,    38,
    44,    40,    35,    34,    35,    36,    38,    36,    38,    96,
    37,    27,     5,    33,    40,    36,    34,    37,    26,    37,
    48,    82,    79,    34,    35,    34,    35,    36,    38,    36,
    38,    47,    53,   170,    35,   156,    58,    36,    38,    37,
   165,    37,    57,     7,   169,    34,    35,    34,    35,    37,
    38,    36,    38,    36,   118,    34,    35,   126,    58,   139,
    38,    37,     5,    37,    57,    36,    54,    34,    15,    34,
    35,    37,    35,    36,    38,    36,    38,    34,    36,   152,
    59,    82,    79,    36,    35,    37,    51,    37,    38,   124,
    66,    34,    35,    34,    35,    71,    38,    35,    38,    37,
   176,    38,    35,    36,    99,    34,    38,    37,    36,    37,
    36,    36,    37,    34,   153,    34,    90,    37,    34,   154,
    82,    79,    35,    34,   nil,   nil,    38,    35,   nil,    35,
    35,    38,   nil,    38,    38,    36,    36,    37,    36,    80,
   nil,   nil,    37,    34,    37,    37,    82,    79,    34,   nil,
    34,    34,    49,   nil,    35,    35,   nil,    35,    38,    38,
    36,    38,    36,   nil,    50,   129,   nil,   nil,    51,    37,
    37,    52,    37,   nil,   nil,    34,    34,   nil,    34,    35,
   nil,    35,   nil,    38,   nil,    38,    61,    62,    63,   144,
    64,    65,   148,   nil,    37,   nil,    37,   141,   nil,   nil,
    34,   147,    34,    61,    62,    63,   nil,    64,    65,   143,
   144,   145,   146,   148,     4,    49,   144,   nil,   141,   148,
   nil,   nil,   147,   nil,   141,   127,   nil,    50,   147,   nil,
   143,    51,   145,   146,   163,    10,   143,   144,   145,   146,
   148,   nil,   119,   144,   nil,   141,   148,   nil,   nil,   147,
    18,   141,    61,    62,    63,   147,    18,   143,    16,   145,
   146,   nil,    20,   143,    16,   145,   146,   nil,    20,    18,
    17,   nil,    19,    22,   nil,    18,    17,    16,    19,    22,
   nil,    20,   144,    16,   nil,   148,   nil,    20,    18,    17,
   141,    19,    22,   nil,   147,    17,    16,    19,    22,   nil,
    20,   nil,   143,   nil,   145,   146,   nil,   nil,    17,   nil,
    19,    22,    61,    62,    63,   nil,    64,    65,   nil,   nil,
    72,    73,    74,    75,    76,    77,    61,    62,    63,   nil,
    64,    65,    61,    62,    63,   nil,    64,    65,    61,    62,
    63,   nil,    64,    65,    61,    62,    63,   nil,    64,    65,
    61,    62,    63,   nil,    64,    65,    61,    62,    63,   nil,
    64,    65,    61,    62,    63,   nil,    64,    65,    61,    62,
    63,   nil,    64,    65,    61,    62,    63,   nil,    64,    65,
    61,    62,    63,   nil,    64,    65,    61,    62,    63,   nil,
    64,    65,    61,    62,    63,   nil,    64,    65,    61,    62,
    63,   nil,    64,    65,    61,    62,    63,   nil,    64,    65,
    61,    62,    63 ]

racc_action_check = [
    42,    90,   119,   166,    46,    42,   122,    95,   166,    29,
    29,   159,    17,    90,   119,    46,    95,    17,   106,   106,
   106,   160,   106,   106,    42,    82,    43,   166,    42,    42,
    82,   166,   166,    70,    70,    70,    17,    70,    70,    42,
    17,    17,   166,    42,   159,    42,   166,    84,   166,    82,
   160,    17,    84,    82,    82,    17,   144,    17,   106,    43,
     0,   144,    14,    14,    82,    45,   123,    36,    82,   143,
    82,    84,    10,    70,   143,    84,    84,   123,    18,     0,
   144,     1,    36,    18,   144,   144,    84,    97,    36,     0,
    84,    79,    84,   143,    45,   144,    79,   143,   143,   144,
     1,   144,    18,   121,   171,    16,    18,    18,   143,   171,
     1,    93,   143,     9,   143,    79,    93,    18,    54,    79,
    79,    18,   121,    18,    16,   131,   121,   141,    16,    54,
    79,     7,     9,    16,    79,   118,    79,   121,     6,    16,
    21,   158,   158,   121,   131,    16,   141,    61,   131,    62,
   141,    21,    26,   162,   118,   141,    30,   154,   118,   131,
   158,   141,    30,     2,   162,   131,    61,   141,    62,   118,
    61,    52,    62,   163,    91,   118,   154,    99,    55,   132,
   154,    61,     2,    62,    55,    77,    27,    61,     4,    62,
    52,   154,   163,    76,    52,    75,   163,   154,    74,   135,
    31,   173,   173,    63,    77,    52,   139,   163,    77,    96,
    34,    52,    76,   163,    75,    38,    76,    74,    75,    77,
   173,    74,    63,    73,    57,    77,    63,    76,    72,    75,
    69,    51,    74,    76,   136,    75,    50,    63,    74,   140,
    41,    41,    73,    63,   nil,   nil,    73,    72,   nil,    69,
    51,    72,   nil,    69,    51,    66,    65,    73,    64,    41,
   nil,   nil,    72,    73,    69,    51,   117,   117,    72,   nil,
    69,    51,    22,   nil,    66,    65,   nil,    64,    66,    65,
    49,    64,    37,   nil,    22,   117,   nil,   nil,    22,    66,
    65,    22,    64,   nil,   nil,    66,    65,   nil,    64,    49,
   nil,    37,   nil,    49,   nil,    37,   105,   105,   105,   134,
   105,   105,   134,   nil,    49,   nil,    37,   134,   nil,   nil,
    49,   134,    37,    92,    92,    92,   nil,    92,    92,   134,
   142,   134,   134,   142,   134,   146,   176,   nil,   142,   176,
   nil,   nil,   142,   nil,   176,   105,   nil,   146,   176,   nil,
   142,   146,   142,   142,   146,   142,   176,   169,   176,   176,
   169,   nil,    92,   145,   nil,   169,   145,   nil,   nil,   169,
     5,   145,   103,   103,   103,   145,    47,   169,     5,   169,
   169,   nil,     5,   145,    47,   145,   145,   nil,    47,    80,
     5,   nil,     5,     5,   nil,    19,    47,    80,    47,    47,
   nil,    80,   165,    19,   nil,   165,   nil,    19,   129,    80,
   165,    80,    80,   nil,   165,    19,   129,    19,    19,   nil,
   129,   nil,   165,   nil,   165,   165,   nil,   nil,   129,   nil,
   129,   129,    39,    39,    39,   nil,    39,    39,   nil,   nil,
    39,    39,    39,    39,    39,    39,   110,   110,   110,   nil,
   110,   110,   111,   111,   111,   nil,   111,   111,   112,   112,
   112,   nil,   112,   112,   109,   109,   109,   nil,   109,   109,
   108,   108,   108,   nil,   108,   108,   164,   164,   164,   nil,
   164,   164,    32,    32,    32,   nil,    32,    32,   155,   155,
   155,   nil,   155,   155,    89,    89,    89,   nil,    89,    89,
   130,   130,   130,   nil,   130,   130,    94,    94,    94,   nil,
    94,    94,   138,   138,   138,   nil,   138,   138,   133,   133,
   133,   nil,   133,   133,   113,   113,   113,   nil,   113,   113,
   104,   104,   104 ]

racc_action_pointer = [
    39,    60,   142,   nil,   140,   345,   138,    83,   nil,    92,
    24,   nil,   nil,   nil,    28,   nil,    97,     9,    75,   370,
   nil,   102,   249,   nil,   nil,   nil,   152,   144,   nil,   -25,
   136,   152,   478,   nil,   171,   nil,    40,   274,   167,   428,
   nil,   230,    -3,     8,   nil,    43,   -34,   351,   nil,   272,
   188,   223,   163,   nil,    88,   158,   nil,   200,   nil,   nil,
   nil,   139,   141,   195,   250,   248,   247,   nil,   nil,   222,
    29,   nil,   220,   215,   190,   187,   185,   177,   nil,    88,
   364,   nil,    22,   nil,    44,   nil,   nil,   nil,   nil,   490,
   -22,   139,   319,    67,   502,   -28,   161,    39,   nil,   150,
   nil,   nil,   nil,   368,   526,   302,    14,   nil,   466,   460,
   442,   448,   454,   520,   nil,   nil,   nil,   256,   127,   -21,
   nil,    95,   -13,    36,   nil,   nil,   nil,   nil,   nil,   383,
   496,   117,   131,   514,   284,   151,   186,   nil,   508,   167,
   204,   119,   305,    66,    53,   338,   312,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   149,   484,   nil,   nil,   131,    -7,
    -1,   nil,   115,   165,   472,   377,     0,   nil,   nil,   332,
   nil,    60,   nil,   191,   nil,   nil,   311,   nil ]

racc_action_default = [
   -80,   -80,   -80,   -11,   -80,   -80,   -80,   -80,    -1,   -80,
   -80,    -2,   -12,    -3,   -80,    -7,   -80,   -80,   -80,   -80,
   -52,   -80,   -80,   -61,   -53,   -54,   -80,   -80,    -4,   -80,
   -80,   -80,   -59,   -60,   -38,   -37,   -80,   -80,   -80,   -80,
   -69,   -80,   -80,   -80,   -68,   -80,   -80,   -80,   -51,   -80,
   -80,   -80,   -80,   178,   -80,   -80,    -5,   -80,    -9,    -8,
   -40,   -80,   -80,   -80,   -80,   -80,   -80,   -44,   -43,   -80,
   -80,   -39,   -80,   -80,   -80,   -80,   -80,   -80,   -67,   -80,
   -80,   -70,   -80,   -71,   -80,   -56,   -57,   -55,   -62,   -33,
   -80,   -80,   -80,   -80,   -65,   -80,   -80,   -80,    -6,   -80,
   -46,   -49,   -50,   -47,   -48,   -80,   -80,   -41,   -74,   -75,
   -76,   -77,   -78,   -79,   -73,   -63,   -72,   -80,   -80,   -80,
   -58,   -80,   -80,   -80,   -16,   -15,   -10,   -42,   -45,   -80,
   -34,   -80,   -80,   -66,   -80,   -80,   -80,   -64,   -35,   -80,
   -80,   -80,   -80,   -80,   -80,   -80,   -80,   -19,   -20,   -13,
   -21,   -22,   -18,   -17,   -80,   -27,   -28,   -14,   -80,   -80,
   -80,   -29,   -80,   -80,   -36,   -80,   -80,   -24,   -25,   -80,
   -23,   -80,   -31,   -80,   -30,   -26,   -80,   -32 ]

racc_goto_table = [
    32,     1,    25,    93,    88,    56,    21,    12,     6,    24,
     8,    11,    13,   162,    12,    95,    25,    78,    14,    28,
    46,    70,   nil,    24,    29,   nil,    83,    43,    45,   nil,
    98,     2,     9,    89,   nil,    92,    94,   115,   159,   160,
   nil,   nil,   nil,   nil,    25,   100,   101,   102,   103,   104,
   105,    24,   nil,   106,    91,   nil,   108,   109,   110,   111,
   112,   113,   149,   114,   nil,   nil,   116,   nil,   117,   nil,
   157,   nil,   nil,   161,   nil,   nil,   nil,    25,   nil,   nil,
   nil,   nil,   nil,   nil,    24,   nil,   137,   nil,   nil,   nil,
   nil,   nil,   nil,   172,   nil,   nil,   nil,   174,   nil,   nil,
   nil,   nil,   130,   nil,   177,   133,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   171,   138,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,   155,    25,   158,   158,   140,
   nil,   nil,   nil,    24,   nil,   142,   nil,   nil,   164,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,    94,   nil,   nil,
   173 ]

racc_goto_check = [
    15,     3,    11,    14,    19,     6,    18,     7,     1,    10,
     2,     2,     2,    12,     7,     8,    11,    21,     5,     2,
    18,    15,   nil,    10,     5,   nil,    16,    20,    20,   nil,
     6,     4,     4,    15,   nil,    15,    15,    19,    13,    13,
   nil,   nil,   nil,   nil,    11,    15,    15,    15,    15,    15,
    15,    10,   nil,    15,    10,   nil,    15,    15,    15,    15,
    15,    15,     9,    16,   nil,   nil,    16,   nil,    16,   nil,
     9,   nil,   nil,     9,   nil,   nil,   nil,    11,   nil,   nil,
   nil,   nil,   nil,   nil,    10,   nil,    19,   nil,   nil,   nil,
   nil,   nil,   nil,     9,   nil,   nil,   nil,     9,   nil,   nil,
   nil,   nil,    15,   nil,     9,    15,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,    14,    15,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   nil,    15,    11,    16,    16,    11,
   nil,   nil,   nil,    10,   nil,     3,   nil,   nil,    15,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,    15,   nil,   nil,
    16 ]

racc_goto_pointer = [
   nil,     8,    10,     1,    31,    14,   -25,     5,   -39,   -72,
     4,    -3,  -132,  -105,   -49,   -16,   -16,   nil,     1,   -43,
    10,   -22,   nil ]

racc_goto_default = [
   nil,   nil,   nil,   nil,   nil,   nil,   nil,     3,   nil,   nil,
   150,   151,   nil,   nil,   nil,    39,    41,    60,   nil,    23,
   nil,   nil,    81 ]

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
'PROCEDIMIENTO',
'PARAMETRO',
'P_INSTRUCCION',
'ASIGNACION',
'ASIGNARRAY',
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
puts "LIST_ID -> TokId(#{val[0]})"; return [@ultimo_token_leido]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 26
  def _reduce_8( val, _values, result )
puts "LIST_ID -> LIST_ID , TokId(#{val[2]})"; x=val[0]; x.push(@ultimo_token_leido); return x
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 28
  def _reduce_9( val, _values, result )
puts "TIPO -> value"; return -1
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 29
  def _reduce_10( val, _values, result )
puts "TIPO -> array of TokNum(#{val[2]})"; return val[2]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 31
  def _reduce_11( val, _values, result )
puts "PROC -> PROCEDIMIENTO"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 32
  def _reduce_12( val, _values, result )
puts "PROC -> PROC PROCEDIMIENTO"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 34
  def _reduce_13( val, _values, result )
puts "PROCEDIMENTO -> proc TokId(#{val[1]}) ( PARAMETRO ) as P_INSTRUCCION"; @tabla_de_simbolos.insertProc(val[1],val[3],nil,val[6])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 35
  def _reduce_14( val, _values, result )
puts "PROCEDIMENTO -> PROCEDIMIENTO proc TokId(#{val[1]}) ( PARAMETRO ) as P_INSTRUCCION"; @tabla_de_simbolos.insertProc(val[1],val[3],val[6],val[7])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 37
  def _reduce_15( val, _values, result )
puts "PARAMETRO -> in TokId(#{val[1]})"; return [true, @ultimo_token_leido]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 38
  def _reduce_16( val, _values, result )
puts "PARAMETRO -> out TokId(#{val[1]})"; return [false, @ultimo_token_leido]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 39
  def _reduce_17( val, _values, result )
puts "PARAMETRO -> PARAMETRO , in TokId(#{val[1]})"; x=val[0]; x.push([true, val[3]]); return x
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 40
  def _reduce_18( val, _values, result )
puts "PARAMETRO -> PARAMETRO , out TokId(#{val[1]})"; x=val[0]; x.push([true, val[3]]); return x
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 42
  def _reduce_19( val, _values, result )
puts "P_INSTRUCCION -> skip"; return ASTSkip.new(0)
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 43
  def _reduce_20( val, _values, result )
puts "P_INSTRUCCION -> return"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 44
  def _reduce_21( val, _values, result )
puts "P_INSTRUCCION -> ASIGNACION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 45
  def _reduce_22( val, _values, result )
puts "P_INSTRUCCION -> ASIGNARRAY"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 46
  def _reduce_23( val, _values, result )
puts "P_INSTRUCCION -> begin LIST_P_INST end"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 47
  def _reduce_24( val, _values, result )
puts "P_INSTRUCCION -> if P_SELECCION fi"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 48
  def _reduce_25( val, _values, result )
puts "P_INSTRUCCION -> do P_SELECCION od"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 49
  def _reduce_26( val, _values, result )
puts "P_INSTRUCCION -> TokId(#{val[0]}) ( LIST_EXPR )"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 50
  def _reduce_27( val, _values, result )
puts "P_INSTRUCCION -> show EXPRESION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 51
  def _reduce_28( val, _values, result )
puts "P_INSTRUCCION -> show TokString(#{val[1]})"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 53
  def _reduce_29( val, _values, result )
puts "LIST_P_INST -> P_INSTRUCCION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 54
  def _reduce_30( val, _values, result )
puts "LIST_P_INST -> LIST_P_INST ; P_INSTRUCCION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 56
  def _reduce_31( val, _values, result )
puts "P_SELECCION -> GUARDIA -> P_INSTRUCCION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 57
  def _reduce_32( val, _values, result )
puts "P_SELECCION -> P_SELECCION GUARDIA -> P_INSTRUCCION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 59
  def _reduce_33( val, _values, result )
puts "ASIGNACION -> TokId(#{val[0]}) <- EXPRESION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 60
  def _reduce_34( val, _values, result )
puts "ASIGNACION -> TokId(#{val[0]}) , ASIGNACION , EXPRESION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 62
  def _reduce_35( val, _values, result )
puts "ASIGNARRAY -> TokId(#{val[0]}) [ EXPRESION ] <- EXPRESION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 63
  def _reduce_36( val, _values, result )
puts "ASIGNARRAY -> TokId(#{val[0]}) [ EXPRESION ] , ASIGNARRAY , EXPRESION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 65
  def _reduce_37( val, _values, result )
puts "EXPRESION -> TokNum(#{val[0]})"; return ASTNumber.new(val[0]);
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 66
  def _reduce_38( val, _values, result )
puts "EXPRESION -> TokId(#{val[0]})"; return ASTId.new(val[0])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 67
  def _reduce_39( val, _values, result )
puts "EXPRESION -> $(#{val[1]})"; return ASTArraySize.new(val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 68
  def _reduce_40( val, _values, result )
puts "EXPRESION -> EXPRESION EXPROPER"; return ASTMathOp.new(val[0],val[1][1],val[1][0])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 69
  def _reduce_41( val, _values, result )
puts "EXPRESION -> ( EXPRESION )"; return val[1]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 70
  def _reduce_42( val, _values, result )
puts "EXPRESION -> TokId(#{val[0]}) [EXPRESION]"; return ASTArrayId.new(val[0],val[2])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 71
  def _reduce_43( val, _values, result )
puts "EXPRESION -> - TokNum(#{val[1]})"; return ASTMath.new(ASTNumber.new(-1),"*",val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 72
  def _reduce_44( val, _values, result )
puts "EXPRESION -> - TokId(#{val[1]})"; return ASTMath.new(ASTNumber.new(-1),"*",val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 73
  def _reduce_45( val, _values, result )
puts "EXPRESION -> - ( EXPRESION )"; return ASTMath.new(ASTNumber.new(-1),"*",val[2])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 76
  def _reduce_46( val, _values, result )
puts "EXPROPER -> * EXPRESION"; return ["*",val[1]]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 77
  def _reduce_47( val, _values, result )
puts "EXPROPER -> - EXPRESION"; return ["-",val[1]]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 78
  def _reduce_48( val, _values, result )
puts "EXPROPER -> + EXPRESION"; return ["+",val[1]]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 79
  def _reduce_49( val, _values, result )
puts "EXPROPER -> / EXPRESION"; return ["/",val[1]]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 80
  def _reduce_50( val, _values, result )
puts "EXPROPER -> % EXPRESION"; return ["%",val[1]]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 82
  def _reduce_51( val, _values, result )
puts "MAIN -> main LIST_INST end"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 84
  def _reduce_52( val, _values, result )
puts "INSTRUCCION -> skip"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 85
  def _reduce_53( val, _values, result )
puts "INSTRUCCION -> ASIGNACION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 86
  def _reduce_54( val, _values, result )
puts "INSTRUCCION -> ASIGNARRAY"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 87
  def _reduce_55( val, _values, result )
puts "INSTRUCCION -> begin LIST_INST end"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 88
  def _reduce_56( val, _values, result )
puts "INSTRUCCION -> if SELECCION fi"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 89
  def _reduce_57( val, _values, result )
puts "INSTRUCCION -> do SELECCION od"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 90
  def _reduce_58( val, _values, result )
puts "INSTRUCCION -> TokId(#{val[0]}) ( LIST_EXPR )"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 91
  def _reduce_59( val, _values, result )
puts "INSTRUCCION -> show EXPRESION"; return @arbol_main.add(ASTShow.new(val[1]))
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 92
  def _reduce_60( val, _values, result )
puts "INSTRUCCION -> show TokString(#{val[1]})"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 94
  def _reduce_61( val, _values, result )
puts "LIST_INST -> INSTRUCCION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 95
  def _reduce_62( val, _values, result )
puts "LIST_INST -> LIST_INST ; INSTRUCCION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 97
  def _reduce_63( val, _values, result )
puts "SELECCION -> GUARDIA -> INSTRUCCION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 98
  def _reduce_64( val, _values, result )
puts "SELECCION -> SELECCION GUARDIA -> INSTRUCCION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 100
  def _reduce_65( val, _values, result )
puts "LIST_EXPR -> EXPRESION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 101
  def _reduce_66( val, _values, result )
puts "LIST_EXPR -> LIST_EXPR ; EXPRESION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 103
  def _reduce_67( val, _values, result )
puts "GUARDIA -> EXPRESION COMPARE "; return ASTBoolOp.new(val[0],val[1][1],val[1][0])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 104
  def _reduce_68( val, _values, result )
puts "GUARDIA -> true"; return ASTBoolCte.new(true)
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 105
  def _reduce_69( val, _values, result )
puts "GUARDIA -> false"; return ASTBoolCte.new(false)
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 106
  def _reduce_70( val, _values, result )
puts "GUARDIA -> GUARDIA GUARDIAOPER"; return ASTBoolOp.new(val[0],val[1][1],val[1][0])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 107
  def _reduce_71( val, _values, result )
puts "GUARDIA -> ~ GUARDIA"; return ASTBoolNeg(val[1])
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 109
  def _reduce_72( val, _values, result )
puts "GUARDIAOPER -> || GUARDIA "; return ["||",val[1]]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 110
  def _reduce_73( val, _values, result )
puts "GUARDIAOPER -> && GUARDIA"; return ["&&",val[1]]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 112
  def _reduce_74( val, _values, result )
puts "COMPARE -> < EXPRESION"; return ["<",val[1]]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 113
  def _reduce_75( val, _values, result )
puts "COMPARE -> >= EXPRESION"; return [">=",val[1]]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 114
  def _reduce_76( val, _values, result )
puts "COMPARE -> <= EXPRESION"; return ["<=",val[1]]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 115
  def _reduce_77( val, _values, result )
puts "COMPARE -> > EXPRESION"; return [">",val[1]]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 116
  def _reduce_78( val, _values, result )
puts "COMPARE -> = EXPRESION"; return ["==",val[1]]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 117
  def _reduce_79( val, _values, result )
puts "COMPARE -> != EXPRESION"; return ["!=",val[1]]
   result
  end
.,.,

 def _reduce_none( val, _values, result )
  result
 end

end   # class Parser
