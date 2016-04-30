class Secuencia

	def initialize secuencia
		@secuencia = secuencia
	end

	def construirIncognita 
		d1= rand(1..6)
		d2= rand(1..6)
		d3= rand(1..6)
		d4= rand(1..6)
		@@secuencia_incognita = [Posicion.new(d1), Posicion.new(d2), Posicion.new(d3), Posicion.new(d4)]
	end

	def mockSecuenciaIncognita 
		@@secuencia_incognita = [Posicion.new(1), Posicion.new(2), Posicion.new(3), Posicion.new(4)]
	end	

	def comparar
		@secuencia.each_with_index do |posicion, index|
			if !@@secuencia_incognita[index].equals(posicion)
				return false
			end
		end 

		return true
	end

	def encontrar posicion
		@@secuencia_incognita.each do |posicionIncognita|
			if posicionIncognita.equals(posicion)
				return true
			end
		end 
		false
	end

	def validarSecuencia
		@secuencia.each do |posicion|
			if(!posicion.validarDigito)
				return false
			end
		end
		return true
	end

	def contarDigitosIguales secuencia_ingresada
		contador = 0
		array = []

		@@secuencia_incognita.each do |posicionI|
			secuencia_ingresada.each do |posicion|
				if(posicion.equals(posicionI) and !existeDigitoEnArray(array, posicion.getDigito))
					contador= contador + 1
					array.push(posicion.getDigito)
				end
			end
		end
		return contador
	end

	def existeDigitoEnArray secuencia, digito
		secuencia.each do |element|
			if element == digito	
				return true
			end 	
		end
		return false		
	end

	def ubicarDigitosIguales secuencia_ingresada
		contador = 0
		@@secuencia_incognita.each_with_index do |posicionI, indexI|
			secuencia_ingresada.each_with_index do |posicion, index|
				if(posicion.equals(posicionI) and index == indexI)
					contador= contador + 1
				end
			end
		end
		return contador
	end
	
	def devolverResultado secuencia
		contador = contarDigitosIguales secuencia
		posicion = ubicarDigitosIguales	secuencia

		if posicion == 4	
			return "Ganaste!!"
		end		
		if contador == 0 and posicion == 0
			return "No hay coincidencias" 	
		else
			return "#{contador} coincidencias por color - #{posicion} coincidencias por posicion"
		end	
		return nil	
	end

	def getSecuenciaIncognita
		string = ""
		@@secuencia_incognita.each do |element|
			string.concat("#{element.getDigito.to_s} ")
		end
		return string
	end

end
