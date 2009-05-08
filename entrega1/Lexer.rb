require 'Token.rb'

class Lexer
    attr_accessor :col, :line, :value
    
    def initialize archivo
        unless File.exists?(archivo)
          throw Exception.new("El archivo \"#{prog_fn}\" no existe")
        end
        if File.directory?(archivo)
          throw Exception.new("El archivo \"#{prog_fn}\" es un directorio")
        end
        unless File.readable_real?(archivo)
          throw Exception.new("El archivo \"#{prog_fn}\" no se ha podido abrir para la lectura")
        end
        @input = (File.open(archivo,'r'))
        @col=1
        @line=1
	@buffer= @input.gets
    end
 
    def yylex
      eliminar_comentarios #comentar en caso de fallos
	    if (@buffer == nil ) then return nil end # Si es fin de archivo, chao pescado
	    @buffer.lstrip!
	    @@Exps.each { |x| if @buffer.match(x) then b=@@Tok[x].new(col,line,$1);puts "#{b}"; skip $&.length; return b end }
    end	

	def eliminar_comentarios
		temp_buffer = ""
    temp_line = @line
    while ((@buffer != nil) && ((temp_buffer != @buffer) || (temp_line != @line)))
      temp_buffer = @buffer
      temp_line = @line
      if @buffer.lstrip[0,1]=="#" then nl end
      if @buffer.lstrip=="" then nl end
      if @buffer.lstrip=="/n" then nl end
      if @buffer.lstrip[0,2]=="{#"
        skip(2)
        while(!@buffer.match(/#\}/) )
        # PREGUNTA: un bloque de comentario puede terminar con "{" ? en ese caso podria existir un bloque asi: {#blah{#} e incluso: {#<seccion comentada{#}<seccion NO comentada>#} seria valido
        if @buffer.match(/\{#/) then throw Exception.new("Bloques de comentarios anidados") end
          nl
        end
        n=@buffer=~/#\}/
        if @buffer[0,n].match(/\{#/) then throw Exception.new("Bloques de comentarios anidados") end
        skip(n+2)
      end 
    end
	end

    
    def nl
	    @col=1
        @line+=1
	    @buffer=@input.gets
    end
    
    def skip n=1
        @col+=n
        @buffer= @buffer[n..-1]
        if (@buffer.lstrip=="/n" || @buffer.lstrip=="") then nl end
    end
end
