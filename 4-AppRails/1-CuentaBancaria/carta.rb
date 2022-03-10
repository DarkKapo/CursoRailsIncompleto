#Crea clase carta
class Carta
    #agregar getter y setter
    attr_accessor :numero, :pinta

    #Constructor
    def initialize(numero, pinta)
        @numero = numero
        @pinta = pinta
    end
end

pintas =['C', 'D', 'E', 'T']
arrayCard = []

for i in 0..4
    arrayCard[i] = Carta.new(Random.rand(1..13), pintas.sample)
    print arrayCard[i].numero, arrayCard[i].pinta
    puts
end
