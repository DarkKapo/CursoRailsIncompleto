#Transforma de seg a min los datos de un arreglo

seconds = [100, 50, 1000, 5000, 1000, 500]

def toMinutes (array)
    #Arreglo donde se guardan los datos en minutos
    arrayFinal = []

    largoArray = array.count

    largoArray.times do |i|
        arrayFinal.push((array[i] / 60))
    end
    return arrayFinal
end

print toMinutes seconds
print "\n"