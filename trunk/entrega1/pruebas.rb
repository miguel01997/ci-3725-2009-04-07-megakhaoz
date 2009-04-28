def bloqueComment()
  @texto[@texto[0,2]]="" #quito la primera "{#"
  x=@texto=~/#\}/ # busco donde se encuentra el proximo "#}"
  @texto[@texto[0,x+2]]="" # elimino todo el comentario incluyendo los "{#" y "#}"
  nil
end

@texto="{#
  fhewioaewf
nfhfw
h#}     hola"
puts @texto
bloqueComment()
puts "==========="
puts @texto

