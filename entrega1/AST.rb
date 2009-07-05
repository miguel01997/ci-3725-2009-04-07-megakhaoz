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
   def check(tabla)
		return true
   end
   
   def run(tabla)
   end
end

# AST para guardar identificadores.
class ASTId < ASTMath
	@nombre
	attr_accessor :nombre
	
	def initialize(c)
		@nombre=c
   end
	
	def check(tabla)
		if tabla.find(@nombre)==nil then return nil 
		else return true
		end
	end

	def run(tabla)
		@val= tabla.find(@nombre).getValue
	end
end

# AST para obtener el tamanyo de un arreglo.
class ASTArraySize < ASTMath
	@nombre
	attr_accessor :nombre
	
	def initialize(c)
		@nombre=c
   end
	
	def check(tabla)
		if tabla.findArray(@nombre)==nil then return nil 
		else return true
		end
	end

	def run(tabla)
		@val= tabla.find(@nombre).size()
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
	
	def check(tabla)
		if tabla.findArray(@nombre)==nil then return nil 
		else return @indice.check(tabla)
		end
	end

	def run(tabla)
      @indice.run(tabla)
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
	
   def check(tabla)
		return (@izq.check(tabla) && @der.check(tabla)) 
   end
   
   def run(tabla)
		if @izq.is_a?(ASTMath) then @izq.run(tabla) end
		if @der.is_a?(ASTMath) then @der.run(tabla) end
		op1=@izq
		op2=@der
		
      @val=eval(op1.to_s<<@op<<op2.to_s)
  end
end

class ASTBool < AST
end

class ASTBoolCte < ASTBool
   def check(tabla)
		return true
   end
   
   def run(tabla)
   end
end

class ASTBoolNeg < ASTBool
	@expr
	attr_accessor :expr
	
	def initialize(c)
		unless ( c.is_a?(ASTBool) ) then raise ArgumentError, "Solo puede aplicarse negacion a una expresion logica." end
      @nombre=c
   end
   def check(tabla)
		return @nombre.check(tabla)
   end
   
   def run(tabla)
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

   def check(tabla)
		return (@izq.check(tabla) && @der.check(tabla)) 
   end
   
   def run(tabla)
		if (@izq.is_a?(ASTBool) || @izq.is_a?(ASTMath)) then @izq.run(tabla) end
		if (@der.is_a?(ASTBool) || @der.is_a?(ASTMath)) then @der.run(tabla) end
      
		op1=@izq
		op2=@der
		
      @val=eval(op1.to_s<<@op<<op2.to_s)

   end
end

class ASTStmt < AST
end

# Arbol para la instruccion skip
class ASTSkip < ASTStmt

   def check(tabla)
		return true
   end
   
   def run(tabla)
   end
end

# Arbol para la instruccion show
class ASTShow < ASTStmt
   def check(tabla)
		return true
   end
   
   def run(tabla)
		if @val.is_a?(ASTMath) then @val.run(tabla) end 
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
	
	def check(tabla)
		if tabla.findVar(@nombre)==nil then return nil 
		else return @asignacion.check(tabla)
		end
	end

	def run(tabla)
      @asignacion.run(tabla)
		@val= tabla.findVar(@nombre).setValue(@asignacion.val)
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
	
	def check(tabla)
		if tabla.findVar(@nombre)==nil then return nil 
		else return @asignacion.check(tabla) && @indice.check(tabla) 
		end
	end

	def run(tabla)
      @asignacion.run(tabla)
		@val= tabla.findArray(@nombre).setValue(@indice.val,@asignacion.val)
	end
end

# Arbol para la instruccion  bloque
class ASTBlock < ASTStmt

   @instrucciones
	attr_accessor :instrucciones
	
	def initialize()
		@instrucciones=[]
   end
	
	def add(a)
		@instrucciones<<a
	end
	
	def check(tabla)
		return @instrucciones.each{|x| print x, " -- " }
	end

	def run(tabla)
     @instrucciones.each{|x| x.run(tabla)}
	end
end

# Arbol para la instruccion  bloque principal
class ASTMainBlock < ASTStmt

   @instrucciones
	attr_accessor :instrucciones
	
	def initialize()
		@instrucciones=[]
   end
	
	def add(a)
		@instrucciones.push(a)
	end
	
	def check(tabla)
		return @instrucciones.each{|x| print x, " -- " }
	end

	def run(tabla)
     @instrucciones.each{|x| x.run(tabla)}
	end
	
	def to_s
		@instrucciones.size.to_s
	end
end

# Arbol para la instruccion  repeticion
class ASTRepeat < ASTStmt
end

# Arbol para la instruccion seleccion  
class ASTSelect < ASTStmt
end

# Arbol para procedimientos
class ASTProc < ASTStmt
end
