require 'SymTable.rb'

class AST
   @val
	
	attr_accessor :val

	def initialize(c)
		@val=c
   end
	
   def check()
		return true
   end
   
   def run()
   end
	
	def to_s
		"#{@val}"
   end
end

# AST para expresiones aricmeticas.
class ASTMath < AST
end

# AST para guardar valores númericos.
class ASTNumber < ASTMath
   def check(tabla,proc)
      #aqui podria ir el if loco de malledo
		return true
   end
   
   def run(tabla,proc)
      #aqui podria ir el if loco de malledo
   end
   
end

# AST para guardar identificadores.
class ASTId < ASTMath
	@nombre
	attr_accessor :nombre
	
	def initialize(c)
		@nombre=c
   end
	
	def check(tabla,proc)
      #aqui podria ir el if loco de malledo
		if tabla.findVar(proc,@nombre)==nil then return nil 
		else return true
		end
	end

	def run(tabla,proc)
      #aqui podria ir el if loco de malledo
		@val= tabla.findVar(proc,@nombre).getValue
	end
end

# AST para obtener el tamanyo de un arreglo.
class ASTArraySize < ASTMath
	@nombre
	attr_accessor :nombre
	
	def initialize(c)
		@nombre=c
   end
	
	def check(tabla,proc)
      #aqui podria ir el if loco de malledo
		if tabla.findArray(@nombre)==nil then return nil 
		else return true
		end
	end

	def run(tabla,proc)
      #aqui podria ir el if loco de malledo
		@val= tabla.findArray(@nombre).size()
	end
end

# AST para guardar identificadores  de arreglos.
class ASTArrayId < ASTMath
	@nombre
   @indice
	attr_accessor :nombre, :indice
	
	def initialize(a,b)
		@nombre=a
      @indice=b
   end
	
	def check(tabla,proc)
      #aqui podria ir el if loco de malledo
		if tabla.findArray(@nombre)==nil then return nil 
		else return @indice.check(tabla)
		end
	end

	def run(tabla,proc)
      #aqui podria ir el if loco de malledo
      @indice.run(tabla,proc)
		@val= tabla.findArray(@nombre).getValue_at(@indice.val)
	end
end

class ASTMathOp < ASTMath
   
	@izq
   @der
   @op
	
	attr_accessor :izq, :der, :op
	
	def initialize (a=0, b=0, c=0)
      @izq=a
      @der= b
      @op= c
		unless ( @izq.is_a?(ASTMath) ) then raise ArgumentError, "El operando izquierdo no es una expresion aricmetica." end
		unless ( @der.is_a?(ASTMath) ) then raise ArgumentError, "El operando derecho no és una expresión aricmética." end
	end
	
   def check(tabla,proc)
      #aqui podria ir el if loco de malledo
		return (@izq.check(tabla) && @der.check(tabla)) 
   end
   
   def run(tabla,proc)
      #aqui podria ir el if loco de malledo
		if @izq.is_a?(ASTMath) then @izq.run(tabla,proc) end
		if @der.is_a?(ASTMath) then @der.run(tabla,proc) end
		op1=@izq
		op2=@der
		
      @val=eval(op1.to_s<<@op<<op2.to_s)
  end
end

class ASTBool < AST
end

class ASTBoolCte < ASTBool
   def check(tabla,proc)
      #aqui podria ir el if loco de malledo
		return true
   end
   
   def run(tabla,proc)
      #aqui podria ir el if loco de malledo
   end
end

class ASTBoolNeg < ASTBool
	@expr
	attr_accessor :expr
	
	def initialize(c)
		unless ( c.is_a?(ASTBool) ) then raise ArgumentError, "Solo puede aplicarse negacion a una expresion logica." end
      @nombre=c
   end
   def check(tabla,proc)
      #aqui podria ir el if loco de malledo
		return @nombre.check(tabla)
   end
   
   def run(tabla,proc)
      #aqui podria ir el if loco de malledo
   end
end

