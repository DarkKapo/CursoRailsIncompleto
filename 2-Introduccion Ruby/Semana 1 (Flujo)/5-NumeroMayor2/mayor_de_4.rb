#muestra el mayor de 4 numeros enteros

v1 = ARGV[0].to_i
v2 = ARGV[1].to_i
v3 = ARGV[2].to_i
v4 = ARGV[3]

#Operacion si ingresa 3 valores
if v4.nil?
    if v1 >= v2 && v1 >= v3
        puts "#{v1}"
    elsif v2 >= v3
        puts "#{v2}"
    else
        puts "#{v3}"
    end
#Operacion si ingresa 4 valores
else
    v4 = v4.to_i
    if v1 >= v2 && v1 >= v3 && v1 >= v4
        puts "#{v1}"
    elsif v2 >= v3 && v2 >= v4
        puts "#{v2}"
    elsif v3 >= v4
        puts "#{v3}"
    else
        puts "#{v4}"
    end
end