Feature: Colores

Scenario: ingresar secuencia valida
	Given Entro al juego
	When Ingresar la secuencia [4,3,2,1]
	Then veo secuencia valida

Scenario: ingresar secuencia invalida
	Given Entro al juego
	When Ingresar la secuencia [4,3,2,7]
	Then veo secuencia invalida

Scenario: ingresar secuencia correcta
	Given Entro al juego
	When Si la incognita es [1,2,3,4] y se ingresa la secuencia [1,2,3,4]
	Then veo secuencia correcta

Scenario: ingresar secuencia incorrecta. Dos coincidencias por posicion y 3 coincidencias por color
	Given Entro al juego
	When Si la incognita es [1,2,3,4] y se ingresa la secuencia [1,3,5,4]
	Then 3 coincidencias por color - 2 coincidencias por posicion
