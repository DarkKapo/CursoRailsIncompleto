#Muestra por pantalla todas las ventas sobre 45.000

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


#Muestra las venta sobre valor de filter
def muestraVentas (hash, filter)
    #array de retorno
    arrayFinal = []

    hash.each do |mes, venta|
        arrayFinal.push venta if venta > filter
    end 
    return arrayFinal 
end

filtro = 45000

puts
print muestraVentas ventas, filtro
print "\n\n"
