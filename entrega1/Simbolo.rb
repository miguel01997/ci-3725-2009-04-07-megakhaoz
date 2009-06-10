class Simbolo
   @nombre
   @posx #npi
   @posy #npi

   def initialize(a=0,b=0,c=0)
      @nombre=a
      @posx= b
      @posy= c
   end
   
   def to_s
      " #{self.class.to_s} #{@nombre.to_s} (X : #{@posx.to_s}, Y: #{@posy.to_s})"  
   end

end

class Entero < Simbolo
   @valor #donde valor es un entero

   def initialize(a,b,c,x)
      @nombre=a
      @posx= b
      @posy= c
      @valor = x      
   end

   def getValue
      return @valor
   end
   
   def setValue(x)
      @valor = x
   end
end

class Arreglo < Simbolo
   @valor #donde valor es un arreglo
   def initialize(a,b,c,x)
      @nombre=a
      @posx= b
      @posy= c
      @valor = x      
   end

   def getValue_at(i)
      return @valor[i]
   end
   
   def setValue(i,x)
      @valor[i] = x
   end

end

class Procedimiento < Simbolo
   @arbol #donde arbol representa la estructura del procedimiento
   @tabla #donde tabla es la tabla de simbolos que DEBE incluir la posicion inicial en el arbol
   @pila_a #donde pila_a contiene las multiples copias del arboles del procedimiento y en el tope siempre esta la mas actual
   @pila_t #donde pila_t contiene las multiples copias de la tabla de simbolos del procedimiento y en el tope siempre esta la mas actual
   def initialize(a,b,c,arbol,tabla)
      @nombre=a
      @posx= b
      @posy= c
      @arbol = arbol
      @tabla = tabla
      @pila_a = []
      @pila_t = []
   end
   
   def open
      @pila_a.push @arbol
      @pila_t.push @tabla
   end

   def close
      if (@pila_a.pop==nil) then raise "Se intenta cerrar un arbol que no esta abierto" end
      if (@pila_t.pop==nil) then raise "Se intenta cerrar una tabla que no esta abierta" end
   end   
   
   def getTable
      return @pila_t.last #puedes hacer getTable sucesivos sin modificar nada en lo absoluto.
   end

   def setTable(x)
      @pila_t.pop
      @pila_t.push x
   end
   
   def getArbol
      return @pila_a.last #puedes hacer getArbol sucesivos sin modificar nada en lo absoluto.
   end
   
   def setArbol(x)
      @pila_a.pop
      @pila_a.push x
   end
   
end

class In < Entero
   def setValue(x)
      raise "Intento de escritura en una variable de entrada"
   end
end

class Out < Entero
   def getValue
      raise "Intento de lectura en una variable de salida"
   end
end