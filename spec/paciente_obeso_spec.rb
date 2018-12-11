RSpec.describe Paciente_obeso do

	before :all do

		@p = Paciente_obeso.new("Manolo",  15,"M",62,1.71,0,30,30)

                @dll = Dll.new()
		@dll.insert_tail(Paciente_obeso.new("Luis",    15,"M",65,1.70,1,30,30))
		@dll.insert_tail(Paciente_obeso.new("Juan",    15,"M",65,1.75,1,30,30))
		@dll.insert_tail(Paciente_obeso.new("Pepe",    15,"M",64,1.79,1,30,30))
		@dll.insert_tail(Paciente_obeso.new("Manolo",  15,"M",62,1.71,0,30,30))
		@dll.insert_tail(Paciente_obeso.new("Fernando",15,"M",63,1.60,1,30,30))
        end
	
	describe " #Clasificacion" do
		it "Clasifica IMC" do

			i = 1

                	while i < @dll.size
                        	j = 0
                        	aux = @dll.head
                        	while j < (@dll.size - i)
                                	if aux.value.imc > aux.next.value.imc
                                        	aux.value, aux.next.value = aux.next.value, aux.value
                                	end
                               		aux = aux.next
                                	j+=1
                        	end
                        	i+=1
                	end

	                while aux.next != nil do
        	                expect(aux.value.imc).to be <= aux.next.value.imc
                        	aux = aux.next
                	end
			
		end
		
	end

	describe " #Pruebas jerarquía" do
	
		it "La clase es Paciente_obeso" do
			expect(@p).to be_an_instance_of(Paciente_obeso)
		end

		it "El objeto es Paciente_obeso" do
			expect(@p).is_a?(Paciente_obeso)

		end		
		
		it "Pertenece a la jerarquía de clases" do
			expect(@p).to be_a_kind_of(Individuo)
                end

	end
	
	describe "#Tipo" do

		it "Responde a to_s" do
			expect(@p).to respond_to(:to_s)
		end
		 it "Responde a imc" do
                        expect(@p).to respond_to(:imc)
                end


	end

	describe "#Datos para menú" do
		it "Peso teorico ideal" do
			expect(@p.peso_teorico_ideal).to eq(50.1575)
		end

	        it "Gasto energetico basal" do
                        expect(@p.gasto_energetico_basal).to eq(394.6875)
                end

		it "Efecto  termogeno" do
			expect(@p.efecto_termogeno).to eq(39.46875)
		end

		it "Factor de actividad fisica" do
			expect(@p.factor_actividad_fisica("Reposo")).to eq(0.0)
		end
		
		it "Gasto actividad fisica" do
			expect(@p.gasto_actividad_fisica).to eq(0)

		end

		it "Gasto energetico total" do
			expect(@p.gasto_energetico_total).to eq(434.15625)

		end

	end

end

