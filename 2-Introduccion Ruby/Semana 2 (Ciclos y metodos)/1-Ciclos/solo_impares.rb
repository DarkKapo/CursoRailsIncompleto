#Muestra n primeros impares

cantidadImpares = ARGV[0].to_i
contador = 0

while cantidadImpares > 0
#   verifica si contador es impar
    if !(contador.even?)
        cantidadImpares -= 1
        print "#{contador} "
        contador += 1
    else
        contador += 1
    end
end
print"\n"