#Imprime intercalado un 1 y 2

num = ARGV[0].to_i

if num < 0
    print "Fin del programa"
else
    for i in (0..num-1)
        #Evalua si es par o impar para imprimir 1 o 2
        if i.even?
            print "1"
        else
            print "2"
        end
    end
end

print "\n"