class ASTBoolOp < ASTBool

	@izq
   @der
   @op
	
	attr_accessor :izq, :der, :op
	
	def initialize (a=0, b=0, c=0)
      @izq=a
      @der= b
      @op= c
	end	

   def check(tabla,proc)
      #aqui podria ir el if loco de malledo
		return (@izq.check(tabla) && @der.check(tabla)) 
   end
   
   def run(tabla,proc)
      #aqui podria ir el if loco de malledo
		if (@izq.is_a?(ASTBool) || @izq.is_a?(ASTMath)) then @izq.run(tabla,proc) end
		if (@der.is_a?(ASTBool) || @der.is_a?(ASTMath)) then @der.run(tabla,proc) end
      
		op1=@izq
		op2=@der
		
      @val=eval(op1.to_s<<@op<<op2.to_s)

   end
end

class ASTStmt < AST
end

# Arbol para la instruccion skip
class ASTSkip < ASTStmt

   def check(tabla,proc)
      #aqui podria ir el if loco de malledo
		return true
   end
   
   def run(tabla,proc)
      #aqui podria ir el if loco de malledo
   end
end

# Arbol para la instruccion show
class ASTShow < ASTStmt
   def check(tabla,proc)
      #aqui podria ir el if loco de malledo
		return true
   end
   
   def run(tabla,proc)
      #aqui podria ir el if loco de malledo
		if @val.is_a?(ASTMath) then @val.run(tabla,proc) end 
		puts @val.to_s
   end
end

# Arbol para la instruccion  asignacion de variables
class ASTAssign < ASTStmt
	@nombre
   @asignacion
	attr_accessor :nombre, :asignacion
	
	def initialize(a,b)
		@nombre=a
      @asignacion=b
   end
	
	def check(tabla,proc)
      #aqui podria ir el if loco de malledo
		if tabla.findVar(proc,@nombre)==nil then return nil 
		else return @asignacion.check(tabla)
		end
	end

	def run(tabla,proc)
      #aqui podria ir el if loco de malledo
      @asignacion.run(tabla,proc)
		@val= tabla.findVar(proc,@nombre).setValue(@asignacion.val)
	end
end

# Arbol para la instruccion  asignaciones de variables
class ASTMultAssign < ASTStmt
	@nombres
   @asignaciones
   @lista_assig
	attr_accessor :nombres, :asignaciones, :lista_assig
	
	def initialize(a)
      @nombres=[]
      @asignaciones=[]
      @lista_assig=[]
      a.each do |x| @nombres.push(x[0]);@asignaciones.push(x[1]) end
      @nombres.reverse!

      @nombres.each_index{ |x| if(@nombres[x].is_a?(Array)) then @lista_assig<<ASTArrayAssign.new(@nombres[x][0],@nombres[x][1],@asignaciones[x])
                                                            else @lista_assig<<ASTAssign.new(@nombres[x],@asignaciones[x]) end}
   end
	
	def check(tabla,proc)
      #aqui podria ir el if loco de malledo
      @lista_assig.each {|x| x.check(tabla)}
	end

	def run(tabla,proc)
      #aqui podria ir el if loco de malledo
      @lista_assig.each {|x| x.run(tabla,proc)}
	end
end

# Arbol para la instruccion  asignacion aun arreglo en un indice
class ASTArrayAssign < ASTStmt
	@nombre
   @asignacion
   @indice
	attr_accessor :nombre, :asignacion, :indice
	
	def initialize(a,b,c)
		@nombre=a
      @indice=b
      @asignacion=c
   end
	
	def check(tabla,proc)
      #aqui podria ir el if loco de malledo
		if tabla.findVar(proc,@nombre)==nil then return nil 
		else return @asignacion.check(tabla) && @indice.check(tabla) 
		end
	end

	def run(tabla,proc)
      #aqui podria ir el if loco de malledo
      @asignacion.run(tabla,proc)
      @indice.run(tabla,proc)
		@val= tabla.findArray(@nombre).setValue(@indice.val,@asignacion.val)
	end
end

# Arbol para la instruccion  bloque
class ASTBlock < ASTStmt

   @instrucciones
	attr_accessor :instrucciones
	
	def initialize(a)
		@instrucciones=a
   end
	
	def add(a) #DEPRECATED
		@instrucciones.push(a)
	end

	def check(tabla,proc)
      #aqui podria ir el if loco de malledo
		return @instrucciones.each{|x| print x, " -- " }
	end

	def run(tabla,proc)
      #aqui podria ir el if loco de malledo
     @instrucciones.each{|x| x.run(tabla,proc)}
	end
