#Devuelve el mes correspondiente al valor ingresado
ventas = {
            Enero: 15000,
            Febrero: 22000,
            Marzo: 12000,
            Abril: 17000,
            Mayo: 81000,
            Junio: 13000,
            Julio: 21000,
            Agosto: 41200,
            Septiembre: 25000,
            Octubre: 21500,
            Noviembre: 91000,
            Diciembre: 21000
         }

def buscarMes(hash,filter)
    #Variable que controla el mensaje "no encontrado"
    verificador = 0
    hash.each do |mes, venta|
        if venta == filter
            puts mes 
            #Si el filtro se encuentra, se cambia el verificador
            #Para que no imprima "no encontrado"
            verificador = 1
        end
    end
    #Si no encuentra el filtro, imprime "no encontrado"
    puts "no encontrado" if verificador == 0
end

#Iterador para cada valor ingresado por consola
ARGV.count.times do |i|
    #Inovoca al método con el hash y filtro
    buscarMes ventas,ARGV[i].to_i
end