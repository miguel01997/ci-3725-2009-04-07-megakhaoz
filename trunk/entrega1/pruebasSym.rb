#require 'AST.rb'
require 'SymTable.rb'
require 'Sym.rb'

#ast=AST.new('2','3','+')

variable=SymVar.new('a',3,2) #Ahora no se inicializa los valores
variable.setValue(10) # para setear el valor se usa esta funcion
variable2=SymVar.new('c',5,7)
variable2.setValue(15)
arreglo=SymArray.new('b',10,22,8) #ahora se inicializa con la cardinalidad del arreglo (todos en nil)
#procedimiento=SymProc.new('c',100,200,ast,SymTable.new)

tabla = SymTable.new
tabla.insert(variable)
tabla.insert(variable2)
tabla.insert(arreglo)
puts tabla
puts "\n\nINICIO DE PRUEBAS\n\n"
p tabla.findArray("b")
tabla.findArray("b").setValue(1,345)
tabla.findArray("b").setValue(2,4)
tabla.findArray("b").setValue(3,23)
tabla.findArray("b").setValue(7,234)
tabla.findArray("b").setValue(5,25)
tabla.findArray("b").setValue(6,6)
p tabla.findArray("b").getValue_at 2
p tabla.findArray("b")
p "hola"
p tabla.findArray("b").size