#Calcula el promedio de 2 array y devuelve el promedio mayor

#Definir ambos array
numeros = [200, 500, 300, 200]
numeros1 = [1000, 400]

def compara_array (array1, array2)
    #Calcula el promedio y devuelve el mayor

    #Calcula el largo de los arays
    linesA1 = array1.count
    linesA2 = array2.count

    acumuladorA1 = 0
    acumuladorA2 = 0

    promedioA1 = 0
    promedioA2 = 0

    #Sumar valores de los arrays
    linesA1.times do |i|
        acumuladorA1 += array1[i]
    end

    linesA2.times do |i|
        acumuladorA2 += array2[i]
    end

    promedioA1 = acumuladorA1 / linesA1
    promedioA2 = acumuladorA2 / linesA2

    #Evalúa los promedios
    if promedioA1 > promedioA2
        return promedioA1
    elsif promedioA2 > promedioA1
        return promedioA2
    end

    return 0
end

resultado = compara_array numeros, numeros1

if resultado == 0
    puts "Los promedio son iguales"
else
    puts "Promedio más alto = #{resultado}"
end