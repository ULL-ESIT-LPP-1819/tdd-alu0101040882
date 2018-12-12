class Menu_dietetico

	def initialize(persona)
		@persona = persona
		@alimentos = Dll.new
	end

	def añadir_alimento(alimento)
		@alimentos.insert_tail(alimento)
	end

	def verificacion_menu

		if(@alimentos.map{|x| x.valor_energetico}.inject(0){|sum,x| sum + x}.between?(@persona.gasto_energetico_total_-0.1*@persona.gasto_energetico_total_,@persona.gasto_energetico_total_+0.1*@persona.gasto_energetico_total_))
			return true
		else
			return false
		end

	end

	def to_s
	
		@alimentos.to_s
	end	
end
