require 'Lexer.rb'

def start
	lex= Lexer.new('Ejemplos.txt')
	while ( (x= lex.yylex)!= nil )
	end
end

start
