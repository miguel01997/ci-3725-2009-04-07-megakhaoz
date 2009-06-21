class AST
   @izq
   @der
   @op
   @val
   
   attr_reader :izq, :der, :op, :val
   
   def initialize a, b, c
      @izq=a
      @der= b
      @op= c
   end
   
   def check
   end
   
   def run
   end
end

class ASTMath < AST
   
   def check
   end
   
   def run
      @val=eval(@izq<<@op<<@der)
   end
end

class ASTBool < AST

   def check
   end
   
   def run
      @val=eval(@izq<<@op<<@der)
   end
end

class ASTStmt < AST

   def check
   end
   
   def run
   end
end

pr = ASTMath.new('3','17','<')
p pr.run