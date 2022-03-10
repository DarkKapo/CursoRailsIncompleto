# 1) Clase
class Usuario
    # 2) get y set
    attr_accessor :nombre, :cuentas

    # 3) Constructor
    def initialize(nombre, cuentas)
        raise TypeError, "No tienes una cuenta" if cuentas.count < 1
        @nombre = nombre
        @cuentas = cuentas
    end

    def saldo_total
        total = 0
        @cuentas.each do |cuenta|
            total += cuenta.saldo
        end
        total
    end
end

class CuentaBancaria
    attr_accessor :banco, :numero_de_cuenta, :saldo

    #Constructor
    def initialize(banco, numero_de_cuenta, saldo = 0)
        @banco = banco
        @numero_de_cuenta = numero_de_cuenta
        @saldo = saldo
    end

    #Transfiere un monto a otra cuenta
    def transferir(monto, otra_cuenta)
        raise TypeError, "No tienes saldo" if monto > @saldo
        #Resta saldo a la cuenta origen
        @saldo -= monto
        #Suma saldo a la cuenta destino
        otra_cuenta.saldo += monto
    end
end

#instancia 2 cuentas
c1 = CuentaBancaria.new('Banco', 123456, 5000)
c2 = CuentaBancaria.new('Banquito', 654321, 5000)

#transferencia
c1.transferir(5000, c2)
puts c1.saldo
puts c2.saldo

#instancia un usuario
u1 = Usuario.new('Rodri', [c1, c2])

puts u1.saldo_total