#imprime 1, 2 o 3

num = ARGV[0].to_i
pos = 1
if num < 0
    print "Fin del programa"
else
    for i in (0..num-1)
        if pos == 1
            print "1"
            pos += 1
        elsif pos == 2
            print "2"
            pos += 1
        else pos == 3
            print "3"
            pos = 1
        end
    end
end

print "\n"