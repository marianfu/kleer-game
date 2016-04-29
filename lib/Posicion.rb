class Posicion
	
	def initialize digito
		@digito = digito	
	end

	def validarDigito 
		if @digito > 0 and @digito < 7
			true
		else
			false
		end
	end
	
end
