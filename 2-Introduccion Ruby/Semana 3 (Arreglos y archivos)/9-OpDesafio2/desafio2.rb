nombres = ['Violeta', 'Andino', 'Clemente', 'Javiera', 'Paula', 'Pía', 'Ray']

#Obetener los elementos que excedan 5 caracteres con select

resultado = nombres.select { |c| c.length > 5 }

print resultado
print "\n"

#Cambiar las letras mayúaculas a minúsculas con map

resultado = nombres.map { |c| c.downcase }
print resultado
print "\n"

#Muestra nombres que inician con P, usando select

resultado = nombres.select { |c| c[0] == 'P' }

print resultado
print "\n"

#Contar los elementos que empiezan con A, B 0 C
 resultado = nombres.count { |x| x[0] == 'A' || x[0] == 'B' || x[0] == 'C' }

print resultado
print "\n"

#Guarda la cantidad de letras de cada nombre con map

resultado = nombres.map { |c| c.length }

print resultado
print "\n"