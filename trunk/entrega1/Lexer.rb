require 'Token.rb'

class Lexer
    attr_accessor :col, :line, :value
    
    def initialize archivo
        @input = (File.open(archivo,'r'))
        @col=1
        @line=1
	    @buffer= @input.gets
    end
 
    def yylex
	    if (@buffer == nil ) then return nil end # Si es fin de archivo, chao pescado
	    @buffer.lstrip!
	    eliminar_comentarios
	    @@Exps.each { |x| if @buffer.match(x) then b=@@Tok[x].new(col,line,$&);puts "#{b}"; skip $&.length; return b end }
    end	

	def eliminar_comentarios
		temp_line = ""
	end

    
    def nl
	    @col=1
        @line+=1
	    @buffer=@input.gets
    end
    
    def skip n=1
        @col+=n
        @buffer= @buffer[n..-1]
        if (@buffer.strip=="/n" || @buffer.strip=="") then nl end
    end
end
