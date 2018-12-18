
RSpec.describe Paciente_obeso do

	before :all do

		@p = Paciente_obeso.new("Manolo",  15,"M",62,1.71,0,30,30)

                @dll = Dll.new()
		@dll.insert_tail(Paciente_obeso.new("Luis",    15,"M",65,1.70,1,30,30))
		@dll.insert_tail(Paciente_obeso.new("Juan",    15,"M",65,1.75,1,30,30))
		@dll.insert_tail(Paciente_obeso.new("Pepe",    15,"M",64,1.79,1,30,30))
		@dll.insert_tail(Paciente_obeso.new("Manolo",  15,"M",62,1.71,0,30,30))
		@dll.insert_tail(Paciente_obeso.new("Fernando",15,"M",63,1.60,1,30,30))

                @dll2 = Dll.new()
                @dll2.insert_tail(@p1 =Paciente_obeso.new("Luis",    15,"M",65,1.70,1,30,30))
                @dll2.insert_tail(@p2 =Paciente_obeso.new("Juan",    15,"M",65,1.75,1,30,30))
                @dll2.insert_tail(@p3 =Paciente_obeso.new("Pepe",    15,"M",64,1.79,1,30,30))
                @dll2.insert_tail(@p4 =Paciente_obeso.new("Manolo",  15,"M",62,1.71,0,30,30))
                @dll2.insert_tail(@p5 =Paciente_obeso.new("Fernando",15,"M",63,1.60,1,30,30))
                @dll2.insert_tail(@p6 =Paciente_obeso.new("Marcos",    15,"M",65,1.70,1,30,30))
                @dll2.insert_tail(@p7 =Paciente_obeso.new("Fernando",    15,"M",65,1.75,1,30,30))
                @dll2.insert_tail(@p8 =Paciente_obeso.new("Daniel",    15,"M",64,1.79,1,30,30))
                @dll2.insert_tail(@p9 =Paciente_obeso.new("Jorge",  15,"M",62,1.71,0,30,30))
                @dll2.insert_tail(@p10=Paciente_obeso.new("Jose",15,"M",63,1.60,1,30,30))

		@p1.gasto_energetico_basal
		@p1.efecto_termogeno
		@p1.factor_actividad_fisica("Resposo")
		@p1.gasto_actividad_fisica

                @p2.gasto_energetico_basal
                @p2.efecto_termogeno
                @p2.factor_actividad_fisica("Actividad Intensa")
                @p2.gasto_actividad_fisica

                @p3.gasto_energetico_basal
                @p3.efecto_termogeno
                @p3.factor_actividad_fisica("Actividad moderada")
                @p3.gasto_actividad_fisica

                @p4.gasto_energetico_basal
                @p4.efecto_termogeno
                @p4.factor_actividad_fisica("Resposo")
                @p4.gasto_actividad_fisica


                @p5.gasto_energetico_basal
                @p5.efecto_termogeno
                @p5.factor_actividad_fisica("Actividad intensa")
                @p5.gasto_actividad_fisica

                @p6.gasto_energetico_basal
                @p6.efecto_termogeno
                @p6.factor_actividad_fisica("Actividad ligera")
                @p6.gasto_actividad_fisica

                @p7.gasto_energetico_basal
                @p7.efecto_termogeno
                @p7.factor_actividad_fisica("Actividad moderada")
                @p7.gasto_actividad_fisica

                @p8.gasto_energetico_basal
                @p8.efecto_termogeno
                @p8.factor_actividad_fisica("Resposo")
                @p8.gasto_actividad_fisica
        

                @p9.gasto_energetico_basal
                @p9.efecto_termogeno
                @p9.factor_actividad_fisica("Actividad ligera")
                @p9.gasto_actividad_fisica

                @p10.gasto_energetico_basal
                @p10.efecto_termogeno
                @p10.factor_actividad_fisica("Resposo")
                @p10.gasto_actividad_fisica

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

	
	describe "#Ordenaciones de la lista" do

	Benchmark.bm do |x|


		it "Con bucle for" do
           

		     x.report("for dll"){	
	             dll_copy = @dll2.dup



                        for i in 1..dll_copy.size
                                aux = dll_copy.head
                                for j in i..dll_copy.size-1

                                        if aux.value.gasto_energetico_total > aux.next.value.gasto_energetico_total
                                                aux.value, aux.next.value = aux.next.value, aux.value
                                        end
                                        aux = aux.next

                                end
                        end

                        @result = dll_copy.map{|x| x}
			}
                        expect(@result).to eq ( @dll2.map{|x| x}.sort{ |a, b| a.gasto_energetico_total <=> b.gasto_energetico_total})
                end


			
                it "Con each" do

			                        
			x.report("each dll"){
			dll_copy = @dll2.map{|x| x}

                        dll_copy.each_index{   |x| dll_copy.each_index{ |y| dll_copy[x],dll_copy[y] = dll_copy[y],dll_copy[x] if dll_copy[x].gasto_energetico_total < dll_copy[y].gasto_energetico_total}}

			@result = dll_copy
			}
                        expect(@result).to eq ( @dll2.map{|x| x}.sort{ |a, b| a.gasto_energetico_total <=> b.gasto_energetico_total})

                end


		
	        it "Con sort" do
		
			x.report("sort dll"){
                        @result = @dll2.map{|x| x}.sort{ |a, b| a.gasto_energetico_total <=> b.gasto_energetico_total}
			}
			for i in 0..@result.size-2
                        	expect(@result[i].gasto_energetico_total).to be <= (@result[i+1].gasto_energetico_total)
			end

                end


	end

	end
end
