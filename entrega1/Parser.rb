#
# DO NOT MODIFY!!!!
# This file is automatically generated by racc 1.4.5
# from racc grammer file "Parser.y".
#

require 'racc/parser'


class Parser < Racc::Parser

module_eval <<'..end Parser.y modeval..id5f39879494', 'Parser.y', 5

def initialize(l)
    @lex =l
end

def parser
    do_parse
end

def next_token
    t= @lex.yylex
    if t== nil then return [false,false] end
    if t!=nil then return [t.class.to_s.to_sym, t.value] end
end

..end Parser.y modeval..id5f39879494

##### racc 1.4.5 generates ###

racc_reduce_table = [
 0, 0, :racc_error,
 1, 52, :_reduce_1,
 2, 52, :_reduce_2,
 2, 52, :_reduce_3,
 3, 52, :_reduce_4,
 4, 54, :_reduce_5,
 5, 54, :_reduce_6,
 1, 56, :_reduce_7,
 3, 56, :_reduce_8,
 1, 57, :_reduce_9,
 3, 57, :_reduce_10,
 1, 55, :_reduce_11,
 2, 55, :_reduce_12,
 7, 58, :_reduce_13,
 8, 58, :_reduce_14,
 2, 59, :_reduce_15,
 2, 59, :_reduce_16,
 4, 59, :_reduce_17,
 4, 59, :_reduce_18,
 1, 60, :_reduce_19,
 1, 60, :_reduce_20,
 1, 60, :_reduce_21,
 1, 60, :_reduce_22,
 3, 60, :_reduce_23,
 3, 60, :_reduce_24,
 3, 60, :_reduce_25,
 4, 60, :_reduce_26,
 2, 60, :_reduce_27,
 2, 60, :_reduce_28,
 1, 63, :_reduce_29,
 3, 63, :_reduce_30,
 3, 64, :_reduce_31,
 4, 64, :_reduce_32,
 3, 61, :_reduce_33,
 5, 61, :_reduce_34,
 6, 62, :_reduce_35,
 8, 62, :_reduce_36,
 1, 66, :_reduce_37,
 1, 66, :_reduce_38,
 2, 66, :_reduce_39,
 2, 66, :_reduce_40,
 3, 66, :_reduce_41,
 4, 66, :_reduce_42,
 2, 66, :_reduce_43,
 2, 66, :_reduce_44,
 4, 66, :_reduce_45,
 2, 68, :_reduce_46,
 2, 68, :_reduce_47,
 2, 68, :_reduce_48,
 2, 68, :_reduce_49,
 2, 68, :_reduce_50,
 3, 53, :_reduce_51,
 1, 70, :_reduce_52,
 1, 70, :_reduce_53,
 1, 70, :_reduce_54,
 3, 70, :_reduce_55,
 3, 70, :_reduce_56,
 3, 70, :_reduce_57,
 4, 70, :_reduce_58,
 2, 70, :_reduce_59,
 2, 70, :_reduce_60,
 1, 69, :_reduce_61,
 3, 69, :_reduce_62,
 3, 71, :_reduce_63,
 4, 71, :_reduce_64,
 1, 65, :_reduce_65,
 3, 65, :_reduce_66,
 2, 67, :_reduce_67,
 1, 67, :_reduce_68,
 1, 67, :_reduce_69,
 2, 67, :_reduce_70,
 2, 67, :_reduce_71,
 2, 73, :_reduce_72,
 2, 73, :_reduce_73,
 2, 72, :_reduce_74,
 2, 72, :_reduce_75,
 2, 72, :_reduce_76,
 2, 72, :_reduce_77,
 2, 72, :_reduce_78,
 2, 72, :_reduce_79 ]

racc_reduce_n = 80

racc_shift_n = 176

