class Secuencia

	def initialize secuencia
		@secuencia = secuencia
	end

	def construirIncognita 
		@secuencia_incognita = [Posicion.new(1), Posicion.new(2), Posicion.new(3), Posicion.new(4)]
	end

	def comparar
		construirIncognita
		@secuencia.each_with_index do |posicion, index|
			if !@secuencia_incognita[index].equals(posicion)
				return false
			end
		end 

		return true
	end

	def encontrar posicion
		construirIncognita 
		@secuencia_incognita.each do |posicionIncognita|
			if posicionIncognita.equals(posicion)
				return true
			end
		end 
		false
	end

	def contarDigitosIguales secuencia_ingresada
		construirIncognita
		contador = 0
		@secuencia_incognita.each do |posicionI|
			secuencia_ingresada.each do |posicion|
				if(posicion.equals(posicionI))
					contador= contador + 1
				end
			end
		end
		return contador
	end
end