class Carta
    attr_accessor :numero, :pinta
    def initialize(numero, pinta)
        if !(1..13).include?(numero)
            raise ArgumentError, 'El número no está entre 1 y 13'
        end
        if !['C', 'D', 'E', 'T'].include?(pinta)
            raise ArgumentError, 'La pinta no es C, D, E, T'
        end
        @numero = numero
        @pinta = pinta
    end
    def numero=(numero)
        if !(1..13).include?(numero)
            raise ArgumentError, 'El número no está entre 1 y 13'
        end
        @numero = numero
    end
    def pinta=(pinta)
        if !['C', 'D', 'E', 'T'].include?(pinta)
            raise ArgumentError, 'La pinta no es C, D, E, T'
        end
        @pinta = pinta
    end
    def self.numero
        Random.rand(1..13)
    end
    def self.pinta
        ['C', 'D', 'E', 'T'].sample
    end
end

array = []
5.times do
    pinta = Carta.pinta
    numero = Carta.numero
    carta = Carta.new(numero, pinta)
    array.push carta
end
print array

#puts c1.inspect #nos muestra el numero y pinta de c1
# puts c1.numero
# puts c1.pinta
