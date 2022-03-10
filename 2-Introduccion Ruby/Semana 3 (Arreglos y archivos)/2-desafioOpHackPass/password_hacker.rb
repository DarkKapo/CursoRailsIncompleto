#Encuentra un password en un diccionario

#diccionario donde se va a buscar
archivo = ARGV[0]
#Palabra a buscar
word = ARGV[1]

#abrir el diccionario para buscar
data = open(archivo).readlines

#Array para trabajar los datos
array = []

#Contar cantidad de líneas
lines = data.count

def searchWord (array, word, lines)
    #Variable que guarda la cantidad de intentos
    try = 1

    #Busca la palabra, si la encuentra retorna try
    lines.times do |i|
        if word == array[i]
            return try
        end
        try += 1
    end
    #Si no encuentra la palabra retorna 0
    return 0
end

#Guarda los datos en el nuevo array
lines.times do |i|
    array.push(data[i].chomp)
end

#El valor de la función se guarda para luego mostrar el mensaje final
wordHack = searchWord array, word, lines

#Si el valor es 0 significa que no encontró la palabra
if wordHack != 0
    puts "Palabra encontrada en el intento #{searchWord array, word, lines}"
else
    puts "La palabra no existe en el diccionario"
end