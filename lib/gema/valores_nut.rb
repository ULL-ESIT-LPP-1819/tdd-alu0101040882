
#Valoracion nutricional de un individuo
class Valores_nut
	include Comparable
	

	attr_reader :nombre, :edad, :genero


	def initialize(nombre,edad,genero)
		@nombre, @edad, @genero = nombre, edad, genero
	end

	#Calcula el Imc de un individuo
	def imc(peso,talla)
		@imc =  (peso/(talla*talla))
	end
	
	#Calcula la grasa de un individuo
	def grasa(sexo,peso,talla)
		@grasa = 1.2*imc(peso,talla)+0.23*@edad-10.8*sexo-5.4
	end

	#Calcula el rcc de un individuo
	def rcc(c_cintura,c_cadera)
		@rcc = (c_cintura/c_cadera)	
	end


	def to_s
		"Nombre:#{@nombre}\nEdad:#{@edad}\nGenero:#{@genero}\nImc:#{@imc}\n%Grasa:#{@grasa}\nRcc:#{@rcc}"
	end
	
	#Metodo utilizado para comparaciones de valoraciones nutricionales	
	def <=>(other)
		@nombre <=> other.nombre
	end
end


