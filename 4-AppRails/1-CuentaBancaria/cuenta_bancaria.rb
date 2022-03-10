# 1)clase
class CuentaBancaria
    #2)Set y get
    attr_accessor :nombre_de_usuario, :numero_de_cuenta, :vip

    # 3)Constructor
    def initialize(nombre_de_usuario, numero_de_cuenta, vip = 0)
        
        @nombre_de_usuario = nombre_de_usuario
        @numero_de_cuenta = numero_de_cuenta
        raise RangeError, "Error en el largo de la cuenta" if @numero_de_cuenta.digits.count !=8
        @vip = vip
        raise RangeError, "Error en el largo de la cuenta" if @vip > 1 || @vip < 0
    
    end

    #método que muestra si el usuario es vip o no
    def vipNOvip (numero_de_cuenta)
        print "#{@vip}-#{@numero_de_cuenta}"
    end
    
end

cuenta = CuentaBancaria.new('rod', 12345678, 1)
print "#{cuenta.nombre_de_usuario} "
print cuenta.vipNOvip(cuenta.numero_de_cuenta)
puts