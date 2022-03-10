#Calcula el promedio y modificas las notas N.A

notas = [5, 7, 1, 3, 5, 8, 9, 'N.A', 'N.A', 3]

def promedio (array)
    sumatoria = 0
    #Calcula el largo para luego iterar
    lines = array.count

    array.each do |nota|
        #Evalua si hay nota
        if nota == 'N.A'
            nota = 2.0
            sumatoria += nota
        else
            sumatoria += nota
        end
    end
    promedio = (sumatoria / lines).to_f
    return promedio.truncate(2)
end

print promedio notas
print "\n"