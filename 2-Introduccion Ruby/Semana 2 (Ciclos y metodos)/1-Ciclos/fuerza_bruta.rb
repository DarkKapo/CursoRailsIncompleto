#Programa que calcula cuantos intentos se necesita para hackear un password por fuerza bruta
#iterar manualmente hasta conseguir el largo de la palabra

#Captura el password ingresado por el usuario
password = ARGV[0]
#Calcula el largo del password
passsize = password.size
#Variable para adivinar el password
passForce = "a"
#Variable para romper el ciclo
passForceSize = passForce.size
#Acumulador de intentos
try = 0

#While se ejecuta mientras el largo de ambas palabras sea igual o llegue al break si las palabras son iguales
while passForceSize <= passsize
    if passForce != password
        passForce = passForce.next
        try += 1
    elsif passForce == password
        puts "Password = #{passForce}"
        break
    end
    passForceSize = passForce.size
end

puts "Cantidad de intentos = #{try}"