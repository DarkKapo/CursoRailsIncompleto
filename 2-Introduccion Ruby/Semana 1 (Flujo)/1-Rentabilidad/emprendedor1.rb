#puts "Ingrese el precio"
precio = ARGV[0].to_i

#puts "Ingrese el numero de usuarios"
usuarios = ARGV[1].to_i

#puts "Ingrese los gastos"
gastos = ARGV[2].to_i

#calculo de utilidades
utilidades = precio*usuarios-gastos

if utilidades > 0
    puts "Las utilidades son de #{utilidades}"
else
    puts "No tiene utilidades"
end