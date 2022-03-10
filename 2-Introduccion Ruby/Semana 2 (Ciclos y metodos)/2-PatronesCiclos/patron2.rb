#Imprime 2 * y 2 .

#Captura el dato ingresado en consola
num = ARGV[0].to_i
i = 0
#iteracion 1 escribe 2 puntos, iteracion 2 escribe 2 asteriscos
iteracion = 1

if num < 0
    print "Fin del programa"
else
    while i<num
        #Si es par, escribe 2 puntos
        if iteracion.even?
            print "."
            i += 1
            if i<num
                print "."
                i += 1
            else
                break
            end
            iteracion -= 1
        #Si es impar, escribe 2 asteriscos
        else
            print "*"
            i += 1
            if i<num
                print "*"
                i += 1
            else
                break
            end
            iteracion += 1
        end
    end
end
print "\n"