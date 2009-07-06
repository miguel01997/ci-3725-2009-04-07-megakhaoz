#clase para la tabla de simbolos
class SymTable
   @tablaVar
   @tablaArray
   @tablaProc
   
	def initialize
      @tablaVar={}
      @tablaArray={}
      @tablaProc={}

	end
	
	def to_s
		text="TABLA DE SIMBOLOS {\n.\n"
      text.concat(".  VALUES {\n")
	   @tablaVar.each do |x,y| text.concat(".  .  #{y}\n")end
      text.concat(".  }\n")
      text.concat(".\n.  ARRAY {\n")
	   @tablaArray.each do |x,y| text.concat(".  .  #{y}\n")end
      text.concat(".  }\n")
      text.concat(".\n.  PROC {\n")
	   @tablaProc.each do |x,y| text.concat(".  .  #{y}\n")end
      text.concat(".  }\n}")
		return text
   end
   
   def insertVars(a,b) # inserta una lista de variables en la tabla (int/array)
      if b<0 
         a.each do |x| insert(SymVar.new(x.value,x.line,x.col)) end 
      else
         a.each do |x| insert(SymArray.new(x.value,x.line,x.col,b)) end 
      end
   end

   def insertProc(id,par,var,ins) # inserta un procedimiento en la tabla
      t=SymTable.new()
      par.each {|x| if x[0] then t.insert(SymIn.new(x[1].value,x[1].line,x[1].col)) else t.insert(SymOut.new(x[1].value,x[1].line,x[1].col)) end}
      var.each {|x| t.insertVars(x[0],x[1])}
      insert(SymProc.new(id,0,0,ins,t))
   end
	
   def insert(symbol) # retornando el Symbol recien insertado o nil.
      name=symbol.nombre
      txterror="El simbolo de nombre '#{name}' ya existe"
      if symbol.is_a?(SymVar)
         if (self.findVar(name)) then txterror["simbolo"]="Valor Simple"; raise txterror end
         @tablaVar[name]=symbol
      end
      if symbol.is_a?(SymArray)
         if (self.findArray(name)) then txterror["simbolo"]="Arreglo"; raise txterror end
         @tablaArray[name]=symbol
      end
      if symbol.is_a?(SymProc)
         if (self.findProc(name)) then txterror["simbolo"]="Procedimiento"; raise txterror end
         @tablaProc[name]=symbol
      end
   end
   
   def find(string) # DEPRECATED retornando true en caso que exista al menos un elemento con ese nombre)
      return (findVar(string) || findArray(string) || findProc(string))
   end
   
   def findVar(string) # retornando el Symbol encontrado o nil.
      return @tablaVar[string]
   end
   
   def findArray(string) # retornando el Symbol encontrado o nil.
      return @tablaArray[string]
   end
   
   def findProc(string) # retornando el Symbol encontrado o nil.
      return @tablaProc[string]
   end
   
   def deleteVar(string) # retornando el Symbol eliminado o nil.
      @tableVar.delete(string)
   end
   
   def deleteArray(string) # retornando el Symbol eliminado o nil.
      @tableArray.delete(string)
   end
      def deleteProc(string) # retornando el Symbol eliminado o nil.
      @tableProc.delete(string)
   end
   
   
   
end
