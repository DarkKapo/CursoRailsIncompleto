#juego piedra papel o tijera

#Variable que define el numero de jugador
jugadorNumero = 1

#Guarda la opcion que el jugador elije
jugador1Opcion = ""
jugador2Opcion = ""

opcion = 0

def mostrarMenu()
    puts "1) Piedra"
    puts "2) Papel"
    puts "3) Tijera"
    puts "4) Salir"
end

#Aqui se evaluan las opciones para definir el resultado
def jugar (jugador1Opcion, jugador2Opcion)
    #Si jugador 1 juega piedra
    if jugador1Opcion == "piedra"

        if jugador2Opcion == "piedra"
            return "Empate"
        elsif jugador2Opcion == "papel"
            return "Gana Jugador 2"
        elsif jugador2Opcion == "tijera"
            return "Gana jugador 1"
        else
            return "\nTenemos un error, reiniciar el juego porfavor"
        end
    
    #Si jugador 1 juega papel
    elsif jugador1Opcion == "papel"

        if jugador2Opcion == "piedra"
            return "Gana jugador 1"
        elsif jugador2Opcion == "papel"
            return "Empate"
        elsif jugador2Opcion == "tijera"
            return "Gana jugador 2"
        else
            return "\nTenemos un error, reiniciar el juego porfavor"
        end

    #Si jugador 1 juega tijera
    elsif jugador1Opcion == "tijera"

        if jugador2Opcion == "piedra"
            return "Gana jugador 2"
        elsif jugador2Opcion == "papel"
            return "Gana jugador 1"
        elsif jugador2Opcion == "tijera"
            return "Empate"
        else
            return "\nTenemos un error, reiniciar el juego porfavor"
        end

    #Si la opcion es distinta a las anteriores
    else
        return "\nTenemos un error, reiniciar el juego porfavor"
    end
end

#Valida la opcion
while opcion < 1 || opcion > 4
    puts "Turno jugador #{jugadorNumero}"
    puts "\n"
    mostrarMenu
    puts "\ningrese opcion"
    opcion = gets.to_i
    puts "\n"

    #Uso case para aprender a implementarlo

    case opcion
        #La descripcion del 'when 1' aplica a los demas when
        when 1 
            if jugadorNumero == 1
                #Asigna el elemento a jugar para el jugador 1
                jugador1Opcion = "piedra"
                #Cambiamos al jugador 2 para el siguiente ciclo
                jugadorNumero += 1
                #Reinicia opcion para que no salga del ciclo
                opcion = 0
            else
                #Asigna el elemento a jugar para el jugador 2
                jugador2Opcion = "piedra"
            end
        when 2 
            if jugadorNumero == 1
                jugador1Opcion = "papel"
                jugadorNumero += 1
                opcion = 0
            else
                jugador2Opcion = "papel"
            end
        when 3 
            if jugadorNumero == 1
                jugador1Opcion = "tijera"
                jugadorNumero += 1
                opcion = 0
            else
                jugador2Opcion = "tijera"
            end
        when 4 
            puts "\nFin del juego"
        else
            puts "Ingrese una opcion desde 1 hasta 4"
            puts "\n"
            opcion = 0
    end
end

#si selecciona opcion 4 el programa no debe evualar el juego
if opcion != 4
    puts "#{jugar(jugador1Opcion,jugador2Opcion)}"
end