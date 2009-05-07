require 'Token.rb'

class Lexer
    attr_accessor :col, :line, :value
    
    def initialize archivo
        @value = (File.open(archivo,'r+')).readlines
        @col=1
        @line=1
    end
    
    def yylex_old
		if (!@line) then return 'EOF'; break end 
        a=value[line-1][col-1..value[line-1].size].lstrip
		puts a
        b= case a
            when /^[a-zA-Z][\w_]+/  then TokId.new(col, line, a[/^[a-zA-Z][\w_]*/])
            when /^\d+/             then TokNumber.new(col, line, a[/^\d+/].to_i)
			when /^[ \t\r\f]+/      then puts a[/^[ \t\r\f]+/].size;skip a[/^[ \t\r\f]+/].size; nil
			when /^\n/				then nl;yield
			else nil
        end
		if @@Tok.has_key?(a) then puts "Hash: "+@@Tok[a] end
        unless (b==nil) then skip b.value.size  end
        b
    end
	
   def yylex
		a=value[line-1][col-1..value[line-1].size]
		if (!a.match(/\n/) && a.length==1) then return nil end # Si es fin de archivo, chao pescado
		puts ">>"+a
		@@Tok.each { |x ,y|	if a.match(x) then b=y.new(col,line,$&);puts "#{b}"; skip $&.length; return b end }
		
    end	
    
    def nl
        @col=1
		if (@line< @value.size ) then @line=@line+1 end
    end
    
    def skip n
        @col+=n
        if @col > value[line-1][col-1..value[line-1].size].size then nl end
    end
end