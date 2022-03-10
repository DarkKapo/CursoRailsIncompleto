a = [1, 9 ,2, 10, 3, 7, 4, 6]

#sumar 1 a cada elemento con map

b = a.map { |x| x + 1 }

print b
print "\n"

#convertir los datos a float con map
b = a.map { |n| n.to_f}

print b
print "\n"

#descartar elementos menores a 5 con select

b = a.select { |x| x >= 5}

print b
print "\n"

#sumar los valores del array con inject

b = a.inject {|sum, x| sum + x}

print b
print "\n"

#contar los elementos menores que 5 con count

b = a.count { |x| x < 5}

print b
print "\n"