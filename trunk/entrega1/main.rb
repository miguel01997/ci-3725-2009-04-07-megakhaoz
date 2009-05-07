require 'Lexer.rb'

def start
	lex= Lexer.new('lol.txt')
	while ( (x= lex.yylex)!= nil )
	end
end

start
