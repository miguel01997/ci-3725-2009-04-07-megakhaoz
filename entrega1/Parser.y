class Parser

   prechigh   nonassoc UMINUS   nonassoc TokNot    left TokMult TokDiv TokMod   left BIMINUS TokMinus TokPlus   left TokOr TokAnd         nonassoc TokLess TokMoreEq TokLessEq TokMore TokEqual TokNotEqual   preclow

   token BIMINUS UMINUS TokLess TokFi TokPlus TokOr TokAs TokEqual TokValue TokProc TokMore TokOd TokNot TokAssign TokNotEqual TokOf TokDo TokArray TokNumber TokReturn TokSelect TokIn TokDiv TokLength TokTrue TokShow TokTwoDots TokComma TokAnd TokString TokMinus TokSkip TokEnd TokOpBracet TokMain TokOut TokOpenParen TokCloseBracket TokLessEq TokCloseParen TokIf TokFalse TokMod TokBegin TokString TokId TokDotComma TokMult TokMoreEq TokVar TokPipe   start START
ruleSTART          : MAIN                                                                                 {puts "START -> MAIN"; puts ""; puts @tabla_de_simbolos;@arbol_main.run(@tabla_de_simbolos,nil)}               | VAR MAIN                                                                             {puts "START -> VAR MAIN"; puts ""; puts @tabla_de_simbolos;@arbol_main.run(@tabla_de_simbolos,nil)}               | PROC MAIN                                                                            {puts "START -> PROC MAIN"; puts ""; puts @tabla_de_simbolos;@arbol_main.run(@tabla_de_simbolos,nil)}               | VAR PROC MAIN                                                                        {puts "START -> VAR PROC MAIN"; puts ""; puts @tabla_de_simbolos;@arbol_main.run(@tabla_de_simbolos,nil)}

VAR            : TokVar LIST_ID TokTwoDots TIPO                                                       {puts "VAR -> var LIST_ID : TIPO"; @tabla_de_simbolos.insertVars(val[1],val[3])}
               | VAR TokVar LIST_ID TokTwoDots TIPO                                                   {puts "VAR -> VAR var LIST_ID : TIPO"; @tabla_de_simbolos.insertVars(val[2],val[4])}

P_VAR          : TokVar LIST_ID TokTwoDots TIPO                                                       {puts "P_VAR -> var LIST_ID : TIPO"; return [[val[1],val[3]]]}
               | P_VAR TokVar LIST_ID TokTwoDots TIPO                                                 {puts "P_VAR -> P_VAR var LIST_ID : TIPO"; x=val[0]; x.push([val[2],val[4]]); return x}

LIST_ID        : TokId                                                                                {puts "LIST_ID -> TokId(#{val[0]})"; return [@ultimo_token_leido]}               | LIST_ID TokComma TokId                                                               {puts "LIST_ID -> LIST_ID , TokId(#{val[2]})"; x=val[0]; x.push(@ultimo_token_leido); return x}TIPO           : TokValue                                                                             {puts "TIPO -> value"; return -1}               | TokArray TokOf TokNumber                                                             {puts "TIPO -> array of TokNum(#{val[2]})"; return val[2]}PROC           : PROCEDIMIENTO                                                                        {puts "PROC -> PROCEDIMIENTO"; return ""}               | PROC PROCEDIMIENTO                                                                   {puts "PROC -> PROC PROCEDIMIENTO"; return ""}PROCEDIMIENTO  : TokProc TokId TokOpenParen PARAMETRO TokCloseParen TokAs P_INSTRUCCION               {puts "PROCEDIMENTO -> proc TokId(#{val[1]}) ( PARAMETRO ) as P_INSTRUCCION"; @tabla_de_simbolos.insertProc(val[1],val[3],nil,val[6],@ultimo_proc)}               | TokProc TokId TokOpenParen PARAMETRO TokCloseParen TokAs P_VAR P_INSTRUCCION         {puts "PROCEDIMENTO -> PROCEDIMIENTO proc TokId(#{val[1]}) ( PARAMETRO ) as P_INSTRUCCION"; @tabla_de_simbolos.insertProc(val[1],val[3],val[6],val[7],@ultimo_proc)}
               | TokProc TokId TokOpenParen TokCloseParen TokAs P_INSTRUCCION                         {puts "PROCEDIMENTO -> proc TokId(#{val[1]}) () as P_INSTRUCCION"; @tabla_de_simbolos.insertProc(val[1],nil,nil,val[6],@ultimo_proc)}
               | TokProc TokId TokOpenParen TokCloseParen TokAs P_VAR P_INSTRUCCION                   {puts "PROCEDIMENTO -> PROCEDIMIENTO proc TokId(#{val[1]}) () as P_INSTRUCCION"; @tabla_de_simbolos.insertProc(val[1],nil,val[6],val[7],@ultimo_proc)}
