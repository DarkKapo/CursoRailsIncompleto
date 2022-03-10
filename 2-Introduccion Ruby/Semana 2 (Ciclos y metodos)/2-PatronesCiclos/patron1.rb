#Imprime intercalado un * y .

num = ARGV[0].to_i

if num < 0
    print "Fin del programa"
else
    for i in (0..num-1)
        #Evalua si es par o impar para imprimir itercalado
        if i.even?
            print "*"
        else
            print "."
        end
    end
end

print "\n"