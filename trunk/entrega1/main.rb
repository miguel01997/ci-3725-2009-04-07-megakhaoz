require 'Lexer.rb'
#
#	Programa principal
#

#
#	Funcion principal que llama a la consola y a lexer para procesar bien archivos o bien comandos introducidos por el usuario
#
def start (archivo)
  unless File.exists?(archivo)
  throw Exception.new("El archivo \"#{prog_fn}\" no existe")
  end
  if File.directory?(archivo)
  throw Exception.new("El archivo \"#{prog_fn}\" es un directorio")
  end
  unless File.readable_real?(archivo)
  throw Exception.new("El archivo \"#{prog_fn}\" no se ha podido abrir para la lectura")
  end
  
	lex= Lexer.new(File.open(archivo,'r'))
	
  while ( (tok= lex.yylex) != nil )
  puts tok
	end
end

start "Ejemplos.txt"
