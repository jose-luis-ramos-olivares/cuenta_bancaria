class CuentaBancaria
    attr_accessor :nombre_de_usuario
    def initialize(nombre_usuario, numero_de_cuenta, vip=0)
        if numero_de_cuenta.digits.count != 8
            raise RangeError, 'numero de digitos distinto a 8'
        end
        if !(0..1).include?(vip)
            raise RangeError, 'numero tiene que ser 0 o 1'
        end
        @nombre_de_usuario = nombre_usuario
        @numero_de_cuenta = numero_de_cuenta
        @vip = vip
    end
    def numero_de_cuenta
        "#{@vip}-#{@numero_de_cuenta}"
    end
end

prueba = CuentaBancaria.new('Jose', 12345678)
puts prueba.inspect
puts prueba.numero_de_cuenta