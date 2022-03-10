require_relative 'carta.rb'

class Baraja
    attr_accessor :cartas
    #Constructor, crea todas las cartas pedidas
    def initialize(cartas)
        pintas = ['C', 'D', 'E', 'T']
        for i in 0..3
            for j in 0..12
                @cartas = cartas.push(Carta.new(j + 1, pintas[i]))
            end
        end
    end

    #Muestra la baraja
    def mostrarBaraja
        @cartas.each {|carta| print "#{carta.numero}#{carta.pinta}\n"}
    end

    #Desordena la baraja
    def bajarar
        @cartas.shuffle!
    end

    #Saca la primera carta
    def sacar
        carta = @cartas.pop
        print "#{carta.numero}#{carta.pinta}\n"
    end
    
    #Entrega 5 cartas
    def repartir
        for i in 0..4
            sacar
        end
    end
end