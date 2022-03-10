#Calcula el promedio de visitas diarias de una página

#arreglo que contiene los datos
visitas = [1000, 800, 250, 300, 500, 2500]

def promedio (array)
    #Calcula el promedio
    lines = array.count
    acumulador = 0

    lines.times do |i|
        acumulador += array[i]
    end
    
    return acumulador/lines
end

puts "Promedio = #{promedio visitas}"