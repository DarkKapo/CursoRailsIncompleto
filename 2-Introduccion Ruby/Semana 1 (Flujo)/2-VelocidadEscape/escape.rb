#ingreso de datos
gravedad = ARGV[0].to_f
radio = ARGV[1].to_f

#calculo de Ve
velEscape = Math.sqrt(2*gravedad*radio*1000)

#Reduccion a 1 decimal
velEscape = velEscape.floor(1)

puts "Velocidad de escape es #{velEscape} mts/s"