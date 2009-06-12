#clase para la tabla de simbolos
class SymTable
   @table
   
	def initialize
      @table={}
	end
   
   def insert(symbol) # retornando el Symbol recien insertado o nil.
      name=symbol.name
      if (self.find(name)) then raise "El simbolo de nombre '#{name}' ya existe" end
      @table[name]=symbol
   end
   
   def find(string) # retornando el Symbol encontrado o nil.
      @table[string]
   end
   
   def delete(string) # retornando el Symbol eliminado o nil.
      @table.delete(string)
   end
end
