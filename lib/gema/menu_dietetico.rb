#Clase para el calculo de el menu dietetico de una persona
class Menu_dietetico

	def initialize(persona)
		@persona = persona
		@alimentos = Dll.new
	end

	#Añade alimentos al menu
	def añadir_alimento(alimento)
		@alimentos.insert_tail(alimento)
	end

	#Verifica que el menu cumpla con las necesidades energeticas de la persona
	def verificacion_menu

                if(@alimentos.map{|x| x.valor_energetico}.reduce(:+).between?(@persona.gasto_energetico_total_-0.1*@persona.gasto_energetico_total_,@persona.gasto_energetico_total_+0.1*@persona.gasto_energetico_total_))
                        return true
                else
                        return false
                end

        end


	
	#Covierte el menu a una cadena
	def to_s
	
		@alimentos.to_s
	end	
end