racc_action_table = [
    40,    47,     7,    40,   131,    34,   122,     7,    34,   174,
    97,    29,    40,    48,   120,   121,   132,    34,    60,    61,
    62,     4,    63,    64,    33,    40,     4,    33,    36,    42,
    34,    36,    42,    60,    61,    62,    33,    63,    64,    35,
    36,    42,    35,    39,    85,    32,    39,    40,    32,    33,
    86,    35,    34,    36,    42,    39,    51,    32,   106,    67,
    40,    45,    84,    57,    35,    34,   136,    40,    39,    56,
    32,    33,    34,   128,    68,    36,    42,   135,   119,   167,
    66,    81,    78,   120,    33,     7,    35,   153,    36,    42,
    39,    33,    32,    40,     7,    36,    42,    12,    34,    35,
   164,   152,    40,    39,     4,    32,    35,    34,   166,    57,
    39,    40,    32,     4,     3,    56,    34,    33,    81,    78,
    40,    36,    42,    26,    52,    34,    33,    81,    78,    49,
    36,    42,    35,   151,    34,    33,    39,   172,    32,    36,
    42,    35,   138,    34,    33,    39,    80,    32,    36,    42,
    35,    58,    34,    33,    39,   134,    32,    36,    96,    35,
    47,    34,    33,    39,    65,    32,    36,   169,    35,    95,
    34,    33,    48,    70,    32,    36,    49,    35,   168,   161,
    33,    28,    29,    32,    36,    24,    35,    47,    34,    33,
    34,   126,    32,    36,    46,    35,    81,    78,    31,    48,
    34,    32,    34,    49,    35,    45,    50,    33,    23,    33,
    32,    36,    34,    36,    34,   116,   155,   124,    12,    33,
   123,    33,    35,    36,    35,    36,    34,   117,    32,    89,
    32,    33,    98,    33,    35,    36,    35,    36,    34,    34,
    32,   nil,    32,   nil,   nil,    33,    35,   nil,    35,    36,
   nil,    34,    32,   nil,    32,   nil,   nil,    33,    33,   nil,
    35,    36,    36,    34,    34,    34,    32,    60,    61,    62,
    33,   nil,    35,    35,    36,   nil,   nil,    34,    32,    32,
   nil,   nil,    33,    33,    33,    35,    36,    36,    36,    34,
    34,    32,    60,    61,    62,   nil,    33,    35,    35,    35,
    36,   nil,    34,    32,    32,    32,   nil,   nil,    33,    33,
   nil,    35,    36,    36,    34,    34,   nil,    32,   nil,   nil,
   nil,    33,   nil,    35,    35,    36,   nil,   nil,   nil,    32,
    32,   nil,   nil,    33,    33,   nil,    35,    36,    36,    60,
    61,    62,    32,    63,    64,   nil,   nil,   nil,    35,    35,
   nil,   nil,   nil,   nil,    32,    32,    60,    61,    62,   142,
    63,    64,   148,   nil,   nil,   142,   nil,   140,   148,   nil,
   nil,   145,   nil,   140,   nil,   nil,   nil,   145,   118,   141,
   nil,   143,   144,   nil,    26,   141,    15,   143,   144,   nil,
     3,    15,   nil,   nil,    13,   127,   nil,   nil,    19,    13,
   nil,   nil,   nil,    19,   142,   nil,    14,   148,    16,    20,
    15,    14,   140,    16,    20,   nil,   145,    15,    13,   nil,
   nil,   nil,    19,   nil,   141,    13,   143,   144,   nil,    19,
    14,   nil,    16,    20,   nil,   142,   nil,    14,   148,    16,
    20,   142,   nil,   140,   148,   nil,   nil,   145,    15,   140,
   nil,   nil,   nil,   145,   nil,   141,    13,   143,   144,   nil,
    19,   141,   nil,   143,   144,   nil,   142,   nil,    14,   148,
    16,    20,   nil,   nil,   140,    60,    61,    62,   145,    63,
    64,   nil,   nil,   nil,   nil,   nil,   141,   nil,   143,   144,
    60,    61,    62,   nil,    63,    64,   nil,   nil,    71,    72,
    73,    74,    75,    76,    60,    61,    62,   nil,    63,    64,
    60,    61,    62,   nil,    63,    64,    60,    61,    62,   nil,
    63,    64,    60,    61,    62,   nil,    63,    64,    60,    61,
    62,   nil,    63,    64,    60,    61,    62,   nil,    63,    64,
    60,    61,    62,   nil,    63,    64,    60,    61,    62,   nil,
    63,    64,    60,    61,    62,   nil,    63,    64,    60,    61,
    62,   nil,    63,    64,    60,    61,    62,   nil,    63,    64,
    60,    61,    62,   nil,    63,    64,    60,    61,    62,   nil,
    63,    64 ]

