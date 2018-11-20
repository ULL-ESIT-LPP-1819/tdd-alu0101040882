class Individuo
		
	def initialize(nombre,edad,genero)
		@nombre,@edad,@genero = nombre,edad,genero
	end

	def to_s
		"#{@nombre},#{@edad},#{@genero}"
	end
end

@ind = Individuo.new("juan",3,"M")
puts @ind.to_s
