#Calcula proyecciones de ventas

#Abrir Archivo, split es para transformar a un arreglo
baseDatos = File.open('ventas_base.db').read.split(',')

#Transformar a float
baseDatosRespaldo = baseDatos.map { |x| x.to_f }

#dividir el arreglo en 2 partes
lines = baseDatosRespaldo.count

#Variables de proyección
semestre1 = 1.1
semestre2 = 1.2

#método que calcula la proyección
def proyeccion (array, augment, start, stop)
    #acumulador
    sum = 0

    while start < stop
        sum += array[start]
        start += 1
    end
    return sum*augment
end

#Calcula el los índices primer semestre y manda a llamar al método
inicioS1 = 0
finS1 = baseDatosRespaldo.count / 2

#Calcula el los índices segundo semestre y manda a llamar al método
inicioS2 = finS1
finS2 = baseDatosRespaldo.count

#Guardar los datos en un archivo
resultado = File.open('resultado.data', 'w')
    resultado << (proyeccion baseDatosRespaldo, semestre1, inicioS1, finS1).truncate(2).to_s + "\n" + (proyeccion baseDatosRespaldo, semestre2, inicioS2, finS2).truncate(2).to_s
resultado.close