module Habilidades
    module Volador
        def volar
            'Estoy volandooooo!'
        end

        def aterrizar
            'Estoy cansado de volar, voy a aterrizar'
        end
    end

    module Nadador
        def nadar
            'Estoy nadando!'
        end

        def sumergir
            'glu glub glub glu'
        end
    end

    module Caminante
        def caminar
        'Puedo caminar!'
        end
    end
end

module Alimentacion
    module Herbivoro
        def comer
            'Puedo comer plantas!'
        end
    end

    module Carnivoro
        def comer
            'Puedo comer carne!'
        end
    end
end

class Animal
    attr_accessor :nombre

    def initialize(nombre)
        @nombre = nombre
    end
    
    include Habilidades::Caminante
    include Alimentacion::Herbivoro
end

class Ave < Animal
    include Habilidades::Volador
    include Habilidades::Nadador
    include Alimentacion::Carnivoro
end

class Mamifero < Animal
    include Habilidades::Nadador
    include Alimentacion::Carnivoro
end

class Insecto < Animal
    include Habilidades::Volador
end

class Pinguino < Ave
    def volar
        print "no puede volar"
    end

    def aterrizar
        print "Si no puedo volar...menos se aterrizar!"
    end

    pin = Pinguino.new('Pingu')
end

class Paloma < Ave
    def nadar
        print "No se nadar"
    end

    def comer
        'Puedo comer plantas!'
    end

    pal = Paloma.new("Palomo")
end

class Pato < Ave
    def comer
        print "Puedo comer de todo"
    end

    pato = Pato.new("Lucas")
end

class Perro < Mamifero
    perro = Perro.new("Kayser")
end

class Gato < Mamifero
    def nadar
        print "No me gusta nadar!"
    end

    gato = Gato.new("Reimy")
end

class Vaca < Mamifero
    def comer
        print "Puedo comer plantas!"
    end

    vaca = Vaca.new("Miltank")
end

class Mosca < Insecto
    def comer
        print "Puedo comer de todo!"
    end

    mosca = Mosca.new("Moscú")
end

class Mariposa < Insecto
    mari = Mariposa.new("Butterfly")
end

class Abeja < Insecto
    abeja = Abeja.new("Queen Bee")
end