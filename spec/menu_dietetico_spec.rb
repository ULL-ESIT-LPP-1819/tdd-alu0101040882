RSpec.describe Menu_dietetico do

	before :all do
		
		paciente =  Paciente_obeso.new("Manolo",  15,"M",62,1.71,0,30,30)
		paciente.peso_teorico_ideal
		paciente.gasto_energetico_basal
		paciente.efecto_termogeno
		paciente.factor_actividad_fisica("Actividad Intensa")
		paciente.gasto_actividad_fisica
		paciente.gasto_energetico_total

                paciente1 =  Paciente_obeso.new("Juan",  16,"M",61,1.71,0,30,30)
                paciente1.peso_teorico_ideal
                paciente1.gasto_energetico_basal
                paciente1.efecto_termogeno
                paciente1.factor_actividad_fisica("Reposo")
                paciente1.gasto_actividad_fisica
                paciente1.gasto_energetico_total
		

                paciente2 =  Paciente_obeso.new("Pepe",  15,"M",62,1.71,0,30,30)
                paciente2.peso_teorico_ideal
                paciente2.gasto_energetico_basal
                paciente2.efecto_termogeno
                paciente2.factor_actividad_fisica("Actividad moderada")
                paciente2.gasto_actividad_fisica
                paciente2.gasto_energetico_total


                paciente3 =  Paciente_obeso.new("Francsico",  15,"M",62,1.71,0,30,30)
                paciente3.peso_teorico_ideal
                paciente3.gasto_energetico_basal
                paciente3.efecto_termogeno
                paciente3.factor_actividad_fisica("Actividad ligera")
                paciente3.gasto_actividad_fisica
                paciente3.gasto_energetico_total


                paciente4 =  Paciente_obeso.new("Daniel",  15,"M",62,1.71,0,30,30)
                paciente4.peso_teorico_ideal
                paciente4.gasto_energetico_basal
                paciente4.efecto_termogeno
                paciente4.factor_actividad_fisica("Actividad Intensa")
                paciente4.gasto_actividad_fisica
                paciente4.gasto_energetico_total



		@m = Menu_dietetico.new(paciente)

		@m.añadir_alimento(Etiqueta_nut.new("Agua",    1,1,1,1,1,1,1,1,1,1,1,1,1))
		@m.añadir_alimento(Etiqueta_nut.new("Gofio",   1,1,1,1,1,1,1,1,1,1,1,1,1))
		@m.añadir_alimento(Etiqueta_nut.new("Pavo",   1,1,1,1,1,1,1,1,1,1,1,1,1))
		@m.añadir_alimento(Etiqueta_nut.new("Pescado",   1,1,1,1,1,1,1,1,1,1,1,1,1))
		@m.añadir_alimento(Etiqueta_nut.new("Pollo",   1,1,1,1,1,1,1,1,1,1,1,1,1))
		@m.añadir_alimento(Etiqueta_nut.new("Arroz",   1,1,1,1,1,1,1,1,1,1,1,1,1))


		
		@m1 = Menu_dietetico.new(paciente1)

		@m1.añadir_alimento(Etiqueta_nut.new("Agua",    1,1,1,1,1,1,1,1,1,1,1,1,1))
		@m1.añadir_alimento(Etiqueta_nut.new("Pollo",   1,1,1,1,1,1,1,1,1,1,1,1,1))
		@m1.añadir_alimento(Etiqueta_nut.new("Ternera",   1,1,1,1,1,1,1,1,1,1,1,1,1))
		@m1.añadir_alimento(Etiqueta_nut.new("Chocolate",   1,1,1,1,1,1,1,1,1,1,1,1,1))
		@m1.añadir_alimento(Etiqueta_nut.new("Azucar",   1,1,1,1,1,1,1,1,1,1,1,1,1))
		@m1.añadir_alimento(Etiqueta_nut.new("Gofio",   1,1,1,1,1,1,1,1,1,1,1,1,1))



		
		@m2 = Menu_dietetico.new(paciente2)

		@m2.añadir_alimento(Etiqueta_nut.new("Agua",    1,1,1,1,1,1,1,1,1,1,1,1,1))
		@m2.añadir_alimento(Etiqueta_nut.new("Gofio",   1,1,1,1,1,1,1,1,1,1,1,1,1))
		@m2.añadir_alimento(Etiqueta_nut.new("Azucar",   1,1,1,1,1,1,1,1,1,1,1,1,1))
		@m2.añadir_alimento(Etiqueta_nut.new("Mermelada",   1,1,1,1,1,1,1,1,1,1,1,1,1))
		@m2.añadir_alimento(Etiqueta_nut.new("Nutella",   1,1,1,1,1,1,1,1,1,1,1,1,1))
		@m2.añadir_alimento(Etiqueta_nut.new("Arroz",   1,1,1,1,1,1,1,1,1,1,1,1,1))


		@m3 = Menu_dietetico.new(paciente)

		@m3.añadir_alimento(Etiqueta_nut.new("Agua",    1,1,1,1,1,1,1,1,1,1,1,1,1))
		@m3.añadir_alimento(Etiqueta_nut.new("Gofio",   1,1,1,1,1,1,1,1,1,1,1,1,1))
		@m3.añadir_alimento(Etiqueta_nut.new("Lentejas",   1,1,1,1,1,1,1,1,1,1,1,1,1))
		@m3.añadir_alimento(Etiqueta_nut.new("Sopa",   1,1,1,1,1,1,1,1,1,1,1,1,1))
		@m3.añadir_alimento(Etiqueta_nut.new("cacao",   1,1,1,1,1,1,1,1,1,1,1,1,1))
		@m3.añadir_alimento(Etiqueta_nut.new("Cereales",   1,1,1,1,1,1,1,1,1,1,1,1,1))



		@m4 = Menu_dietetico.new(paciente)

		@m4.añadir_alimento(Etiqueta_nut.new("Agua",    1,1,1,1,1,1,1,1,1,1,1,1,1))
		@m4.añadir_alimento(Etiqueta_nut.new("Gofio",   1,1,1,1,1,1,1,1,1,1,1,1,1))
		@m4.añadir_alimento(Etiqueta_nut.new("Calamares",   1,1,1,1,1,1,1,1,1,1,1,1,1))
		@m4.añadir_alimento(Etiqueta_nut.new("Coca cola",   1,1,1,1,1,1,1,1,1,1,1,1,1))
		@m4.añadir_alimento(Etiqueta_nut.new("Ajo",   1,1,1,1,1,1,1,1,1,1,1,1,1))
		@m4.añadir_alimento(Etiqueta_nut.new("Jamon",   1,1,1,1,1,1,1,1,1,1,1,1,1))

                @m5 = Menu_dietetico.new(paciente)

                @m5.añadir_alimento(Etiqueta_nut.new("Agua",    1,1,1,1,1,1,1,1,1,1,1,1,1))
                @m5.añadir_alimento(Etiqueta_nut.new("Gofio",   1,1,1,1,1,1,1,1,1,1,1,1,1))
                @m5.añadir_alimento(Etiqueta_nut.new("Calamares",   1,1,1,1,1,1,1,1,1,1,1,1,1))
                @m5.añadir_alimento(Etiqueta_nut.new("Coca cola",   1,1,1,1,1,1,1,1,1,1,1,1,1))
                @m5.añadir_alimento(Etiqueta_nut.new("Ajo",   1,1,1,1,1,1,1,1,1,1,1,1,1))
                @m5.añadir_alimento(Etiqueta_nut.new("Jamon",   1,1,1,1,1,1,1,1,1,1,1,1,1))

                @m6 = Menu_dietetico.new(paciente)

                @m6.añadir_alimento(Etiqueta_nut.new("Agua",    1,1,1,1,1,1,1,1,1,1,1,1,1))
                @m6.añadir_alimento(Etiqueta_nut.new("Gofio",   1,1,1,1,1,1,1,1,1,1,1,1,1))
                @m6.añadir_alimento(Etiqueta_nut.new("Calamares",   1,1,1,1,1,1,1,1,1,1,1,1,1))
                @m6.añadir_alimento(Etiqueta_nut.new("Coca cola",   1,1,1,1,1,1,1,1,1,1,1,1,1))
                @m6.añadir_alimento(Etiqueta_nut.new("Ajo",   1,1,1,1,1,1,1,1,1,1,1,1,1))
                @m6.añadir_alimento(Etiqueta_nut.new("Jamon",   1,1,1,1,1,1,1,1,1,1,1,1,1))

                @m7 = Menu_dietetico.new(paciente)

                @m7.añadir_alimento(Etiqueta_nut.new("Agua",    1,1,1,1,1,1,1,1,1,1,1,1,1))
                @m7.añadir_alimento(Etiqueta_nut.new("Gofio",   1,1,1,1,1,1,1,1,1,1,1,1,1))
                @m7.añadir_alimento(Etiqueta_nut.new("Calamares",   1,1,1,1,1,1,1,1,1,1,1,1,1))
                @m7.añadir_alimento(Etiqueta_nut.new("Coca cola",   1,1,1,1,1,1,1,1,1,1,1,1,1))
                @m7.añadir_alimento(Etiqueta_nut.new("Ajo",   1,1,1,1,1,1,1,1,1,1,1,1,1))
                @m7.añadir_alimento(Etiqueta_nut.new("Jamon",   1,1,1,1,1,1,1,1,1,1,1,1,1))

                @m8 = Menu_dietetico.new(paciente)

                @m8.añadir_alimento(Etiqueta_nut.new("Agua",    1,1,1,1,1,1,1,1,1,1,1,1,1))
                @m8.añadir_alimento(Etiqueta_nut.new("Gofio",   1,1,1,1,1,1,1,1,1,1,1,1,1))
                @m8.añadir_alimento(Etiqueta_nut.new("Calamares",   1,1,1,1,1,1,1,1,1,1,1,1,1))
                @m8.añadir_alimento(Etiqueta_nut.new("Coca cola",   1,1,1,1,1,1,1,1,1,1,1,1,1))
                @m8.añadir_alimento(Etiqueta_nut.new("Ajo",   1,1,1,1,1,1,1,1,1,1,1,1,1))
                @m8.añadir_alimento(Etiqueta_nut.new("Jamon",   1,1,1,1,1,1,1,1,1,1,1,1,1))

                @m9 = Menu_dietetico.new(paciente)

                @m9.añadir_alimento(Etiqueta_nut.new("Agua",    1,1,1,1,1,1,1,1,1,1,1,1,1))
                @m9.añadir_alimento(Etiqueta_nut.new("Gofio",   1,1,1,1,1,1,1,1,1,1,1,1,1))
                @m9.añadir_alimento(Etiqueta_nut.new("Calamares",   1,1,1,1,1,1,1,1,1,1,1,1,1))
                @m9.añadir_alimento(Etiqueta_nut.new("Coca cola",   1,1,1,1,1,1,1,1,1,1,1,1,1))
                @m9.añadir_alimento(Etiqueta_nut.new("Ajo",   1,1,1,1,1,1,1,1,1,1,1,1,1))
                @m9.añadir_alimento(Etiqueta_nut.new("Jamon",   1,1,1,1,1,1,1,1,1,1,1,1,1))



		@menus = Dll.new()
		@menus.insert_tail(@m)
		@menus.insert_tail(@m1)
		@menus.insert_tail(@m2)
		@menus.insert_tail(@m3)
		@menus.insert_tail(@m4)

		@arr_menus = [@m,@m1,@m2,@m3,@m4,@m5,@m6,@m7,@m8,@m9]

	end	

	describe " #Verificar menu" do

        	it "Se verifican los menus correctamente" do
                	expect(@menus.collect{|m| m.verificacion_menu}).to be == [true,false,false,true,true]
        	end

	end
	describe "#Ordenaciones del  array" do
		Benchmark.bm do |x|

                it "Con bucle for" do


			x.report("for arr:"){

                        arr_copy = @arr_menus.dup

                        for i in 1..arr_copy.size
                                for j in 0..arr_copy.size-1-i

                                        if arr_copy[i].valor_energetico > arr_copy[j].valor_energetico
						arr_copy[i], arr_copy[j] = arr_copy[j], arr_copy[i]
                                        end

                                end
                        end

                        @result = arr_copy

			}

                        expect(@result).to eq ( @arr_menus.sort{ |a, b| a.valor_energetico <=> b.valor_energetico})
                end



                it "Con each" do

	
			x.report("each arr:") {
                        arr_copy = @arr_menus.dup

                        arr_copy.each_index{ |x| arr_copy.each_index{ |y| arr_copy[x],dll_copy[y] = arr_copy[y],dll_copy[x] if arr_copy[x].valor_energetico < arr_copy[y].valor_energetico}}

                        @result = arr_copy
			}
                        expect(@result).to eq ( @arr_menus.sort{ |a, b| a.valor_energetico <=> b.valor_energetico})

                end



                it "Con sort" do

			x.report("sort arr:"){
                        @result = @arr_menus.map{|x| x}.sort{ |a, b| a.valor_energetico <=> b.valor_energetico}
			}

                        for i in 0..@result.size-2
                                expect(@result[i].valor_energetico).to be <= (@result[i+1].valor_energetico)
                        end

                end


        end
	end
end
