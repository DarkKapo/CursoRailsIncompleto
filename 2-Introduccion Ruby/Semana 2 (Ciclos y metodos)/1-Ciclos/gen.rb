#muestra X cantidad de letras por orden alfabetico

numLetras = ARGV[0].to_i

def gen (numLetras)
#   Variable que guardara toda la cadena de caracteres
    textoCompleto = ""
#   Variable que va avanzando una letra por cada iteracion
    contadorTexto = "a"
    i = 0

#   Caso si el numero ingresado es 0 o menos, retorna un espacio
    if numLetras <= 0
        return " "
    end

    while i < numLetras
#       Guardando cadena de texto
        textoCompleto += contadorTexto
#       incrementa la letra y actualiza el contadorTexto
        contadorTexto = contadorTexto.next
        i += 1
    end

    return textoCompleto
end

puts gen numLetras