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
  last_response.body.should =~ /#{@@respuesta}/m
end

Then(/^veo secuencia invalida$/) do
  last_response.body.should =~ /<br>Ingrese una secuencia valida/m
end

When(/^Si la incognita es \[(\d+),(\d+),(\d+),(\d+)\] y se ingresa la secuencia \[(\d+),(\d+),(\d+),(\d+)\]$/) do |arg1, arg2, arg3, arg4, arg5, arg6, arg7, arg8|
  	fill_in("posicion1", :with => arg5)
	fill_in("posicion2", :with => arg6)
	fill_in("posicion3", :with => arg7)
	fill_in("posicion4", :with => arg8)
	click_button("comprobar")
end

Then(/^veo secuencia correcta$/) do
  last_response.body.should =~ /#{@@respuesta}/m
end

Then(/^(\d+) coincidencias por color \- (\d+) coincidencias por posicion$/) do |arg1, arg2|
  last_response.body.should =~ /#{@@respuesta}/m
end


