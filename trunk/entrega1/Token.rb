class Token
    @col
    @line
    @value
    
    def New (a=0, b=0, c=0)
        unless (a.is_a?(Numeric) && b.is_a?(Numeric)) raise ArgumentError, "La fila y columna deben ser valores numericos."
        @col=a
        @line= b
        @value= c
    end
    
    def to_s
        " Token "+ self.class + " Valor: "+@value+" Linea : "+@line+" Columna: "+@col
    end
    
end