racc_action_check = [
    78,    89,    25,    81,   118,    78,    94,     1,    81,   170,
    54,    54,    40,    89,   170,    94,   118,    40,    69,    69,
    69,    25,    69,    69,    78,    43,     1,    81,    78,    78,
    43,    81,    81,   105,   105,   105,    40,   105,   105,    78,
    40,    40,    81,    78,    43,    78,    81,    41,    81,    43,
    44,    40,    41,    43,    43,    40,    23,    40,    69,    34,
   158,    44,    41,    28,    43,   158,   122,   141,    43,    28,
    43,    41,   141,   105,    34,    41,    41,   122,    93,   158,
    34,   156,   156,    93,   158,     0,    41,   139,   158,   158,
    41,   141,    41,   157,     8,   141,   141,    26,   157,   158,
   156,   136,   142,   158,     0,   158,   141,   142,   157,    97,
   141,    14,   141,     8,     0,    97,    14,   157,   165,   165,
    15,   157,   157,     8,    24,    15,   142,    38,    38,   138,
   142,   142,   157,   135,   131,    14,   157,   165,   157,    14,
    14,   142,   132,   153,    15,   142,    38,   142,    15,    15,
    14,    29,    65,   131,    14,   121,    14,   131,    52,    15,
   144,    64,   153,    15,    32,    15,   153,   160,   131,    52,
    13,    65,   144,    36,   131,    65,   144,   153,   160,   144,
    64,    11,    11,   153,    64,     7,    65,    20,   140,    13,
    63,    98,    65,    13,    17,    64,    83,    83,    13,    20,
    68,    64,   120,    20,    13,    17,    20,   140,     5,    63,
    13,   140,   117,    63,    62,    83,   140,    96,     3,    68,
    95,   120,   140,    68,    63,   120,    35,    90,   140,    48,
    63,   117,    56,    62,    68,   117,   120,    62,    60,    74,
    68,   nil,   120,   nil,   nil,    35,   117,   nil,    62,    35,
   nil,   161,   117,   nil,    62,   nil,   nil,    60,    74,   nil,
    35,    60,    74,    71,    72,    75,    35,   102,   102,   102,
   161,   nil,    60,    74,   161,   nil,   nil,    61,    60,    74,
   nil,   nil,    71,    72,    75,   161,    71,    72,    75,    47,
    73,   161,   103,   103,   103,   nil,    61,    71,    72,    75,
    61,   nil,    49,    71,    72,    75,   nil,   nil,    47,    73,
   nil,    61,    47,    73,    50,    76,   nil,    61,   nil,   nil,
   nil,    49,   nil,    47,    73,    49,   nil,   nil,   nil,    47,
    73,   nil,   nil,    50,    76,   nil,    49,    50,    76,    91,
    91,    91,    49,    91,    91,   nil,   nil,   nil,    50,    76,
   nil,   nil,   nil,   nil,    50,    76,   104,   104,   104,   150,
   104,   104,   150,   nil,   nil,   134,   nil,   150,   134,   nil,
   nil,   150,   nil,   134,   nil,   nil,   nil,   134,    91,   150,
   nil,   150,   150,   nil,   150,   134,    16,   134,   134,   nil,
   134,   116,   nil,   nil,    16,   104,   nil,   nil,    16,   116,
   nil,   nil,   nil,   116,   143,   nil,    16,   143,    16,    16,
    45,   116,   143,   116,   116,   nil,   143,     4,    45,   nil,
   nil,   nil,    45,   nil,   143,     4,   143,   143,   nil,     4,
    45,   nil,    45,    45,   nil,   164,   nil,     4,   164,     4,
     4,   168,   nil,   164,   168,   nil,   nil,   164,    80,   168,
   nil,   nil,   nil,   168,   nil,   164,    80,   164,   164,   nil,
    80,   168,   nil,   168,   168,   nil,   172,   nil,    80,   172,
    80,    80,   nil,   nil,   172,   107,   107,   107,   172,   107,
   107,   nil,   nil,   nil,   nil,   nil,   172,   nil,   172,   172,
    37,    37,    37,   nil,    37,    37,   nil,   nil,    37,    37,
    37,    37,    37,    37,   108,   108,   108,   nil,   108,   108,
   109,   109,   109,   nil,   109,   109,   110,   110,   110,   nil,
   110,   110,   111,   111,   111,   nil,   111,   111,   112,   112,
   112,   nil,   112,   112,   137,   137,   137,   nil,   137,   137,
    88,    88,    88,   nil,    88,    88,    30,    30,    30,   nil,
    30,    30,   133,   133,   133,   nil,   133,   133,   163,   163,
   163,   nil,   163,   163,   130,   130,   130,   nil,   130,   130,
    92,    92,    92,   nil,    92,    92,   154,   154,   154,   nil,
   154,   154 ]

