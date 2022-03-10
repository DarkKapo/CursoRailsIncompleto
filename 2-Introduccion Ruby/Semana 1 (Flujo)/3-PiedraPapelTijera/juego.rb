#Juego Piedra, Papel o Tijera

player1 = ARGV[0]

#If que comprueba si la palabra es valida
if player1 == 'piedra' || player1 == 'papel' || player1 == 'tijera'
    #Inicio juego
    computador = rand(3)

    #Caso cuando computador juega piedra
    if computador == 0
        puts "Computador juega piedra"

        if player1 == 'piedra'
            puts "Empataste"
        elsif player1 == 'papel'
            puts "Ganaste"
        else
            puts "Perdiste"
        end
    
    #Caso cuando computador juega papel
    elsif computador == 1
        puts "Computador juega papel"

        if player1 == 'piedra'
            puts "Perdiste"
        elsif player1 == 'papel'
            puts "Empataste"
        else
            puts "Ganaste"
        end
    
    #Caso cuando computador juega tijera
    else
        puts "Computador juega tijera"

        if player1 == 'piedra'
            puts "Ganaste"
        elsif player1 == 'papel'
            puts "Perdiste"
        else
            puts "Empataste"
        end
    end
    #Fin modo juego
else
    #Mensaje si el dato ingresado no es valido
    puts "Argumento invalido: Debe ser piedra, papel o tijera"
end