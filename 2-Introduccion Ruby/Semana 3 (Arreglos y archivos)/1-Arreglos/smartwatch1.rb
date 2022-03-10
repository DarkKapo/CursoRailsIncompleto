#Filtra los datos de un smartwatch
#Se considera que los datos entregados por el SmartchWatch siempre es un String, caso contrario el programa falla

pasos = ['100', '21', '231as', '200', '2031', '1052000', '213b', '100001','b123', '599', 'T345', '100000']

def clear_steps (array)
    #Respaldo para comparar con original
    arrayRespaldo = []
    #Array final
    arrayFinal = []

    n = array.length
    
    #Aplicamos el primer filtro
    n.times do |i|
        #Guardar los datos en el nuevo arreglo
        arrayRespaldo[i] = array[i]

        #Transformar a INT el array y guardar
        arrayRespaldo[i] = arrayRespaldo[i].to_i

        #Transforma arrayRespaldo a string para poder comparar los largos
        arrayRespaldo[i] = arrayRespaldo[i].to_s

        #filtro: guardar los datos del mismo largo
        if arrayRespaldo[i].length == array[i].length
            arrayFinal[i] = arrayRespaldo[i]
        end
    end

    #Segundo filtro, quitamos del arrayFinal los datos que no quedaron como string
    arrayFinal = arrayFinal.select! { |x| x.class == String}

    #Tercer filtro, quitar los valores menores a 200 y mayores a 100.000

    #Pasar el array a números
    arrayFinal = arrayFinal.map! { |x| x.to_i}

    #Filtrar
    arrayFinal = arrayFinal.reject! { |x| x < 200 || x > 100000 }

    return arrayFinal
end

print clear_steps pasos
puts