racc_action_pointer = [
    64,   -14,   nil,   170,   392,   208,   nil,   137,    73,   nil,
   nil,   147,   nil,   162,   108,   117,   361,   156,   nil,   nil,
   164,   nil,   nil,    56,    82,   -19,    49,   nil,    43,   103,
   542,   nil,   125,   nil,    32,   218,   125,   486,   117,   nil,
     9,    44,   nil,    22,    12,   385,   nil,   281,   181,   294,
   306,   nil,   128,   nil,   -24,   nil,   208,   nil,   nil,   nil,
   230,   269,   206,   182,   153,   144,   nil,   nil,   192,    14,
   nil,   255,   256,   282,   231,   257,   307,   nil,    -3,   nil,
   423,     0,   nil,   186,   nil,   nil,   nil,   nil,   536,   -22,
   192,   335,   566,    34,   -29,   172,   169,    89,   164,   nil,
   nil,   nil,   263,   288,   352,    29,   nil,   471,   500,   506,
   512,   518,   524,   nil,   nil,   nil,   366,   204,   -19,   nil,
   194,   136,    36,   nil,   nil,   nil,   nil,   nil,   nil,   nil,
   560,   126,    94,   548,   340,    85,    53,   530,    90,    52,
   180,    64,    99,   379,   137,   nil,   nil,   nil,   nil,   nil,
   334,   nil,   nil,   135,   572,   nil,    71,    90,    57,   nil,
   129,   243,   nil,   554,   410,   108,   nil,   nil,   416,   nil,
   -35,   nil,   441,   nil,   nil,   nil ]

racc_action_default = [
   -80,   -80,   -11,   -80,   -80,   -80,    -1,   -80,   -80,   -12,
    -3,   -80,    -7,   -80,   -80,   -80,   -80,   -80,   -61,   -52,
   -80,   -53,   -54,   -80,   -80,   -80,   -80,    -2,   -80,   -80,
   -59,   -60,   -38,   -37,   -80,   -80,   -80,   -80,   -80,   -69,
   -80,   -80,   -68,   -80,   -80,   -80,   -51,   -80,   -80,   -80,
   -80,   176,   -80,    -4,   -80,    -5,   -80,    -9,    -8,   -40,
   -80,   -80,   -80,   -80,   -80,   -80,   -44,   -43,   -80,   -80,
   -39,   -80,   -80,   -80,   -80,   -80,   -80,   -67,   -80,   -70,
   -80,   -80,   -71,   -80,   -56,   -57,   -55,   -62,   -33,   -80,
   -80,   -80,   -65,   -80,   -80,   -80,   -80,   -80,   -80,   -46,
   -49,   -50,   -47,   -48,   -80,   -80,   -41,   -74,   -75,   -76,
   -77,   -78,   -79,   -73,   -63,   -72,   -80,   -80,   -80,   -58,
   -80,   -80,   -80,   -16,   -15,    -6,   -10,   -42,   -45,   -64,
   -34,   -80,   -80,   -66,   -80,   -80,   -80,   -35,   -80,   -80,
   -80,   -80,   -80,   -80,   -80,   -19,   -13,   -21,   -20,   -22,
   -80,   -18,   -17,   -80,   -27,   -28,   -80,   -80,   -80,   -29,
   -80,   -80,   -14,   -36,   -80,   -80,   -24,   -25,   -80,   -23,
   -80,   -31,   -80,   -30,   -26,   -32 ]