PARAMETRO      : TokIn TokId                                                                          {puts "PARAMETRO -> in TokId(#{val[1]})"; return [[true, @ultimo_token_leido]]}               | TokOut TokId                                                                         {puts "PARAMETRO -> out TokId(#{val[1]})"; return [[false, @ultimo_token_leido]]}               | PARAMETRO TokComma TokIn TokId                                                       {puts "PARAMETRO -> PARAMETRO , in TokId(#{val[1]})"; x=val[0]; x.push([true,  @ultimo_token_leido]); return x}               | PARAMETRO TokComma TokOut TokId                                                      {puts "PARAMETRO -> PARAMETRO , out TokId(#{val[1]})"; x=val[0]; x.push([false,  @ultimo_token_leido]); return x}P_INSTRUCCION  : TokSkip                                                                              {puts "P_INSTRUCCION -> skip"; return ASTSkip.new(0)}               | TokReturn                                                                            {puts "P_INSTRUCCION -> return"; return ""}               | ASIGNACION                                                                           {puts "P_INSTRUCCION -> ASIGNACION"; return ASTMultAssign.new(val[0])}               | TokBegin LIST_P_INST TokEnd                                                          {puts "P_INSTRUCCION -> begin LIST_P_INST end"; return ASTBlock.new(val[1])}               | TokIf P_SELECCION TokFi                                                              {puts "P_INSTRUCCION -> if P_SELECCION fi"; return ASTSelect.new(val[1])}               | TokDo P_SELECCION TokOd                                                              {puts "P_INSTRUCCION -> do P_SELECCION od";  return ASTRepeat.new(val[1])}               | TokId TokOpenParen LIST_EXPR TokCloseParen                                           {puts "P_INSTRUCCION -> TokId(#{val[0]}) ( LIST_EXPR )"; return ASTProc.new(val[0],val[2])}               | TokShow EXPRESION                                                                    {puts "P_INSTRUCCION -> show EXPRESION"; return ASTShow.new(val[1])}               | TokShow TokString                                                                    {puts "P_INSTRUCCION -> show TokString(#{val[1]})"; return ASTShow.new(val[1])}LIST_P_INST    : P_INSTRUCCION                                                                        {puts "LIST_P_INST -> P_INSTRUCCION"; return [val[0]]}               | LIST_P_INST TokDotComma P_INSTRUCCION                                                {puts "LIST_P_INST -> LIST_P_INST ; P_INSTRUCCION"; x=val[0]; x.push(val[2]); return x}P_SELECCION    : GUARDIA TokSelect P_INSTRUCCION                                                      {puts "P_SELECCION -> GUARDIA -> P_INSTRUCCION"; return [[val[0],val[2]]]}               | P_SELECCION TokPipe GUARDIA TokSelect P_INSTRUCCION                                  {puts "P_SELECCION -> P_SELECCION GUARDIA -> P_INSTRUCCION"; return val[0]<<[val[2],val[4]]}
               
