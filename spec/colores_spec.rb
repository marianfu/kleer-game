require_relative "../lib/Posicion.rb"

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

end
