#Muestra n primeros pares, el numero 0 no es par

cantidadPares = ARGV[0].to_i
contador = 1

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