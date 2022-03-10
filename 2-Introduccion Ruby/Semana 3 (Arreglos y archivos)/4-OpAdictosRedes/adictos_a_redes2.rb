#min < 90 = bien; 90 <= min && min < 180 = mejorable; 180 <= min = mal

#Array definido previamente
arrayIni = [89, 90, 91, 179, 180, 181]

def scan_addicts2(array)
    arrayFinal = []

    #Calcula el largo para luego iterar
    largoArray = array.count

    largoArray.times do |i|
        if array[i] < 90
            arrayFinal[i] = "bien"
        elsif array[i] >= 90 && array[i] < 180
            arrayFinal[i] = "mejorable"
        else
            arrayFinal[i] = "mal"
        end
    end
    return arrayFinal
end

print scan_addicts2 arrayIni
print "\n"