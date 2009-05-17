require 'Lexer.rb'
#
#	Programa principal
#

#
#	Funcion principal que llama a la consola y a lexer para procesar bien archivos o bien comandos introducidos por el usuario
#
def start (archivo)
  
  unless File.exists?(archivo) then
    puts "El archivo \"#{archivo}\" no existe";    throw (:ane)  # Archivo no existe 
  end
  
  if File.directory?(archivo) then 
    puts "El archivo \"#{archivo}#\" es un directorio";
    throw (:aed)  # Archivo es directorio
  end
  
  unless File.readable_real?(archivo) then
    puts "El archivo \"#{archivo}#\" no se ha podido abrir para la lectura";
    throw (:anl)  # Archivo no es de lectura
  end
    
	lex= Lexer.new(File.open(archivo,'r'))
	tok= ""
  while ( tok != nil )
	begin
		tok= lex.yylex
		puts tok
		rescue then puts $@.to_s; lex.skip 1
	end
  end
end

if ARGV[0]==nil then
    print "Archivo a interpretar:"
    f= Kernel::gets
    start f.strip
else
    start ARGV[0]
end
