#Etiqueta nutricional de un individuo
class Etiqueta_nut

include Comparable
	
attr_reader :kj, :kcal, :nombre, :grasas, :grasas_s, :hidratos, :azucares, :proteinas, :sal, :grasas_mon, :grasas_pol, :polialcoholes, :almidon, :fibra, :vitaminas, :minerales

	def initialize(nombre,grasas,grasas_s,hidratos,azucares,proteinas,sal,grasas_mon,grasas_pol,polialcoholes,almidon,fibra,vitaminas,minerales)
		@nombre,@grasas,@grasas_s,@hidratos,@azucares,@proteinas,@sal,@grasas_mon,@grasas_pol,@polialcoholes,@almidon,@fibra,@vitaminas,@minerales = nombre,grasas,grasas_s,hidratos,azucares,proteinas,sal,grasas_mon,grasas_pol,polialcoholes,almidon,fibra,vitaminas,minerales
	end

	#Añade la porciones y el tamaño a la etiqueta
	def porciones(n_porciones,tamaño)
		@n_porciones,@tamaño = n_porciones,tamaño
	end

	#Calcula el valor energetico de una etiqueta
	def valor_energetico()
		@kj = @grasas*37 + @grasas_s*37 + @hidratos*17 + @azucares*81 + @proteinas*50 + @sal*25 + @grasas_mon*37 + @grasas_pol*37 +  @polialcoholes*10 + @almidon*17 + @fibra * 8 + @minerales*5
		@kcal = @grasas*9 + @grasas_s*9 + @hidratos*4 + @azucares*19 + @proteinas*4 + @sal*6 + @grasas_mon*9 + @grasas_pol*9 +  @polialcoholes*2.4 + @almidon*4 + @fibra*2 + @minerales*2

	end
	
	#Convierte la etiqueta a una cadena
	def to_s()
"Nombre:#{@nombre}\nGrasas:#{@grasas}\nGrasas Saturadas:#{@grasas_s}\nHidratos:#{@hidratos}\nAzúcares:#{@azucares}\nNombre:#{@proteinas}\nSal:#{@sal}\nGrasas Monoinsaturasas:#{@grasas_mon}\nGrasas Polisaturadas:#{@grasas_pol}\nPolialcoholes:#{@polialcoholes}\nAlmidon:#{@almidon}\nFibra:#{@fibra}\nVitaminas:#{@vitaminas}\nMinerales:#{@minerales}\nEnergía (Kj):#{@kj}\nEnergía (Kcal):#{@kcal}\n"	
	end 
	
	#Convierte la etiqueta a una cadena comoun porcentaje
	def to_s_porcentaje()
"Nombre:#{@nombre}\nGrasas:#{@grasas/100.0}\nGrasas Saturadas:#{@grasas_s/100.0}\nHidratos:#{@hidratos/100.0}\nAzúcares:#{@azucares/100.0}\nNombre:#{@proteinas/100.0}\nSal:#{@sal/100.0}\nGrasas Monoinsaturasas:#{@grasas_mon/100.0}\nGrasas Polisaturadas:#{@grasas_pol/100.0}\nPolialcoholes:#{@polialcoholes/100.0}\nAlmidon:#{@almidon/100.0}\nFibra:#{@fibra/100.0}\nVitaminas:#{@vitaminas/100.0}\nMinerales:#{@minerales/100.0}\nEnergía (Kj):#{@kj/100.0}\nEnergía (Kcal):#{@kcal/100.0}\nVALORES DE REFERENCIA:\nValor energético:8.400kJ/ 2000kcal/g\nGrasa total: 70g\nAcidos grasos saturados: 20g\nHidratos de carbono: 260g\nAzúcares: 90g\nProteínas: 50g\nSal: 6g\n"	
	end	

	#Metodo de comparaciones utilizado para el modulo comparable
	def <=> (other)
		self.nombre <=> other.nombre
	end	
end
	
