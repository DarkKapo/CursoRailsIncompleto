#Devuelve un Hash con un filtro ingresado por usuario

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

#Devuelve un hash con el filtro agregado por el usuario
def filter (hash, uFilter)
    #Define el hash a retornar
    hashFilter = {}

    hash.each do | mes, venta |
        hashFilter[mes] = venta if venta > uFilter
    end
    return hashFilter
end

#Transforma a entero para poder comparar
vFilter = ARGV[0].to_i

puts
print "#{filter ventas, vFilter}"
print "\n\n"