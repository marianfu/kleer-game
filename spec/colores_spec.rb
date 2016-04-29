require_relative "../lib/Posicion.rb"
require_relative "../lib/Secuencia.rb"

describe "Color" do
	
	it "Se prueba que el numero 1 esta en el intervalo [1,6]" do
		posicion = Posicion.new 1
		posicion.validarDigito.should == true 		
	end	

	it "Se prueba que el numero 7 no esta en el intervalo [1,6]" do
		posicion = Posicion.new 7
		posicion.validarDigito.should == false
	end

	it "Se prueba que la letra a no es un numero" do
		posicion = Posicion.new 'a'
		posicion.validarDigito.should == false
	end

	it "Se compara 1234 contra la secuencia_incognita y son iguales" do
		secuencia = [Posicion.new(1), Posicion.new(2), Posicion.new(3), Posicion.new(4)]
		secuencia_ingresada = Secuencia.new secuencia
		secuencia_ingresada.comparar.should == true
	end

end
