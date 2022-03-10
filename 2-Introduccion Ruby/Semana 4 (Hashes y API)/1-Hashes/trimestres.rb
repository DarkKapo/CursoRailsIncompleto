#Devuelve un Hash con la suma de las ventas trimestrales

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

require 'enumerator'

#Metodo que suma los datos de un array dentro de otro array
def sumarArray(array)
    sum = 0

    array.count.times do |i|
        array[i].count.times do |j|
            if array[i][j].class == Integer
                sum += array[i][j]
            end
        end
    end
    return sum
end
#Crear la variable y usar método each_slice
arrayRespaldo = []
arrayRespaldo = ventas.each_slice(3).to_a { |a| p a }

#Array que guarda la suma de las ventas trimestrales (valor en el Hash)
arraySumaTrimestre = []

arrayRespaldo.count.times do |i|
    arraySumaTrimestre.push sumarArray arrayRespaldo[i]
end

#Array que guarda los Q trimestrales (clave en el Hash)
arrayQs = []

arrayRespaldo.count.times do |i|
    arrayQs.push "Q#{i + 1}"
end

#Juntar los 2 arrays en un Hash
hashFinal = {}

hashFinal = arrayQs.zip(arraySumaTrimestre).to_h

print hashFinal
puts
