require 'AST.rb'
require 'SymTable.rb'
require 'Sym.rb'

#ast=AST.new('2','3','+')

variable=SymVar.new('a',3,2)
variable.setValue(10)
variable2=SymVar.new('c',3,2)
variable2.setValue(5)
arreglo=SymArray.new('b1',10,22,9) #ahora se inicializa con la cardinalidad del arreglo (todos en nil)
#procedimiento=SymProc.new('c',100,200,ast,SymTable.new)
arreglo.setValue(0,2)

tabla = SymTable.new
tabla.insert(variable)
tabla.insert(variable2)
tabla.insert(arreglo)
puts tabla

arbol= ASTMainBlock.new()

arbolM00=ASTMathOp.new(ASTArraySize.new("b1"),ASTNumber.new(1),'-')
arbolM01=ASTMathOp.new(arbolM00,ASTArrayId.new("b1",ASTNumber.new(0)),'/')
show00= ASTShow.new(arbolM01)

arbol.add(show00)
p "hola"
arbol.run(tabla)
