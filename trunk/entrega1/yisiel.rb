require 'Lexer.rb'
require 'Parser.rb'

#
#	Programa principal
#

#
#	Funcion principal que llama a la consola y a lexer para procesar bien archivos o bien comandos introducidos por el usuario
#



def start (archivo)
  
  unless File.exists?(archivo) then
    puts "El archivo \"#{archivo}\" no existe";    #throw (:ane)  # Archivo no existe
	 return nil	 
  end
  
  if File.directory?(archivo) then 
    puts "El archivo \"#{archivo}#\" es un directorio";
    #throw (:aed)  # Archivo es directorio
	 return nil
  end
  
  unless File.readable_real?(archivo) then
    puts "El archivo \"#{archivo}#\" no se ha podido abrir para la lectura";
    #throw (:anl)  # Archivo no es de lectura
	 return nil
  end
    
	lex= Lexer.new(File.open(archivo,'r'))
	p= Parser.new(lex)

    p.parser
end

if ARGV[0]==nil then
    print "Archivo a interpretar:"
    f= Kernel::gets
    start f.strip
else
    start ARGV[0]
end
