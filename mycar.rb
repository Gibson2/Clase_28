#Esto es un modulo
module MyMixis

#Aquí se define las Clasesy metodos.
	def onlyCar

		p "Soy un carro"
		
	end

	def onlyTruck

		p "Soy un camion"

	end

end

#Clase Padre o Super Clase
class SuperCar
	attr_reader :color, :distancia_recorrido

	@@count_objeto = 0

	def initialize(color, rendimiento)
		@color = color
		@distancia_recorrido = rendimiento
		@@count_objeto += 1
	end


	def self.gas_millas(distancia, rendimiento)

		distancia/rendimiento

	end

	def self.print_intancia

		puts @@count_objeto
		
	end
end


#Sub-clase
#Esta clase hereda de la SuperClase (< SuperCar)
class MyCar < SuperCar

	@@number_of_door = 4

	def spray_paint(color)
		@color = color
	end

	include MyMixis
end

#Sub-Clase
class MyTruck < SuperCar
	include MyMixis

	@@number_of_door = 2

	def self.number

		@@number_of_door

	end
end

#Instanciando la clase
carro = MyCar.new("rojo", 20)

puts carro.color

p "Despues del Cambio"
carro.spray_paint("Azul")

p carro.color
#****
#Llamando a los metodos dentro del MODULO
carro.onlyCar

#Llamando al metodo dentro del SuperClase
puts SuperCar.gas_millas(1500, carro.distancia_recorrido)


#Instanciando la clase
camion = MyTruck.new("Verde", 40)
p camion.color
#****
#Llamando a los metodos dentro del MODULO
camion.onlyTruck

#Llamando al metodo number para realizar un getter a la variable de la clase dentro
p MyTruck.number

#Llamando Directo a al metodo
SuperCar.print_intancia

