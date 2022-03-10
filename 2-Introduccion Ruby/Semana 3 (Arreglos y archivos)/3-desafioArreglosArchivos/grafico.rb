#Dibuja un gráfico desde un array numérico

numeros = [5, 3, 2, 5, 10]

def chart (array)
    #Calcular número más grande del array
    masAlto = array.max

    lines = array.count

    #Dibuja el patrón según la imagen
    lines.times do |i|
        print '|'
        print "*"*array[i]*2
        print "\n"
    end

    #Dibuja > y - según la imagen
    print ">"
    print "-"*masAlto*2
    print "\n"
    
    #Dibuja los números según la imagen
    masAlto.times do |i|
        print "#{i + 1} "
    end
    print "\n"
end

puts
chart numeros
puts