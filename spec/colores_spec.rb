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

	it "Se sabe su 2 esta (en cualquier posicion) en la secuencia 1234" do
			secuencia = [Posicion.new(1), Posicion.new(2), Posicion.new(3), Posicion.new(4)]
			secuencia_ingresada = Secuencia.new secuencia
			posicion = Posicion.new 2		
			secuencia_ingresada.encontrar(posicion).should == true
	end

	it "Se sabe si algun elemento de 1254 esta (en cualquier posicion) en la secuencia harcodeada" do
			secuencia = [Posicion.new(1), Posicion.new(2), Posicion.new(5), Posicion.new(4)]
			secuencia_ingresada = Secuencia.new secuencia		
			secuencia_ingresada.contarDigitosIguales(secuencia).should == 3
	end

	it "Se sabe si algun elemento de 1254 esta (en la misma posicion) en la secuencia harcodeada" do
			secuencia = [Posicion.new(1), Posicion.new(2), Posicion.new(5), Posicion.new(4)]
			secuencia_ingresada = Secuencia.new secuencia		
			secuencia_ingresada.ubicarDigitosIguales(secuencia).should == 3
	end
end
