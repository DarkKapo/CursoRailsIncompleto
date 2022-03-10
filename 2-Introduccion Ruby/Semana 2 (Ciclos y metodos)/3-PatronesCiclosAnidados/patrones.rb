#Programa que dibuja variados patrones

def letra_o(n)
    
    #Analiza el valor de n
    if n < 2
        print "\nDimension desconocida ... "
        n = 3
        print "Asignando dimension por defecto (#{n}) ..."
        print "\n"
    end

    puts "\nDibujando letra O"
    print "\n"

    #Dibuja letra 0 usando una matriz
    n.times do |i|
        n.times do |j|
            if i == 0 || j == 0 || i == n - 1 || j == n - 1
                print "*"
            else
                print " "
            end
        end
        print "\n"
    end
end

def letra_i(n)

    #Analiza valor de n

    if n <= 2
        print "\nDimension desconocida ... "
        n = 3
        print "Asignando dimension por defecto (#{n}) ..."
        print "\n"
    elsif n % 2 == 0
        print "\nNumero par ... disminuyendo 1 dimension"
        n -= 1
        print "\n\nNueva dimension = #{n}"
    end

    puts "\n\nDibujando letra I"
    print "\n"

    n.times do |i|
        n.times do |j|
            if i == 0 || i == n - 1 || j == n / 2
                print "*"
            else
                print " "
            end
        end
        print "\n"
    end

end

def letra_z(n)

    #Analiza valor de n

    if n <= 3
        print "\nDimension desconocida ... "
        n = 4
        print "Asignando dimension por defecto (#{n}) ..."
        print "\n"
    end

    puts "\n\nDibujando letra Z"
    print "\n"

    n.times do |i|
        n.times do |j|
            if i == 0 || (i + j) == n - 1 || i == n - 1
                print "*"
            else
                print " "
            end
        end
        print "\n"
    end
end

def letra_x(n)

    #Analiza el valor de n
    if n <= 2
        print "\nDimension desconocida ... "
        n = 3
        print "Asignando dimension por defecto (#{n}) ..."
        print "\n"
    end

    puts "\nDibujando letra X"
    print "\n"

    #Dibujo de la X
    n.times do |i|
        n.times do |j|
            if (i + j) == (n - 1) || i == j
                print "*"
            else 
                print " "
            end
        end
        print "\n"
    end
end

def numero_cero(n)

    #Analiza el valor de n
    if n <= 3
        print "\nDimension desconocida ... "
        n = 4
        print "Asignando dimension por defecto (#{n}) ..."
        print "\n"
    end

    puts "\nDibujando numero 0"
    print "\n"

    n.times do |i|
        n.times do |j|
            if i == 0 || i == n - 1 || j == 0 || j == n - 1 || i == j
                print "*"
            else
                print " "
            end
        end
        print "\n"
    end
end

#Los proximos 3 metodos dibujan el arbol
def piramide (n)
    puts "\nDibujando arbol"
    print "\n"

    #Simbolo para dibujar el arbol
    caracter = "*"
    #Variable que va dibujando el arbol fila por fila
    base = caracter
    
    #Dibujamos la "piramide" del arbol
    for i in 1..n
        puts " " * (n - i) + base
        #En cada ciclo, debemos aumentar en 2 el caracter
        base += caracter * 2
    end
end

def tronco (n)
    #Dibuja el tronco, 2*n-1 es la cantidad de asteriscos que tiene la base de la piramide
    
    (n - 1).times do |i|
        (2*n - 1).times do |j|
            if j == ((2*n - 1) / 2)
                print "*"
            else
                print " "
            end
        end
        print "\n"
    end
end

def base (n)
    #Dibuja la base del arbol
    
    print " "
    print "*"*(2*n - 3)
    print "\n"
end

def mostrarMenu
    puts 'Menú: '
    puts '1) Dibujar letra O'
    puts '2) Dibujar letra I'
    puts '3) Dibujar letra Z'
    puts '4) Dibujar letra X'
    puts '5) Dibujar numero 0'
    puts '6) Dibujar arbol de navidad'
    puts '7) Salir'
end

#Inicia variable opcion
opcion = 0

#while que valida la opcion
while opcion < 1 || opcion > 7
    
    mostrarMenu
    
    puts "\nIngrese una opcion"
    opcion = gets.to_i

    if opcion < 1 || opcion > 7
        puts "\nError, ingrese un valor entre 1 hasta 7"
        puts "\n"
    end
end

case opcion
    when 1
        puts "\nIngrese dimension de la letra (si es incorrecta, se dibuja la letra por defecto)"
        dimension = gets.to_i
        letra_o dimension
    when 2
        puts "\nIngrese dimension de la letra (si es incorrecta, se dibuja la letra por defecto)"
        dimension = gets.to_i
        letra_i dimension
    when 3
        puts "\nIngrese dimension de la letra (si es incorrecta, se dibuja la letra por defecto)"
        dimension = gets.to_i
        letra_z dimension
    when 4
        puts "\nIngrese dimension de la letra (si es incorrecta, se dibuja la letra por defecto)"
        dimension = gets.to_i
        letra_x dimension
    when 5
        puts "\nIngrese dimension del numero 0 (si es incorrecta, se dibuja numero por defecto)"
        dimension = gets.to_i
        numero_cero dimension
    when 6
        puts "\nIngrese dimension del arbol (si es incorrecta, se dibuja el arbol por defecto)"
        dimension = gets.to_i
        if dimension <= 2
            print "\nDimension desconocida ... "
            dimension = 3
            print "Reiniciando dimension a valor #{dimension}"
            print "\n"
        end
        piramide dimension
        tronco dimension
        base dimension
    when 7
        puts "\nSaliendo del menu..."
    else
        puts "Error, reinicie el programa porfavor"
end

puts "\nFin del programa"