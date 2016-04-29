Feature: Colores

Scenario: ingresar secuencia valida
	Given Entro al juego
	When Ingresar la secuencia [4,3,2,1]
	Then secuencia valida
