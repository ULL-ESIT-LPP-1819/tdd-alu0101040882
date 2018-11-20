class Paciente_obeso < Paciente

	attr_accessor :imc , :grasa , :rcc
	
	def initialize(nombre,edad,genero,peso,talla,sexo,c_cintura,c_cadera)
		super(nombre,edad,genero)
		
		@imc   = @valoracion.imc(peso,talla)
		@grasa = @valoracion.grasa(sexo,peso,talla)
		@rcc   = @valoracion.rcc(c_cintura,c_cadera)

	end

	def to_s
		@valoracion.to_s
	end
end

