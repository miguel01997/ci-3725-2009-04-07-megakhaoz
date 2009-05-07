require 'Token.rb'

class Lexer
    attr_accessor :col, :line, :value
    
    def initialize archivo
        @value = (File.open(archivo,'r+')).readlines
        @col=1
        @line=1
    end
 
    def yylex
		if (@line== nil ) then return nil end # Si es fin de archivo, chao pescado
		a=value[line-1][col-1..value[line-1].size].lstrip
		@@Tok.each_pair { |x ,y|	if a.match(x) then b=y.new(col,line,$&);puts "#{b}";puts "#{$&.length}"; skip $&.length; return b end }
		
    end	
    
    def nl
        @col=1
        @line=@line+1
		if (@line> @value.size ) then @line=nil end
    end
    
    def skip n
        @col+=n
        if @col >= value[line-1][col-1..value[line-1].size].size then nl end
    end
end
