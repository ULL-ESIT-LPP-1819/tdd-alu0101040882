class Valores_nut
	include Comparable
	

	attr_reader :nombre, :edad, :genero


	def initialize(nombre,edad,genero)
		@nombre, @edad, @genero = nombre, edad, genero
	end


	def imc(peso,talla)
		@imc =  (peso/(talla*talla))
	end
	

	def grasa(sexo,peso,talla)
		@grasa = 1.2*imc(peso,talla)+0.23*@edad-10.8*sexo-5.4
	end

	def rcc(c_cintura,c_cadera)
		@rcc = (c_cintura/c_cadera)	
	end


	def to_s
		"Nombre:#{@nombre}\nEdad:#{@edad}\nGenero:#{@genero}\nImc:#{@imc}\n%Grasa:#{@grasa}\nRcc:#{@rcc}"
	end
	
	def <=>(other)
		@nombre <=> other.nombre
	end
end


