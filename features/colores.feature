Feature: Colores

Scenario: ingresar secuencia valida
	Given Entro al juego
	When Ingresar la secuencia [4,3,2,1]
	Then veo secuencia valida

Scenario: ingresar secuencia invalida
	Given Entro al juego
	When Ingresar la secuencia [4,3,2,7]
	Then veo secuencia invalida
