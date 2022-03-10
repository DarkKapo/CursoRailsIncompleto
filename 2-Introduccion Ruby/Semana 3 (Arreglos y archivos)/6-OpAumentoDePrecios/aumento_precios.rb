#Aumenta los valores de un array en X %

prices = [100, 250, 400, 330, 860]
multiplier = 1.2

def augment (array, mult)
    arrayFinal = []

    array.each do |price|
        arrayFinal.push price*mult
    end
    return arrayFinal
end

print augment prices, multiplier
print "\n"