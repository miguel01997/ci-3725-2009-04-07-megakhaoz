#!/usr/bin/env ruby
=begin
=end
class Token
  @linea # Contiene el archivo abierto
  @col # Contiene la linea de archivo que se esta analizando
  @value # Contiene los tokens encontrados hasta el momento
  
  # se inicializa el lexer con "prog_fn" como el nombre del archivo a leer
  def initialize(linea, col, value)
    @linea=linea
    @col = col
    @value = value
  end
end

if __FILE__ ==$0
  puts "hola mundo, soy la clase Token"
end
