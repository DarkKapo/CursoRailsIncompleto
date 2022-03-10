#muestra el mayor de 3 numeros enteros

v1 = ARGV[0].to_i
v2 = ARGV[1].to_i
v3 = ARGV[2].to_i

if v1 >= v2 && v1 >= v3
    puts "#{v1}"
elsif v2 >= v3
    puts "#{v2}"
else
    puts "#{v3}"
end