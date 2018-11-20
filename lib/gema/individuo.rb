class Individuo
		
	def initialize(nombre,edad,genero)
		@valoracion=Valores_nut.new(nombre,edad,genero)
	end

	def to_s
		"#{@valoracion.nombre},#{@valoracion.edad},#{@valoracion.genero}"
	end
end

@ind = Individuo.new("Juan",2,"M")
puts @ind.to_s
