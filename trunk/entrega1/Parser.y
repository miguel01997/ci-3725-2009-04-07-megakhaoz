class Parser

   prechigh

   token BIMINUS UMINUS TokLess TokFi TokPlus TokOr TokAs TokEqual TokValue TokProc TokMore TokOd TokNot TokAssign TokNotEqual TokOf TokDo TokArray TokNumber TokReturn TokSelect TokIn TokDiv TokLength TokTrue TokShow TokTwoDots TokComma TokAnd TokString TokMinus TokSkip TokEnd TokOpBracet TokMain TokOut TokOpenParen TokCloseBracket TokLessEq TokCloseParen TokIf TokFalse TokMod TokBegin TokString TokId TokDotComma TokMult TokMoreEq TokVar TokPipe

end
---- header
#require 'AST.rb'
require 'SymTable.rb'
require 'Sym.rb'
---- inner ----
@ultimo_token_leido
@tabla_de_simbolos
def initialize(l)
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
---- footer ----