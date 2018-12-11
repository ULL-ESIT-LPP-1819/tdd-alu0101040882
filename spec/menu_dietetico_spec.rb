RSpec.describe Menu_dietetico do

	before :all do
		
		paciente =  Paciente_obeso.new("Manolo",  15,"M",62,1.71,0,30,30)
		paciente.peso_teorico_ideal
		paciente.gasto_energetico_basal
		paciente.efecto_termogeno
		paciente.factor_actividad_fisica("Actividad Intensa")
		paciente.gasto_actividad_fisica
		paciente.gasto_energetico_total
		
		@m = Menu_dietetico.new(paciente)

		@m.añadir_alimento(Etiqueta_nut.new("Agua",    1,1,1,1,1,1,1,1,1,1,1,1,1))
		@m.añadir_alimento(Etiqueta_nut.new("Gofio",   1,1,1,1,1,1,1,1,1,1,1,1,1))
		@m.añadir_alimento(Etiqueta_nut.new("Gofio",   1,1,1,1,1,1,1,1,1,1,1,1,1))
		@m.añadir_alimento(Etiqueta_nut.new("Gofio",   1,1,1,1,1,1,1,1,1,1,1,1,1))
		@m.añadir_alimento(Etiqueta_nut.new("Gofio",   1,1,1,1,1,1,1,1,1,1,1,1,1))
		@m.añadir_alimento(Etiqueta_nut.new("Gofio",   1,1,1,1,1,1,1,1,1,1,1,1,1))

	end	

	describe " #Verificar menu" do
        	it "El menu es valido para el individuo" do
                	expect(@m.verificacion_menu).to be(true)
        	end

	end
end
