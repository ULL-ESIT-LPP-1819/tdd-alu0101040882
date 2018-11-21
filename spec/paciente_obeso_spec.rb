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
			expect(@p).to be_a_kind_of(Paciente_obeso)

		end		
		
		it "Pertenece a la jerarquía de clases" do
			expect(@p).to be_a_kind_of(Individuo)
                end

	end

end