racc_goto_table = [
    30,     8,    22,    87,    82,    83,    93,    83,    55,     9,
     6,    10,    21,    17,    22,     1,    11,     5,    27,    41,
    43,   160,    69,    25,    21,    44,   157,   158,    94,    77,
   nil,   nil,   nil,     9,    88,    53,    91,    92,   114,    54,
   nil,   nil,   113,    22,   nil,   115,   nil,    99,   100,   101,
   102,   103,   104,    21,   nil,   105,    90,   146,   107,   108,
   109,   110,   111,   112,   nil,   nil,   159,   nil,   nil,   nil,
   nil,   nil,   nil,   162,   129,   nil,   nil,   125,    22,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,   171,    21,   nil,
   nil,   173,   nil,   nil,   nil,   175,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,   130,   156,   156,   133,   nil,   nil,
   nil,   nil,   nil,   nil,    22,   nil,   nil,   170,   137,   nil,
   nil,   165,   165,   nil,    21,   nil,   nil,   154,   nil,   nil,
   139,   nil,   nil,   nil,   nil,   150,   nil,   nil,   nil,   nil,
   163,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    92 ]

racc_goto_check = [
    15,     3,    11,    19,    16,    16,    14,    16,     6,     7,
     2,     2,    10,    18,    11,     4,     5,     1,     2,    20,
    20,    12,    15,     4,    10,    18,    13,    13,     8,    21,
   nil,   nil,   nil,     7,    15,     2,    15,    15,    19,     5,
   nil,   nil,    16,    11,   nil,    16,   nil,    15,    15,    15,
    15,    15,    15,    10,   nil,    15,    10,     9,    15,    15,
    15,    15,    15,    15,   nil,   nil,     9,   nil,   nil,   nil,
   nil,   nil,   nil,     9,    19,   nil,   nil,     6,    11,   nil,
   nil,   nil,   nil,   nil,   nil,   nil,   nil,     9,    10,   nil,
   nil,     9,   nil,   nil,   nil,     9,   nil,   nil,   nil,   nil,
   nil,   nil,   nil,   nil,    15,    16,    16,    15,   nil,   nil,
   nil,   nil,   nil,   nil,    11,   nil,   nil,    14,    15,   nil,
   nil,    16,    16,   nil,    10,   nil,   nil,    15,   nil,   nil,
    11,   nil,   nil,   nil,   nil,     3,   nil,   nil,   nil,   nil,
    15,   nil,   nil,   nil,   nil,   nil,   nil,   nil,    15 ]

racc_goto_pointer = [
   nil,    17,    10,     1,    15,    13,   -20,     8,   -24,   -77,
     8,    -2,  -122,  -115,   -44,   -13,   -36,   nil,     9,   -42,
     5,    -8,   nil ]

racc_goto_default = [
   nil,   nil,   nil,   nil,   nil,   nil,   nil,     2,   nil,   nil,
   147,   149,   nil,   nil,   nil,    37,    38,    59,   nil,    18,
   nil,   nil,    79 ]

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
 :TokVar => 50 }

racc_use_result_var = true

racc_nt_base = 51

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

module_eval <<'.,.,', 'Parser.y', 15
  def _reduce_1( val, _values, result )
puts "START -> MAIN"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 16
  def _reduce_2( val, _values, result )
puts "START -> VAR MAIN"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 17
  def _reduce_3( val, _values, result )
puts "START -> PROC MAIN"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 18
  def _reduce_4( val, _values, result )
puts "START -> VAR PROC MAIN"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 20
  def _reduce_5( val, _values, result )
puts "VAR -> var LIST_ID : TIPO"; return "var #{val[1]} : #{val[3]}"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 21
  def _reduce_6( val, _values, result )
puts "VAR -> VAR var LIST_ID : TIPO"; return "#{val[2]}, #{val[4]}"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 23
  def _reduce_7( val, _values, result )
puts "LIST_ID -> TokId(#{val[0]})"; return val[0]
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 24
  def _reduce_8( val, _values, result )
puts "LIST_ID -> LIST_ID , TokId(#{val[2]})"; return "#{val[0]}, #{val[2]}"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 26
  def _reduce_9( val, _values, result )
