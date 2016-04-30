Given(/^Entro al juego$/) do
  visit "/"
end

When(/^Ingresar la secuencia \[(\d+),(\d+),(\d+),(\d+)\]$/) do |arg1, arg2, arg3, arg4|
  	fill_in("posicion1", :with => arg1)
	fill_in("posicion2", :with => arg2)
	fill_in("posicion3", :with => arg3)
	fill_in("posicion4", :with => arg4)
	click_button("comprobar")
end

Then(/^veo secuencia valida$/) do
  last_response.body.should =~ /4 coincidencias por color - 0 coincidencias por posicion/m
end

Then(/^veo secuencia invalida$/) do
  last_response.body.should =~ /Ingrese una secuencia valida/m
end


