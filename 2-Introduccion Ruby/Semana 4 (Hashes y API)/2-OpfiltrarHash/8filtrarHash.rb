#Devuelve en otro hash los datos filtrados

ventas = {
            Octubre: 65000,
            Noviembre: 68000,
            Diciembre: 72000
        }

nuevas_ventas = {}

def filtrado (hash)
    hashFiltrado = {}

    hash.each do |mes, v|
        if v < 70000
            hashFiltrado[mes] = v
        end
    end
    return hashFiltrado
end

print "#{filtrado ventas}"
puts