puts "TIPO -> value"; return "value"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 27
  def _reduce_10( val, _values, result )
puts "TIPO -> array of TokNum(#{val[2]})"; return "array of #{val[2]}"
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 29
  def _reduce_11( val, _values, result )
puts "PROC -> PROCEDIMIENTO"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 30
  def _reduce_12( val, _values, result )
puts "PROC -> PROC PROCEDIMIENTO"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 32
  def _reduce_13( val, _values, result )
puts "PROCEDIMENTO -> proc TokId(#{val[1]}) ( PARAMETRO ) as P_INSTRUCCION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 33
  def _reduce_14( val, _values, result )
puts "PROCEDIMENTO -> PROCEDIMIENTO proc TokId(#{val[1]}) ( PARAMETRO ) as P_INSTRUCCION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 35
  def _reduce_15( val, _values, result )
puts "PARAMETRO -> in TokId(#{val[1]})"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 36
  def _reduce_16( val, _values, result )
puts "PARAMETRO -> out TokId(#{val[1]})"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 37
  def _reduce_17( val, _values, result )
puts "PARAMETRO -> PARAMETRO , in TokId(#{val[1]})"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 38
  def _reduce_18( val, _values, result )
puts "PARAMETRO -> PARAMETRO , out TokId(#{val[1]})"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 40
  def _reduce_19( val, _values, result )
puts "P_INSTRUCCION -> skip"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 41
  def _reduce_20( val, _values, result )
puts "P_INSTRUCCION -> return"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 42
  def _reduce_21( val, _values, result )
puts "P_INSTRUCCION -> ASIGNACION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 43
  def _reduce_22( val, _values, result )
puts "P_INSTRUCCION -> ASIGNARRAY"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 44
  def _reduce_23( val, _values, result )
puts "P_INSTRUCCION -> begin LIST_P_INST end"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 45
  def _reduce_24( val, _values, result )
puts "P_INSTRUCCION -> if P_SELECCION fi"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 46
  def _reduce_25( val, _values, result )
puts "P_INSTRUCCION -> do P_SELECCION od"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 47
  def _reduce_26( val, _values, result )
puts "P_INSTRUCCION -> TokId(#{val[0]}) ( LIST_EXPR )"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 48
  def _reduce_27( val, _values, result )
puts "P_INSTRUCCION -> show EXPRESION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 49
  def _reduce_28( val, _values, result )
puts "P_INSTRUCCION -> show TokString(#{val[1]})"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 51
  def _reduce_29( val, _values, result )
puts "LIST_P_INST -> P_INSTRUCCION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 52
  def _reduce_30( val, _values, result )
puts "LIST_P_INST -> LIST_P_INST ; P_INSTRUCCION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 54
  def _reduce_31( val, _values, result )
puts "P_SELECCION -> GUARDIA -> P_INSTRUCCION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 55
  def _reduce_32( val, _values, result )
puts "P_SELECCION -> P_SELECCION GUARDIA -> P_INSTRUCCION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 57
  def _reduce_33( val, _values, result )
puts "ASIGNACION -> TokId(#{val[0]}) <- EXPRESION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 58
  def _reduce_34( val, _values, result )
puts "ASIGNACION -> TokId(#{val[0]}) , ASIGNACION , EXPRESION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 60
  def _reduce_35( val, _values, result )
puts "ASIGNARRAY -> TokId(#{val[0]}) [ EXPRESION ] <- EXPRESION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 61
  def _reduce_36( val, _values, result )
puts "ASIGNARRAY -> TokId(#{val[0]}) [ EXPRESION ] , ASIGNARRAY , EXPRESION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 63
  def _reduce_37( val, _values, result )
puts "EXPRESION -> TokNum(#{val[0]})"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 64
  def _reduce_38( val, _values, result )
puts "EXPRESION -> TokId(#{val[0]})"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 65
  def _reduce_39( val, _values, result )
puts "EXPRESION -> $(#{val[1]})"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 66
  def _reduce_40( val, _values, result )
puts "EXPRESION -> EXPRESION EXPROPER"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 67
  def _reduce_41( val, _values, result )
puts "EXPRESION -> ( EXPRESION )"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 68
  def _reduce_42( val, _values, result )
