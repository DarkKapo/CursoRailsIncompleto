#Programa que devuelve la nota más alta

def nota_mas_alta (array)
    #Arreglo de respaldo
    arrayRespaldo = []
    arrayRespaldo = array.map { |x| x.to_i }

    notaAlta = arrayRespaldo.max

    return notaAlta
end

#abrir archivo que contiene las notas

require 'csv'

data = CSV.open('notas.csv', converters: :numeric).readlines

lines = data.count

lines.times do |i|
    print "Nota más alta de #{data[i][0]} = #{nota_mas_alta data[i]}"
    puts
end