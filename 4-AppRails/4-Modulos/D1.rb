class Person

    attr_reader :first_name, :last_name, :age, :type

    def initialize(first, last, age, type)
        @first_name = first
        @last_name = last
        @age = age
        @type = type
    end

    def birthday
        @age += 1
    end

    def introduce
        "Mi nombre es #{@first_name} #{@last_name}."
    end
end

class Student < Person

    def introduce
        puts "Hola profesor. #{super}"
    end

    def talk
        puts "Aquí es la clase de programación con Ruby?"
    end

end

class Teacher < Person

    def introduce
        puts "Hola alumnos. Mi nombre es #{@first_name} #{@last_name}."
    end

    def talk
        puts "Bienvenidos a la clase de programación con Ruby!"
    end

end

class Parent < Person

    def introduce
        puts "Hola. Soy uno de los apoderados. Mi nombre es #{@first_name} #{@last_name}."
    end

    def talk
        puts "Aquí es la reunión de apoderados?"
    end

end

s = Student.new('EstN', 'EstA', 01, 'typeEst')
t = Teacher.new('ProfeN', 'ProfeN', 02, 'typeTea')
p = Parent.new('ParentN', 'PArentA', 03, 'typePar')

#s.introduce
#s.talk

#t.introduce
#t.talk

#p.introduce
#p.talk