end

# Arbol para la instruccion  bloque principal
class ASTMainBlock < ASTStmt

   @instrucciones
	attr_accessor :instrucciones
	
	def initialize(a)
		@instrucciones=a
   end
	
	def add(a) #DEPRECATED
		@instrucciones.push(a)
	end

	def check(tabla,proc)
      #aqui podria ir el if loco de malledo
		return @instrucciones.each{|x| print x, " -- " }
	end

	def run(tabla,proc)
      #aqui podria ir el if loco de malledo
     @instrucciones.each{|x| x.run(tabla,proc)}
	end
end

# Arbol para la instruccion  repeticion
class ASTRepeat < ASTStmt
   @guardia
   @instruccion
   attr_accessor :guardia, :instruccion
   
   def initialize(a)
      @guardia=[]
      @instruccion=[]
      a.each {|x| @guardia<<x[0];@instruccion<<x[1] }
   end
   
   def add(a,b)
      @guardia<<a
      @instruccion<<b
   end
   
   def check(tabla,proc)
      #aqui podria ir el if loco de malledo #ESTO ESTA MALO
      # return @guardia.check(tabla)&&@instruccion.check(tabla)
      return true
   end
   
   def run(tabla,proc)
      #aqui podria ir el if loco de malledo
      again= false;
      @guardia.each_index{|x| @guardia[x].run(tabla,proc);if (@guardia[x].val) then @instruccion[x].run(tabla,proc);again=true;break;return; end}
      if (again) then self.run(tabla,proc) end
   end
end

# Arbol para la instruccion seleccion  
class ASTSelect < ASTStmt
   @guardia
   @instruccion
   attr_accessor :guardia, :instruccion
   
   def initialize(a)
      @guardia=[]
      @instruccion=[]
      a.each {|x| @guardia<<x[0];@instruccion<<x[1] }
   end
   
   def check(tabla,proc)
      #aqui podria ir el if loco de malledo #ESTO ESTA MALO
      #return @guardia.check(tabla)&&@instruccion.check(tabla)
      return true
   end
   
   def run(tabla,proc)
      #aqui podria ir el if loco de malledo
      @guardia.each_index{|x| @guardia[x].run(tabla,proc);if (@guardia[x].val) then @instruccion[x].run(tabla,proc);break;return; end}
   end
end

# Arbol para procedimientos
class ASTProc < ASTStmt
@variables
@nombre
   def initialize(n, v)
      @variables=v
      p v
      @nombre=n
      p n
   end
   
   def check(tabla,proc)
      unless proc==nil then raise "un procedimiento no debe usar la tabla de ningun otro procedimiento" end
      temp_proc = tabla.findProc(@nombre)
      temp_proc.open
      check=temp_proc.getArbol.check(tabla,@nombre)
      temp_proc.close
      @variables.each {|x| check = check && x.check} # revisar que out sean variables. (in puede ser caulquier cosa)
      return check
   end

   def run(tabla,proc)
      unless proc==nil then raise "un procedimiento no debe usar la tabla de ningun otro procedimiento" end
      temp_proc = tabla.findProc(@nombre)
      temp_proc.open
      temp_tabla=temp_proc.getTable
      @variables.each_index{|i| x=temp_tabla.findInOut(i); if x.is_a?(SymIn) then @variables[i].run; x.setValue(@variables[i]) end}
      temp_proc.getArbol.run(tabla,@nombre)
      @variables.each_index{|i| 
         x=temp_tabla.findInOut(i)
         if x.is_a?(SymOut)
            v=@variables[i]
            if (v.is_a?(ASTId))
               ASTAssign.new([v.nombre,ASTNumber(x.getValueOut)]).run(tabla,nil)
            else
               ASTArrayAssign.new([v.nombre,v.indice,ASTNumber(x.getValueOut)]).run(tabla,nil)
            end
         end
      }
      temp_proc.close   
   end
end
