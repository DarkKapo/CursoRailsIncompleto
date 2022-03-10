#muestra X cantidad de parrafos de lore ipsum

#Variable que define la cantidad de parrafos a mostrar
numParrafo = ARGV[0].to_i
#Variable donde se guarda el texto completo (siempre comienza con lorem ipsum)
textoLorem = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tincidunt eu tellus vitae dapibus. Cras pharetra maximus metus, sed tristique eros gravida sed. Ut et turpis viverra, posuere nunc a, euismod neque. Mauris blandit magna a ex molestie, quis malesuada diam pharetra. Nullam tellus nisl, posuere sit amet risus id, cursus vestibulum nunc. Fusce feugiat lectus vel elementum rutrum. Nunc venenatis viverra sagittis. Quisque et lacus ornare, ultricies nulla vitae, sollicitudin ante. Vivamus vitae sagittis dolor. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Pellentesque ac diam cursus, mattis augue ac, lobortis felis. Integer quam nisl, posuere at condimentum ut, euismod sed libero. Vestibulum iaculis nunc vel imperdiet viverra.\n\n"

#Valida el caso si es un numero 0 o menor
if numParrafo <= 0
    textoLorem = ""

else

    while numParrafo > 0
#       Calcula un numero aleatorio, dependiendo el numero es el parrafo que se agrega a la cadena de texto
        random = rand(0..4)

#       Variable textoLorem ya trae un parrafo cuando lo iniciamos, si numParrafo es 1, hay que salir del ciclo
        if numParrafo == 1
            numParrafo = 0

#       Si random esta entre 0 y 3, agrega un parrafo a la variable textoLorem y disminuye en 1 numParrafo            
        elsif random == 0
            textoLorem += "Nunc eget iaculis lacus. Sed malesuada nibh eget sapien ultricies, eu mollis nisi malesuada. Etiam sollicitudin feugiat scelerisque. Etiam scelerisque nisl a nulla elementum lobortis. Donec lorem nunc, congue nec facilisis quis, iaculis ac dolor. Suspendisse laoreet risus urna, vitae facilisis dui cursus sed. Curabitur consequat placerat turpis, eget accumsan sapien mollis ut. Suspendisse interdum dolor sit amet purus ultrices pulvinar. Integer ac tristique ipsum.\n\n"
            numParrafo -= 1

        elsif random == 1
            textoLorem += "Proin fringilla libero vel nulla placerat lobortis. Cras vitae risus a enim elementum rutrum et et elit. Nam eget faucibus felis. Praesent ut sagittis turpis. Aliquam aliquam condimentum placerat. In maximus, risus vitae interdum ullamcorper, sem augue porta velit, vel dictum tellus mauris ut sapien. Maecenas bibendum nec orci et ullamcorper. Nullam id urna id ligula imperdiet ornare id tincidunt risus. Ut molestie eleifend hendrerit. Maecenas eros sapien, dapibus vitae magna ut, porttitor blandit magna.\n\n"
            numParrafo -= 1

        elsif random == 2
            textoLorem += "In ac faucibus ex. Vivamus facilisis imperdiet lorem non tempor. In lacinia bibendum ligula, ut dapibus lorem viverra vitae. Phasellus quam eros, aliquam et facilisis nec, consequat cursus tortor. Proin sollicitudin congue est et finibus. Nam mattis ultrices vestibulum. Praesent imperdiet ac augue sit amet iaculis. Ut dapibus tortor sit amet odio consectetur, id consectetur justo finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nunc cursus aliquam dictum.\n\n"
            numParrafo -= 1

        elsif random == 3
            textoLorem += "Donec egestas et sapien a bibendum. Praesent condimentum interdum neque, sed scelerisque ex finibus nec. Vestibulum blandit, erat eget imperdiet pretium, sapien odio condimentum dui, ut ultrices tellus nibh eget tortor. Nullam ut ullamcorper dolor. Nunc nisi ex, vehicula eget aliquam non, auctor id sapien. Duis finibus justo dolor, eu pharetra erat ultrices dignissim. Nam vel eleifend tellus. Proin scelerisque maximus mi vitae lobortis. Donec euismod id neque maximus elementum. Sed condimentum aliquam elit, id pretium nisi efficitur a. Sed in facilisis nisl. Donec et libero non sapien sodales sodales eu vestibulum arcu. Suspendisse congue diam sit amet lorem posuere porttitor. Mauris vel faucibus nunc. Nullam volutpat rhoncus massa, nec euismod purus sagittis sit amet.\n\n"
            numParrafo -= 1
        end
    end
end

puts textoLorem