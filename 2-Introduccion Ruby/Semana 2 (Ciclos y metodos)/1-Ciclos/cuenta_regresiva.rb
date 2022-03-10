#reemplaza until por while

#puts 'Ingrese un número para comenzar la cuenta:'
#cuenta_regresiva = ARGV[0].to_i

#print "Contando desde #{cuenta_regresiva}..."

#until cuenta_regresiva < 0
#    print cuenta_regresiva
#    cuenta_regresiva -= 1
#end

i = ARGV[0].to_i

print "Contando desde #{i}..."

while i > 0
    print " #{i}"
    i -= 1
end
print "\n"