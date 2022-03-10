#Muestra una figura que el usuario seleccione

opcion = 0

def mostrarMenu()
    puts "\nSeleccione una figura"
    puts "\n1) Cuadrado"
    puts "2) Triángulo"
    puts "3) Pirámide"
    puts "4) Salir"
end

#Dibuja el contorno de un cuadrado de lado n
def cuadrado
    
    puts "\nIngrese dimension del cuadrado"
    n = gets.to_i

    #Valida que la dimension sea mayor a 1
    while n <= 1
        puts "\nIngrese dimension del cuadrado mayor a 1"
        n = gets.to_i
    end
    puts "\nDibujando cuadrado de lado #{n}"
    puts "\n"

    n.times do
        print "*"
        (n-1).times do
            print "*"
        end
        print "\n"
    end
    print "\n"
end

#Dibuja la mitad de un triangulo
def triangulo

    puts "\nIngrese altura del triángulo"
    n = gets.to_i

    #Valida que la altura del triangulo sea mayor a 1
    while n <= 1
        puts "\nIngrese altura del triángulo mayor a 1"
        n = gets.to_i
    end

    puts "\nDibujando triángulo de altura #{n}"
    puts "\n"

    for i in(1..n)
        puts "*" * i
    end
    print "\n"
end

#Dibuja una pirámide
def piramide

    puts "\nIngrese dimension de la pirámide"
    n = gets.to_i

    #Valida que la altura del pirámide sea mayor a 1
    while n <= 1
        puts "\nIngrese dimension de la pirámide mayor a 1"
        n = gets.to_i
    end

    puts "\nDibujando pirámide de dimension #{n}"
    puts "\n"

    for i in(1..n-1)
        puts "*" * i
    end

    for i in (0..n-1)
        puts "*" * (n-i)
    end
    print "\n"
end

#Valida la opcion ingresada
while opcion < 1 || opcion > 4
    mostrarMenu
    puts "\ningrese opcion"
    opcion = gets.to_i
    if opcion < 1 || opcion > 4
        puts "\nError, elija una opcion entre 1 hasta 4"
    end
end

#depende la opcion es la accion que realiza el programa
case opcion
    when 1
        cuadrado
    when 2
        triangulo
    when 3
        piramide
    when 4
        puts "\nSaliendo del menu..."
        print "\n"
    else
        puts "Error en la opcion, reiniciar programa"
end

#Muestra mensaje despues de dibujar
if opcion >= 1 || opcion <= 4
    puts "Programa finalizado"
end