#Individuo
class Individuo
		
	def initialize(nombre,edad,genero)
		@nombre,@edad,@genero = nombre,edad,genero
	end

	#Convierte el individuo en una cadena	
	def to_s
		"#{@nombre},#{@edad},#{@genero}"
	end

end

