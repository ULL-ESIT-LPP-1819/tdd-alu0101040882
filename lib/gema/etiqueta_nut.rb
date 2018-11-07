class Etiqueta_nut
	
attr_reader :kj, :kcal, :nombre, :grasas, :grasas_s, :hidratos, :azucares, :proteinas, :sal, :grasas_mon, :grasas_pol, :polialcoholes, :almidon, :fibra, :vitaminas, :minerales

	def initialize(nombre,grasas,grasas_s,hidratos,azucares,proteinas,sal,grasas_mon,grasas_pol,polialcoholes,almidon,fibra,vitaminas,minerales)
		@nombre,@grasas,@grasas_s,@hidratos,@azucares,@proteinas,@sal,@grasas_mon,@grasas_pol,@polialcoholes,@almidon,@fibra,@vitaminas,@minerales = nombre,grasas,grasas_s,hidratos,azucares,proteinas,sal,grasas_mon,grasas_pol,polialcoholes,almidon,fibra,vitaminas,minerales
	end

	def porciones(n_porciones,tamaño)
		@n_porciones,@tamaño = n_porciones,tamaño
	end

	def valor_energetico()
		@kj = @grasas*37 + @grasas_s*37 + @hidratos*17 + @azucares*81 + @proteinas*50 + @sal*25 + @grasas_mon*37 + @grasas_pol*37 +  @polialcoholes*10 + @almidon*17 + @fibra * 8 + @minerales*5
		@kcal = @grasas*9 + @grasas_s*9 + @hidratos*4 + @azucares*19 + @proteinas*4 + @sal*6 + @grasas_mon*9 + @grasas_pol*9 +  @polialcoholes*2.4 + @almidon*4 + @fibra*2 + @minerales*2

	end
	
	def to_s()
"Nombre:#{@nombre}\nGrasas:#{@grasas}\nGrasas Saturadas:#{@grasas_s}\nHidratos:#{@hidratos}\nAzúcares:#{@azucares}\nNombre:#{@proteinas}\nSal:#{@sal}\nGrasas Monoinsaturasas:#{@grasas_mon}\nGrasas Polisaturadas:#{@grasas_pol}\nPolialcoholes:#{@polialcoholes}\nAlmidon:#{@almidon}\nFibra:#{@fibra}\nVitaminas:#{@vitaminas}\nMinerales:#{@minerales}\nEnergía (Kj):#{@kj}\nEnergía (Kcal):#{@kcal}\n"	end 
	end

