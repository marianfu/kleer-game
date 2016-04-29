class Posicion
	
	def initialize digito
		@digito = digito	
	end

	def validarDigito 
		if !@digito.is_a? Numeric
			return false
		end

		if @digito > 0 and @digito < 7
			true
		else
			false
		end
	end

	def getDigito
		return @digito
	end

	def equals pos1	
		if @digito == pos1.getDigito
			true
		else	
			false
		end	
	end
	
end
