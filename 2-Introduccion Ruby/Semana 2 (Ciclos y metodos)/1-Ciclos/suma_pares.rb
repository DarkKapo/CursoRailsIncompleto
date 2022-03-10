#Suma los primeros n pares ingresado por usuario

cantidadPares = ARGV[0].to_i
contador = 1
#Acumulador
sumaPares = 0

while cantidadPares > 0
#   Verifica si contador es par    
    if contador.even?
        cantidadPares -= 1
        sumaPares += contador
        contador += 1
    else
        contador += 1
    end
end
print "La suma es #{sumaPares}"
print"\n"