#Programa que filtra un dato ingresado por el usuario y guarde el resultado en un archivo

#Dato a filtrar
filtro = ARGV[0].to_i

def filtrarDatos (array, filter)
    #trabajar con un respaldo del archivo original
    dataRespaldo = array

    #Transformar los datos a entero
    dataRespaldo = dataRespaldo.map { |x| x.to_i}

    procesos_filtrados = File.open('procesos_filtrados.data', "w")
        #Filtrar según criterio
        dataRespaldo = dataRespaldo.select { |x| x > filter }
        lines = dataRespaldo.count

        #Guarda los datos en el archivo
        lines.times do |i|
            procesos_filtrados << dataRespaldo[i].to_s + "\n"
        end
end

if ARGV.empty?
    puts "Filtro equivocado"
else
    #Abrir el archivo
    data = File.open('procesos.data').readlines

    filtrarDatos data,filtro
    
end