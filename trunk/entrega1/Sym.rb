# clase abstracta simbolo
# de quien heredan otros simbolos
class Sym
   @nombre
   @posx #npi
   @posy #npi

   def initialize(a=0,b=0,c=0)
      unless (c.is_a?(Numeric)) then raise ArgumentError, "El valor de las columnas debe ser un numérico." end
      unless (b.is_a?(Numeric)) then raise ArgumentError, "El valor de las lineas debe ser un numérico." end
      unless (a.is_a?(String)) then raise ArgumentError, "El valor del nombre debe ser un string." end
      @nombre=a
      @lin= b
      @col= c
   end
   
   def to_s
      " #{self.class.to_s} #{@nombre.to_s} (X : #{@posx.to_s}, Y: #{@posy.to_s})"  
   end

end

# clase de Simbolo para variables enteras
class SymVar < Sym
   @valor #donde valor es un entero

   def initialize(a,b,c,x)
      unless (x.is_a?(Numeric)) then raise ArgumentError, "El valor de una variable entera debe ser un numérico." end
      @valor = x
      super      
   end

   def getValue
      return @valor
   end
   
   def setValue(x)
      @valor = x
   end
end

# clase de Simbolo para variables arreglo
class SymArray < Sym
   @valor #donde valor es un arreglo
   def initialize(a,b,c,x)
      unless (x.is_a?(Array)) then raise ArgumentError, "El valor del valor de un arreglo debe ser un arreglo." end
      @nombre=a
      super
   end

   def getValue_at(i)
      return @valor[i]
   end
   
   def setValue(i,x)
      @valor[i] = x
   end

end


# clase de Simbolo para procedimiento
class SymProc < Sym
   @arbol #donde arbol representa la estructura del procedimiento
   @tabla #donde tabla es la tabla de simbolos que DEBE incluir la posicion inicial en el arbol
   @pila_a #donde pila_a contiene las multiples copias del arboles del procedimiento y en el tope siempre esta la mas actual
   @pila_t #donde pila_t contiene las multiples copias de la tabla de simbolos del procedimiento y en el tope siempre esta la mas actual
   def initialize(a,b,c,arbol,tabla)
      unless (arbol.is_a?(AST)) then raise ArgumentError, "El valor del valor del arbol de un procedimiento debe ser un AST." end
      unless (table.is_a?(SymTable)) then raise ArgumentError, "El valor del valor de la tabla de un procedimiento debe ser un SymTable." end
      @arbol = arbol
      @tabla = tabla
      @pila_a = []
      @pila_t = []
      super
   end
   
   def open
      @pila_a.push @arbol
      @pila_t.push @tabla
   end

   def close
      if (@bpila_a.pop==nil) then raise "Se intenta cerrar un arbol que no esta abierto" end
      if (@pila_t.pop==nil) then raise "Se intenta cerrar una tabla que no esta abierta" end
   end   
   
   # retornando la tabla de simbolos del ultimo procedimiento abierto o nil
   def getTable
      return @pila_t.last #puedes hacer getTable sucesivos sin modificar nada en lo absoluto.
   end

   # retornando la tabla seteada
   def setTable(x)
      @pila_t.pop
      @pila_t.push x
   end
   
   # retornando el arbol sintactico del ultimo procedimiento abierto o nil
   def getArbol
      return @pila_a.last #puedes hacer getArbol sucesivos sin modificar nada en lo absoluto.
   end
   
   def setArbol(x)
      @pila_a.pop
      @pila_a.push x
   end
   
end

# clase simbolo para una variable entero de entrada
class SymIn < SymVar
   def setValue(x)
      raise "Intento de escritura en una variable de entrada"
   end
end

# clase simbolo para una variable entero de salida
class SymOut < SymVar
   def getValue
      raise "Intento de lectura en una variable de salida"
   end
end
