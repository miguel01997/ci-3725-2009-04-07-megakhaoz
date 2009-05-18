require 'Token.rb'
#
#	La clase lexer lleva control del analisis lexicografico de un archivo y permite obtener tokens con la funcion yylex
#
class Lexer
    attr_accessor :col, :line, :value
    
    def initialize archivo
        @col=1
        @line=1
        @input= archivo
	    @buffer= @input.gets
		 if @buffer
			@max=@buffer.length
			@buffer.lstrip!
			@col=@max-@buffer.length+1
		end
    end
 
	#
	#	La funcion yylex retorna el siguiente token encontrado en un archivo o nil si se ha llegado al final del mismo
	#
    def yylex
		eliminar_comentarios 
	    if (@buffer == nil ) then return nil end # Si es fin de archivo, chao pescado
	    @@Exps.each { |x| if @buffer.match(x) then b=@@Tok[x].new(col,line,$1); skip $&.length; return b end }
		unless (@@Exps.include?(@buffer) ) then raise "Caracter inesperado '#{@buffer[/^./]}'(#{@buffer[/^./][0]}) encontrado en linea #{line}, columna #{col}.";
		                                   end
    end	

	#
	#	Elimina comentaios de un archivo
	#
	def eliminar_comentarios
		if (@buffer == nil) then  return 0 end
		temp_buffer = nil
    temp_line = @line
	 
    while ((@buffer != nil) && ((temp_buffer != @buffer) || (temp_line != @line)))
      temp_buffer = @buffer
      temp_line = @line
      if @buffer[0,1]=="#" then nl end
      if @buffer=="" then nl end
      if @buffer=="/n" then nl end
      if @buffer=="/r/n" then nl end
      if @buffer[0,2]=="{#"
        skip(2)
        while((@buffer != nil) && !@buffer.match(/#\}/) )
			if @buffer.match(/\{#/) then raise EcaException.new("Bloques de comentarios anidados (linea: #{@line}, columna: #{@col})") end
          nl
        end
		  if (@buffer == nil) then raise EofException.new("Se encontro un 'EOF' cuando se esperaba un #\}\nComentario no terminado") end
        n=@buffer=~/#\}/
        if @buffer[0,n+1].match(/\{#/) then raise EcaException.new("Bloques de comentarios anidados (linea: #{@line}, columna: #{@col})") end
        skip(n+2)
      end 
    end
	end

    #
	#	La funcion nl permite que el lexer apunte a la siguiente linea del archivo
	#
    def nl
        @line+=1
	    @buffer=@input.gets
		 if @buffer
			@max=@buffer.length
			@buffer.lstrip!
			@col=@max-@buffer.length+1
		end
		 
    end

    #
	#	La funcion skip permite que el lexer avance n columnas en una misma linea del archivo
	#    
    def skip n=1
		if !@buffer then return nil end
		@buffer= @buffer[n..-1]
		if !@buffer then nl end
		if !@buffer then return nil end
		@buffer.lstrip!
		@col=@max-@buffer.length+1
		if (@buffer.lstrip=="/n" || @buffer.lstrip=="") then nl end
    end
end
