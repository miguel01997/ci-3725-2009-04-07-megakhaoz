
#
#	La clase Token representa un simbolo del lenguaje y guarda informacion sobre el valor y posicion del mismo, para  el analisis lexicografico de un archivo
#
class Token
    @col
    @line
    @value
    
    attr_reader :col, :line, :value
    
    def initialize (a=0, b=0, c=0)
        unless (a.is_a?(Numeric) && b.is_a?(Numeric)) then raise ArgumentError, "La fila y columna deben ser valores numericos." end
        @col=a
        @line= b
        @value= c
    end
    
	#
	#	Se reescribe la funcion to_s para imprimir apropiadamente el contenido de un token
	#
    def to_s
        " #{self.class.to_s} #{ if (@value!= nil) then @value.to_s end } (Linea : #{ @line.to_s } Columna: #{ @col.to_s})"  
    end
end

class TokId < Token
    def initialize (a=0, b=0, c=0)
       super
       unless (c.is_a?(String)) then raise ArgumentError, "El valor del identificador debe ser un string." end
    end
end
 
class TokNumber < Token
    def initialize (a=0, b=0, c=0)
        c=c.to_i
       super
       unless (c.is_a?(Numeric)) then raise ArgumentError, "El valor del número debe ser un numérico." end
    end
end
 
class TokString < Token
    def initialize (a=0, b=0, c=0)
       c1=c.split "\\\\"
       c1.each do |c2| c2.gsub!("\\n","\n") end
       c= c1.join "\\"
       super
       unless (c.is_a?(String)) then raise ArgumentError, "El valor del identificador debe ser un string." end
    end
end

class TokDo < Token 
end

class TokPlus < Token
end

class TokAnd < Token
end

class TokOr < Token
end

class TokComma < Token
end

class TokOf < Token
end

class TokLessEq < Token
end

class TokBegin < Token
end

class TokMinus < Token
end

class TokFi < Token
end
 
class TokOut < Token
end

class TokTrue < Token
end

class TokTwoDots < Token
end

class TokProc < Token
end

class TokDiv < Token
end

class TokLength < Token
end

class TokDotComma < Token
end

class TokEnd < Token
end

class TokOpBracet < Token
end

class TokIn < Token
end

class TokMod < Token
end

class TokValue < Token
end

class TokAssign < Token
end

class TokSelect < Token
end
 
class TokLess < Token
end
 
class TokNotEqual < Token
end

class TokVar < Token
end
 
class TokMain < Token
end

class TokCloseBracket < Token
end

class TokIf < Token
end

class TokAs < Token
end
 
class TokShow < Token
end
 
class TokEqual < Token
end

class TokFalse < Token
end
 
class TokArray < Token
end
 
class TokOpenParen < Token
end
 
class TokMore < Token
end

class TokNot < Token
end

class TokSkip < Token
end

class TokCloseParen < Token
end

class TokReturn < Token
end

class TokMoreEq < Token
end

class TokOd < Token
end

class TokMult < Token
end

class TokString < Token
end

@@Exps=[
		/^(-?\d+)/,
        /^([a-zA-Z][\w]*)/,
		/^"([^\n"]*)"/,
		/^'([^\n']*)'/,
		/^\|\|/, 
        /^&&/,
        /^\+/,
        /^do/,
        /^<=/,
        /^array/,
        /^of/,
        /^,/,
        /^begin/,
        /^true/,
        /^out/,
        /^fi/,
        /^\$/,
        /^\//,
        /^proc/,
        /^\:/,
        /^%/,
        /^in/,
        /^\[/,
        /^end/,
        /^!=/,
        /^->/,
        /^<-/,
        /^value/,
        /^false/,
        /^=/,
        /^show/,
        /^as/,
        /^if/,
        /^\]/,
        /^main/,
        /^var/,
        /^~/,
        /^\(/,
        /^>=/,
        /^return/,
        /^\)/,
        /^skip/,
        /^\*/,
        /^od/,
        /^>/,
        /^</,
        /^-/,
        /^;/
]
 
 @@Tok={
		/^(-?\d+)/=> TokNumber,
		/^([a-zA-Z][\w]*)/=>TokId,
		/^"([^\n"]*)"/=>TokString,
		/^'([^\n']*)'/=>TokString,
		/^\|\|/=>TokOr, 
        /^&&/=>TokAnd,
        /^\+/=>TokPlus,
        /^do/=>TokDo,
        /^<=/=>TokLessEq,
        /^array/=>TokArray,
        /^of/=>TokOf,
        /^,/=>TokComma,
        /^begin/=>TokBegin,
        /^true/=>TokTrue,
        /^out/=>TokOut,
        /^fi/=>TokFi,
        /^\$/=>TokLength,
        /^\//=>TokDiv,
        /^proc/=>TokProc,
        /^\:/=>TokTwoDots,
        /^%/=>TokMod,
        /^in/=>TokIn,
        /^\[/=>TokOpBracet,
        /^end/=>TokEnd,
        /^!=/=>TokNotEqual,
        /^->/=>TokSelect,
        /^<-/=>TokAssign,
        /^value/=>TokValue,
        /^false/=>TokFalse,
        /^=/=>TokEqual,
        /^show/=>TokShow,
        /^as/=>TokAs,
        /^if/=>TokIf,
        /^\]/=>TokCloseBracket,
        /^main/=>TokMain,
        /^var/=>TokVar,
        /^~/=>TokNot,
        /^\(/=>TokOpenParen,
        /^>=/=>TokMoreEq,
        /^return/=>TokReturn,
        /^\)/=>TokCloseParen,
        /^skip/=>TokSkip,
        /^\*/=>TokMult,
        /^od/=>TokOd,
        /^>/=>TokMore,
        /^</=>TokLess,
        /^-/=>TokMinus,
        /^;/=>TokDotComma
}


