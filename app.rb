require 'sinatra'
require_relative "./lib/Secuencia.rb"
require_relative "./lib/Posicion.rb"

@@respuesta = ""

get '/' do
	@@secuencia_historica = Secuencia.new([Posicion.new(1),Posicion.new(1),Posicion.new(1),Posicion.new(1)])
	@@secuencia_historica.construirIncognita	
	erb :colores
end

post '/comprobar' do
	digito1 = Posicion.new(params[:posicion1].to_i)
	digito2 = Posicion.new(params[:posicion2].to_i)
	digito3 = Posicion.new(params[:posicion3].to_i)
	digito4 = Posicion.new(params[:posicion4].to_i)
  	@secuencia = Secuencia.new([digito1, digito2, digito3, digito4])
	if !@secuencia.validarSecuencia
		@@respuesta = "Ingrese una secuencia valida"
	else
		@@respuesta = @secuencia.devolverResultado([digito1, digito2, digito3, digito4])
	end
	erb :colores
end
