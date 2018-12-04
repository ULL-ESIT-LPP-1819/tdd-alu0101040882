class Individuo
		
	def initialize(nombre,edad,genero)
		@nombre,@edad,@genero = nombre,edad,genero
	end

	def to_s
		"#{@nombre},#{@edad},#{@genero}"
	end

	def <=>(other)
		
	end
end

