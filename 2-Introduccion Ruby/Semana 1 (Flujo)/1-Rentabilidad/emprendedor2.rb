#Precio
precio = ARGV[0].to_i

#Usuarios totales
usuarioTotal = ARGV[1].to_i

#Uuarios premium
usuariosPremium = ARGV[2].to_i

#Usuarios gratuitos
usuariosGratis= ARGV[3].to_i

#Gastos
gastos = ARGV[4].to_i

#Calculo de utilidades
utilidades = (precio*2*usuariosPremium*usuarioTotal) - gastos


if utilidades > 0
    puts "Las utilidades sin impuestos equivale a: #{utilidades}"
    #Calcula las utilidades con el impuesto
    utilidadesImp = utilidades*0.65
    utilidadesImp = utilidadesImp.to_i
    puts "Las utilidades con impuestos equivale a: #{utilidadesImp}"
else
    puts "No tiene utilidades"
end