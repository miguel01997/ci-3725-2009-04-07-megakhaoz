#!/usr/bin/env ruby
require("token.rb")
=begin
=end
class Lexer
  @archivo # Contiene el archivo abierto
  @linea # Contiene la linea de archivo que se esta analizando
  @tokens # Contiene los tokens encontrados hasta el momento
  @nl # Contiene el numero de la linea actual
  @nc # Contiene el numero de la columna actual
  
  # se inicializa el lexer con "prog_fn" como el nombre del archivo a leer
  def initialize(prog_fn)
    unless File.readable_real?(prog_fn)
      throw Exception.new("El archivo \"#{prog_fn}\" no se ha podido abrir para la lectura")
    end
    @archivo=File::open( prog_fn , 'r' )
    @linea = @archivo.gets()
    @tokens = {}
    @nl = 1
    @nc = 1
  end

  # devuelve el proximo token encontrado, en caso de error lanza una
  # exception, en caso de EOF devuelve "nil"
  # algunos posibles errores son:
  # - simbolo o secuencia de simbolos no reconocida
  def gett()
    # Si la linea es solo un salto de linea, es porque se ha leido todo lo
    # que contenia y aun hay algo que leer en el archivo
    while @linea.lstrip=="\n"
      nextLine()
    end
    
    # Si la linea esta vacia, es porque se llego al final del archivo
    if @linea.lstrip==""
      return nil
    end
    
    if @linea.lstrip[0,2]=="{#"
      bloqueComment()
    end
    
    # Si aun estoy aqui, es porque tengo frente a mi al menos un simbolo
    # distinto de \s y \n, asi que debo leer buscando un token
    
    
    token
  end

  # devuelve un arreglo de tokens con todos los tokens encontrados en el
  # archivo, en caso de que el lexer no pueda reconocer ningun token si no
  # ha terminado de leerse el archivo, se omite el primer caracter
  def getNonStop()
    nil
  end
  
  def consume(s)
    unless @linea.match(s).pre_match == ""
      throw Exception.new("\nERROR: mal uso de la funcion \"consume(s)\"")
    end
    @linea[s]=""
    @nc+=s.length
  end
  
  
  def bloqueComment()
    tl=@nl
    tc=@nc
    
    # consumo el "{#"
    consume("{#")
    @nc+=2
    # mientras no se consiga el cierre del comentario se ignoran las lineas 
    while !@linea.match("#}")
      nextLine()
      if @linea==nil
        throw Exception.new("\nWarning:\n\t(Linea:#{tl},Col:#{tc}): No se ha cerrado el bloque Comentario.")
      end
    end
    # Cuando se consiga el cierre del comentario se elimina el resto del comentario
    @linea[@linea.match("#}").pre_match+"#}"]=""
  end
  # devuelve un arreglo de tokens con todos los tokens encontrados en el
  # archivo, en caso de que el lexer no pueda reconocer ningun token se detiene
  # y envia una exception con los tokens entre sus datos.
  def getAll()
    nil
  end
  
  # devuelve un arreglo de tokens con todos los tokens encontrados hasta
  # encontrar el token "token" (incluyendolo)
  def getUntil(token)
    nil
  end
  
  #lee la proxima linea del archivo y la coloca en la variable "@linea"
  def nextLine() #PRIVATE
    @linea=@archivo.gets
    nl+=1
    nc=0
  end

end

if __FILE__ ==$0
  puts "hola mundo, soy la clase Lexer"
end




#USAR: c.char (transforma un char numerico a una letra)
#USAR: f.ungetc(c) (devuelve c al comienzo del archivo)
#USAR: f.getc (toma el proximo caracter del archivo)
#IMPLEMENTAR: yylex (devuelve el proximo token)