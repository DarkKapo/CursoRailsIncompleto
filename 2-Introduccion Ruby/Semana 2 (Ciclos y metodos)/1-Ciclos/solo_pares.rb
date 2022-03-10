#Muestra n primeros pares

cantidadPares = ARGV[0].to_i
contador = 0

while cantidadPares > 0
#   Verifica si el contador es par
    if contador.even?
        cantidadPares -= 1
        print "#{contador} "
        contador += 1
    else
        contador += 1
    end
end
print"\n"