ASIGNACION     : TokId TokAssign EXPRESION                                                            {puts "ASIGNACION -> TokId(#{val[0]}) <- EXPRESION"; return [[val[0],val[2]]]}               | TokId TokComma ASIGNACION TokComma EXPRESION                                         {puts "ASIGNACION -> TokId(#{val[0]}) , ASIGNACION , EXPRESION"; x=val[2]; x.push([val[0],val[4]]);return x}               | TokId TokOpBracet EXPRESION TokCloseBracket TokAssign EXPRESION                      {puts "ASIGNACION -> TokId(#{val[0]}) [ EXPRESION ] <- EXPRESION"; return [[[val[0],val[2]],val[5]]]}               | TokId TokOpBracet EXPRESION TokCloseBracket TokComma ASIGNACION TokComma EXPRESION   {puts "ASIGNACION -> TokId(#{val[0]}) [ EXPRESION ] , ASIGNACION , EXPRESION"; x=val[5]; x.push([[val[0],val[2]],val[7]]);return x}EXPRESION      : TokNumber                                                                            {puts "EXPRESION -> TokNum(#{val[0]})"; return ASTNumber.new(val[0]);}               | TokId                                                                                {puts "EXPRESION -> TokId(#{val[0]})"; return ASTId.new(val[0])}               | TokLength TokId                                                                      {puts "EXPRESION -> $(#{val[1]})"; return ASTArraySize.new(val[1])}               | EXPRESION EXPROPER                                                                   {puts "EXPRESION -> EXPRESION EXPROPER"; return ASTMathOp.new(val[0],val[1][1],val[1][0])}               | TokOpenParen EXPRESION TokCloseParen                                                 {puts "EXPRESION -> ( EXPRESION )"; return val[1]}               | TokId TokOpBracet EXPRESION TokCloseBracket                                          {puts "EXPRESION -> TokId(#{val[0]}) [EXPRESION]"; return ASTArrayId.new(val[0],val[2])}               | TokMinus TokNumber                                                  =UMINUS          {puts "EXPRESION -> - TokNum(#{val[1]})"; return ASTMath.new(ASTNumber.new(-1),"*",val[1])}               | TokMinus TokId                                                      =UMINUS          {puts "EXPRESION -> - TokId(#{val[1]})"; return ASTMath.new(ASTNumber.new(-1),"*",val[1])}               | TokMinus TokOpenParen EXPRESION TokCloseParen                       =UMINUS          {puts "EXPRESION -> - ( EXPRESION )"; return ASTMath.new(ASTNumber.new(-1),"*",val[2])}               EXPROPER       : TokMult EXPRESION                                                                    {puts "EXPROPER -> * EXPRESION"; return ["*",val[1]]}               | TokMinus EXPRESION                                                  =BIMINUS         {puts "EXPROPER -> - EXPRESION"; return ["-",val[1]]}               | TokPlus EXPRESION                                                                    {puts "EXPROPER -> + EXPRESION"; return ["+",val[1]]}               | TokDiv EXPRESION                                                                     {puts "EXPROPER -> / EXPRESION"; return ["/",val[1]]}               | TokMod EXPRESION                                                                     {puts "EXPROPER -> % EXPRESION"; return ["%",val[1]]}MAIN           : TokMain LIST_INST TokEnd                                                             {puts "MAIN -> main LIST_INST end"; return @arbol_main = ASTMainBlock.new(val[1])}INSTRUCCION    : TokSkip                                                                              {puts "INSTRUCCION -> skip"; return ASTSkip.new(0)}               | ASIGNACION                                                                           {puts "INSTRUCCION -> ASIGNACION"; return ASTMultAssign.new(val[0])}               | TokBegin LIST_INST TokEnd                                                            {puts "INSTRUCCION -> begin LIST_INST end"; return ASTBlock.new(val[1])}               | TokIf SELECCION TokFi                                                                {puts "INSTRUCCION -> if SELECCION fi"; return ASTSelect.new(val[1])}               | TokDo SELECCION TokOd                                                                {puts "INSTRUCCION -> do SELECCION od"; return ASTRepeat.new(val[1])}               | TokId TokOpenParen LIST_EXPR TokCloseParen                                           {puts "INSTRUCCION -> TokId(#{val[0]}) ( LIST_EXPR )"; return ASTProc.new(val[0],val[2])}               | TokShow EXPRESION                                                                    {puts "INSTRUCCION -> show EXPRESION"; return ASTShow.new(val[1])}               | TokShow TokString                                                                    {puts "INSTRUCCION -> show TokString(#{val[1]})"; return ASTShow.new(val[1])}LIST_INST      : INSTRUCCION                                                                          {puts "LIST_INST -> INSTRUCCION"; return [val[0]]}               | LIST_INST TokDotComma INSTRUCCION                                                    {puts "LIST_INST -> LIST_INST ; INSTRUCCION"; x=val[0]; x.push(val[2]); return x}SELECCION      : GUARDIA TokSelect INSTRUCCION                                                        {puts "SELECCION -> GUARDIA -> INSTRUCCION"; return [[val[0],val[2]]]}               | SELECCION TokPipe GUARDIA TokSelect INSTRUCCION                                      {puts "SELECCION -> SELECCION GUARDIA -> INSTRUCCION"; return val[0]<<[val[2],val[4]]}LIST_EXPR      : EXPRESION                                                                            {puts "LIST_EXPR -> EXPRESION"; return [val[0]]}               | LIST_EXPR TokComma EXPRESION                                                         {puts "LIST_EXPR -> LIST_EXPR ; EXPRESION"; return val[0].push(val[2])}GUARDIA        : EXPRESION COMPARE                                                                    {puts "GUARDIA -> EXPRESION COMPARE "; return ASTBoolOp.new(val[0],val[1][1],val[1][0])}               | TokTrue                                                                              {puts "GUARDIA -> true"; return ASTBoolCte.new(true)}               | TokFalse                                                                             {puts "GUARDIA -> false"; return ASTBoolCte.new(false)}               | GUARDIA GUARDIAOPER                                                                  {puts "GUARDIA -> GUARDIA GUARDIAOPER"; return ASTBoolOp.new(val[0],val[1][1],val[1][0])}               | TokNot GUARDIA                                                                       {puts "GUARDIA -> ~ GUARDIA"; return ASTBoolNeg(val[1])}GUARDIAOPER    : TokOr GUARDIA                                                                        {puts "GUARDIAOPER -> || GUARDIA "; return ["||",val[1]]}               | TokAnd GUARDIA                                                                       {puts "GUARDIAOPER -> && GUARDIA"; return ["&&",val[1]]}COMPARE        : TokLess EXPRESION                                                                    {puts "COMPARE -> < EXPRESION"; return ["<",val[1]]}               | TokMoreEq EXPRESION                                                                  {puts "COMPARE -> >= EXPRESION"; return [">=",val[1]]}               | TokLessEq EXPRESION                                                                  {puts "COMPARE -> <= EXPRESION"; return ["<=",val[1]]}               | TokMore EXPRESION                                                                    {puts "COMPARE -> > EXPRESION"; return [">",val[1]]}               | TokEqual EXPRESION                                                                   {puts "COMPARE -> = EXPRESION"; return ["==",val[1]]}               | TokNotEqual EXPRESION                                                                {puts "COMPARE -> != EXPRESION"; return ["!=",val[1]]}
end
---- header
require 'AST.rb'
require 'SymTable.rb'
require 'Sym.rb'
---- inner ----
@ultimo_token_leido
@tabla_de_simbolos
@arbol_main
@ultimo_proc
def initialize(l)
   @tabla_de_simbolos=SymTable.new
   @arbol_main=nil
   @ultimo_proc=nil
   @ultimo_token_leido=nil
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
   if t.is_a?(TokProc) then @ultimo_proc = t end
   if t== nil then return [false,false] end
   if t!=nil then return [t.class.to_s.to_sym, t.value] end
end
---- footer ----   
