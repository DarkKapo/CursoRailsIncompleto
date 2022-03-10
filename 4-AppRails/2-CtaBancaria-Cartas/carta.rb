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