puts "EXPRESION -> TokId(#{val[0]}) [EXPRESION]"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 69
  def _reduce_43( val, _values, result )
puts "EXPRESION -> - TokNum(#{val[1]})"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 70
  def _reduce_44( val, _values, result )
puts "EXPRESION -> - TokId(#{val[1]})"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 71
  def _reduce_45( val, _values, result )
puts "EXPRESION -> - ( EXPRESION )"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 74
  def _reduce_46( val, _values, result )
puts "EXPROPER -> * EXPRESION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 75
  def _reduce_47( val, _values, result )
puts "EXPROPER -> - EXPRESION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 76
  def _reduce_48( val, _values, result )
puts "EXPROPER -> + EXPRESION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 77
  def _reduce_49( val, _values, result )
puts "EXPROPER -> / EXPRESION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 78
  def _reduce_50( val, _values, result )
puts "EXPROPER -> % EXPRESION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 80
  def _reduce_51( val, _values, result )
puts "MAIN -> main LIST_INST end"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 82
  def _reduce_52( val, _values, result )
puts "INSTRUCCION -> skip"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 83
  def _reduce_53( val, _values, result )
puts "INSTRUCCION -> ASIGNACION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 84
  def _reduce_54( val, _values, result )
puts "INSTRUCCION -> ASIGNARRAY"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 85
  def _reduce_55( val, _values, result )
puts "INSTRUCCION -> begin LIST_INST end"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 86
  def _reduce_56( val, _values, result )
puts "INSTRUCCION -> if SELECCION fi"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 87
  def _reduce_57( val, _values, result )
puts "INSTRUCCION -> do SELECCION od"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 88
  def _reduce_58( val, _values, result )
puts "INSTRUCCION -> TokId(#{val[0]}) ( LIST_EXPR )"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 89
  def _reduce_59( val, _values, result )
puts "INSTRUCCION -> show EXPRESION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 90
  def _reduce_60( val, _values, result )
puts "INSTRUCCION -> show TokString(#{val[1]})"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 92
  def _reduce_61( val, _values, result )
puts "LIST_INST -> INSTRUCCION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 93
  def _reduce_62( val, _values, result )
puts "LIST_INST -> LIST_INST ; INSTRUCCION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 95
  def _reduce_63( val, _values, result )
puts "SELECCION -> GUARDIA -> INSTRUCCION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 96
  def _reduce_64( val, _values, result )
puts "SELECCION -> SELECCION GUARDIA -> INSTRUCCION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 98
  def _reduce_65( val, _values, result )
puts "LIST_EXPR -> EXPRESION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 99
  def _reduce_66( val, _values, result )
puts "LIST_EXPR -> LIST_EXPR ; EXPRESION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 101
  def _reduce_67( val, _values, result )
puts "GUARDIA -> EXPRESION COMPARE "; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 102
  def _reduce_68( val, _values, result )
puts "GUARDIA -> true"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 103
  def _reduce_69( val, _values, result )
puts "GUARDIA -> false"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 104
  def _reduce_70( val, _values, result )
puts "GUARDIA -> GUARDIA GUARDIAOPER"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 105
  def _reduce_71( val, _values, result )
puts "GUARDIA -> ~ GUARDIA"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 107
  def _reduce_72( val, _values, result )
puts "GUARDIAOPER -> || GUARDIA "; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 108
  def _reduce_73( val, _values, result )
puts "GUARDIAOPER -> && GUARDIA"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 110
  def _reduce_74( val, _values, result )
puts "COMPARE -> < EXPRESION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 111
  def _reduce_75( val, _values, result )
puts "COMPARE -> >= EXPRESION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 112
  def _reduce_76( val, _values, result )
puts "COMPARE -> <= EXPRESION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 113
  def _reduce_77( val, _values, result )
puts "COMPARE -> > EXPRESION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 114
  def _reduce_78( val, _values, result )
puts "COMPARE -> = EXPRESION"; return ""
   result
  end
.,.,

module_eval <<'.,.,', 'Parser.y', 115
  def _reduce_79( val, _values, result )
puts "COMPARE -> != EXPRESION"; return ""
   result
  end
.,.,

 def _reduce_none( val, _values, result )
  result
 end

end   # class Parser
