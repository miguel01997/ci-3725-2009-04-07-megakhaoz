require 'Lexer.rb'

lex= Lexer.new('lol.txt')
while ( (x= lex.yylex)!= nil )
end
