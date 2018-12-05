
#Paciente de una consulta
class Paciente < Individuo

	def initialize(nombre,edad,genero)
		super(nombre,edad,genero)
		@valoracion = Valores_nut.new(nombre,edad,genero)
	end
	
	
end

