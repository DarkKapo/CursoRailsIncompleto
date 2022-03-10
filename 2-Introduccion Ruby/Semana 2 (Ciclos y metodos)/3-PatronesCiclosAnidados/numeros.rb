#Imprime n lineas con numeros consecutivos

num = ARGV[0].to_i

#for que imprime num filas
if num < 0
    print "Fin del programa"
    puts "\n"
else
    for i in(1..num)
        #time que imprime de j+1 hasta i numeros
        i.times do |j|
            print j+1
        end
        puts "\n"
    end
end