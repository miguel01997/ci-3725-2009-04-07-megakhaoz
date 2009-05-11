require 'Lexer.rb'
#
#	Programa principal
#

#
#	Funcion principal que llama a la consola y a lexer para procesar bien archivos o bien comandos introducidos por el usuario
#
def start
	lex= Lexer.new('lol.txt')
	while ( (x= lex.yylex)!= nil )
	end
end

start
