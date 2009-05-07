require 'Token.rb'

class Lexer
    attr_accessor :col, :line, :value
    
    def initialize archivo
        @input = (File.open(archivo,'r'))
        @col=1
        @line=1
	@buffer= @value.gets
    end
 
    def yylex
	if (@buffer.lstrip! == nil ) then return nil end # Si es fin de archivo, chao pescado
	
	eliminar_comentarios()
	puts @buffer
	@@Exps.each { |x| if a.match(x) then b=@@Tok[x].new(col,line,$&);puts "#{b}";puts "#{$&.length}"; skip $&.length; return b end }
    end	

	def eliminar_comentarios()
		temp_line = ""
	end

    
    def nl
	@col=1
        @line+=1
	@buffer=@input.gets
    end
    
    def skip n=1
        @col+=n
        if (@buffer.strip="/n" || @buffer.strip="") nl
    end
end
