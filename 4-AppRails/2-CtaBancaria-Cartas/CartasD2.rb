require_relative 'carta.rb'
require_relative 'bajaras.rb'

#Crea el array que guarda las cartas de la baraja
naipe = []

#Crea la baraja
b = Baraja.new(naipe)

#Mezcla la baraja
b.bajarar

#Entrega las 5 primeras cartas
print "Mano\n"
puts
b.repartir