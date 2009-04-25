=begin

    Este lexer consiste basicamete de 3 funciones.
    
    - initTokens recibe el nombre de un archivo con las palabras reservadas de un leguaje, usa tokens.txt por defecto si no se le pasa ninguno.
    
    - lexer recibe  el hash de tokens que devuelve initTokens y un string , devolviendo una lista con los tokens correspondientes a dicho string
    
    - consola permite utilizar el lexer en modo interactivo a menos que se le pase el nombre del archivo a procesar
    
    por ultimo consola recibe    
    
=end


# Lee el archivo con las palabras reservadas del lenguaje, por defecto tokens.txt
def initTokens f='tokens.txt'
    # Creamos un hash para almacenar el tipo token
    tokens= Hash.new
    File::open(f,'r') do |f|
        f.to_a.each do |linea|
            linea.strip!
            tokens[linea] ='Tok'+linea.capitalize
        end 
    end
    tokens
end

# lexer recibe un string y lo divide en sus respectivos tokens, si los hubiere. Recibe el hash de tokens y el strign a revisar. Devuelve una lista de tokens que corresponden.
def lexer (tokens, string)
    lista= []
    # Dividimos el String en palabras !
    a= string.split(/["' ''\t''\n']+/)
    a.each do |palabra|
        lista << tokens[palabra] if tokens.include?palabra.strip
        unless tokens.include?palabra.strip
            lista << ["TkID", palabra]   if /[a-zA-Z]+/.match(palabra.strip)
            lista << ["TkNumber", palabra] if /[1-9]+/.match(palabra.strip)
        end
    end
    lista
end

# La consola del lexer, o en caso de que se pase un argumento le aplicará el lexer al archivo con el nombre de dicho argumento al programa
# Recibe como unico argumento la lista de tokens para trabajar
def consola(tks= {})
    starmonkey= nil
    salida= []
    if ARGV[0]== nil
        puts "\n#####################################################################"
        puts "#            Bienvenido al modo interactivo     del lexer          #"
        puts "#                        escriba 'exit' para salir                  #"
        puts "#####################################################################"
        while starmonkey != "exit\n"
            print ">>"
            starmonkey = Kernel::gets
            p lexer(tks, starmonkey)
        end
    end
    unless ARGV[0]== nil
        puts "\n#####################################################################"
        puts "#         Se va a analizar el siguiente programa contenido en       #"
        puts "                            #{ARGV[0]}                             "
        puts "#####################################################################"
        File::open( ARGV[0] , 'r' ) do |f|
            f.each do |z|
                puts z
                salida= salida + lexer(tks, z)
            end
            puts "#####################################################################" 
        end
        p salida
   end
end


############################################################################################################################################################################
##
#   A continuacion ejemplo particular para el lenguaje zombie, con palabras reservadas en zombie.txt y un archivo de prueba hello.z que se puede usar como argumento al invocar
#   este script 
############################################################################################################################################################################

#if __FILE__ =$0

# Mostramos la estructura
puts "\n#####################################################################"
puts "# Generamos el hash para almacenar los tokens del lenguaje Yisiel   #"
puts "#####################################################################"

a= initTokens 'Yisiel.txt' 
a.each do |x|
    p x
end

# Ahora, si se paso un argumento pasamos a modo consola. De lo contrario procesaremos el archivo
consola a

#end
