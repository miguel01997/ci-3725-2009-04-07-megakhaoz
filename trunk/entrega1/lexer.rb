=begin

    Este lexer consiste basicamete de 3 funciones.
    
    - initTokens recibe el nombre de un archivo con las palabras reservadas de un leguaje, usa tokens.txt por defecto si no se le pasa ninguno.
    
    - lexer recibe  el hash de tokens que devuelve initTokens y un string , devolviendo una lista con los tokens correspondientes a dicho string
    
    - consola permite utilizar el lexer en modo interactivo a menos que se le pase el nombre del archivo a procesar
    
    por ultimo consola recibe    
    
=end

@texto="" #Variable Global: aqui se ha de poner el texto a leer por el lexer
@Tok={	"||"=>"TokOr", 
	"&&"=>"TokAnd",
	"+"=>"TokPlus",
	"do"=>"TokDo",
	"<="=>"TokLessEq",
	"array of"=>"TokArray",
	","=>"TokComma",
	"-"=>"TokMinus",
	"begin"=>"TokBegin",
	"true"=>"TokTrue",
	"out"=>"TokOut",
	"fi"=>"TokFi",
	"$"=>"TokLength",
	"/"=>"TokDiv",
	"proc"=>"TokProc",
	":"=>"TokTwoDots",
	"%"=>"TokMod",
	"in"=>"TokIn",
	"["=>"TokOpBracet",
	"end"=>"TokEnd",
	"!="=>"TokNotEqual",
	"<"=>"TokLess",
	"->"=>"TokSelect",
	"<-"=>"TokAssign",
	"value"=>"TokValue",
	"false"=>"TokFalse",
	"="=>"TokEqual",
	"show"=>"TokShow",
	"as"=>"TokAs",
	"if"=>"TokIf",
	"]"=>"TokCloseBracket",
	"main"=>"TokMain",
	"var"=>"TokVar",
	"~"=>"TokNot",
	">"=>"TokMore",
	"("=>"TokOpenParen",
	">="=>"TokMoreEq",
	"return"=>"TokReturn",
	")"=>"TokCloseParen",
	"skip"=>"TokSkip",
	"*"=>"TokMult",
	"od"=>"TokOd"
}

# DEPRECATED? lexer recibe un string y lo divide en sus respectivos tokens, si los hubiere. Recibe el hash de tokens y el strign a revisar. Devuelve una lista de tokens que corresponden.
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

#INCOMPLETO Falta revisar que no se encuentre con un EOF
def lineaComment()
  x=@texto.match("\n") # busco donde se encuentra el proximo ENTER
  @texto[x.pre_match+x.values_at(0)[0]]="" # elimino todo el comentario incluyendo el enter
  
end

#INCOMPLETO Falta revisar que no se encuentre con un EOF
def bloqueComment()
  @texto[@texto[0,2]]="" #quito la primera "{#"
  x=@texto=~/#\}/ # busco donde se encuentra el proximo "#}"
  @texto[@texto[0,x+2]]="" # elimino todo el comentario incluyendo los "{#" y "#}"
  nil
end


#INCOMPLETO Falta revisar que no se encuentre con un EOF
def takeString(s)
  @texto[@texto[0,1]]="" #quito la primera comilla
  x=@texto.match(s) # busco donde se encuentra la proxima comilla
  string =x.pre_match # guardo el string en una variable (excluyendo las comillas)
  @texto[string+s]="" #elimino el string (incluyendo las comillas) del texto
  
  if string=~/\n/ #Si hay un enter dentro del string hay un error
    puts "BOOM"
  end
  string
end

#INCOMPLETO obtener a proximo
def tomarProximo(re)
  x=@texto.match(re) #busco la expresion en el texto
  if !x
    return ""
  end
  if x.pre_match.empty? #si la expresion se encuentra al principio del texto
    proximo = x.values_at(0)[0] #INCOMPLETO se deberia guardar en "proximo" el token a trabajar
    @texto[proximo]="" # se elimina proximo del texto
  else
    proximo="" #si la expresion no esta al principio se devuelve un string vacio
  end
  proximo
end


def comelon (texto)
  @texto=texto.strip
  textoViejo=""
  lista=[]
  while !@texto.empty? && textoViejo!=@texto
    textoViejo=@texto.clone
    # Se revisa el caso EPIC FAIL: "array of", puesto que es el UNICO token con espacios
    if @texto[0,8] == "array of" #los espacios extras han de ser omitidos? en caso tal se podria usar algo como:"tomarProximo(/array +of/)" or "tomarProximo(/array\s+of/)"
      @texto[@texto[0,8]]="" 
      lista << @Tok["array of"]
    end
    
    #Se revisan los casos que pueden incluir mas de una palabra
    if @texto[0,1] == "#"
      lineaComment("\n") # Linea de Comentario
    end 
    if @texto[0,2] == "{#"
      bloqueComment("#}") # Bloque de Comentario
    end 
    if @texto[0,1] == "\""
      # Linea de String (si consigue un "\n" debe reportar un error.)
      lista << ["TkStr", takeString("\"")]
    end 
    if @texto[0,1] == "'"
      # Linea de String (si consigue un "\n" debe reportar un error.)
      lista << ["TkStr", takeString("'")]
    end 
    
    #Se revisa en caso que sea un numero
    numero = tomarProximo(/-?\d+/)
    unless numero.empty?
      lista << ["TkNumber",numero]  #Se agrega el token del numero
    end
    
    #Se revisa en caso que sea una palabra
    palabra = tomarProximo(/[a-zA-Z]+\w*/)
    unless palabra.empty?
      if @Tok.has_key?(palabra)
        lista << @Tok[palabra] #Se agrega el token de la palabra reservada
      else
        lista << ["TkID", palabra] #Se agrega el token del identificador
      end
    end
    
    
    # ULTIMOS CASOS A REVISAR: los no-alfanumericos, dado que el lexer es comelon, comienza por los de 2 caracteres, si no los consigue intenta con 1, en caso que tampoco, entonces explota.
    test=@texto[0,2]
    if @Tok.has_key?(test)
      lista << @Tok[test]
      @texto[test]=""
    else
      test= @texto[0,1]
      if @Tok.has_key?(test)
      lista << @Tok[test]
      @texto[test]=""
      end
    end
    @texto.lstrip!
  end
  
  if textoViejo==@texto && !@texto.empty?
  puts "El lexer no ha podido continuar, revise la nomenclatura a partir de:\n\""+@texto+"\""
  end
  lista
end


# La consola del lexer, o en caso de que se pase un argumento le aplicará el lexer al archivo con el nombre de dicho argumento al programa
# Recibe como unico argumento la lista de tokens para trabajar
def consola()
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
            p comelon(starmonkey)
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
                salida= salida + comelon(z)
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

if __FILE__ ==$0

# Mostramos la estructura
puts "\n#####################################################################"
puts "# Generamos el hash para almacenar los tokens del lenguaje Yisiel   #"
puts "#####################################################################"

# Ahora, si se paso un argumento pasamos a modo consola. De lo contrario procesaremos el archivo
consola

end
