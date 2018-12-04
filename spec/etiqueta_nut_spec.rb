RSpec.describe Etiqueta_nut do

        before :each do
                @Etiqueta = Etiqueta_nut.new("Gofio",10,10,10,10,10,10,10,10,10,10,10,10,10)
                @Etiqueta2 = Etiqueta_nut.new("Pollo",10,10,10,10,10,10,10,10,10,10,10,10,10)
                @Etiqueta3 = Etiqueta_nut.new("Kiwi",10,10,10,10,10,10,10,10,10,10,10,10,10)
		
        end

describe " # Existen elementos" do

        it "Existe nombre" do
        expect(@Etiqueta.nombre).not_to eq(nil)
        end

	it "Existe Grasa" do
        expect(@Etiqueta.grasas).not_to eq(nil)
        end

        it "Existe Grasas Saturadas" do
        expect(@Etiqueta.grasas_s).not_to eq(nil)
        end

        it "Existe hidratos" do
        expect(@Etiqueta.hidratos).not_to eq(nil)
        end
        it "Existe azucares" do
        expect(@Etiqueta.azucares).not_to eq(nil)
        end
        it "Existe proteinas" do
        expect(@Etiqueta.proteinas).not_to eq(nil)
        end
        it "Existe sal" do
        expect(@Etiqueta.sal).not_to eq(nil)
        end
        it "Existe grasas monoinsaturadas" do
        expect(@Etiqueta.grasas_mon).not_to eq(nil)
        end
	it "Existe grasas polinsaturadas" do
        expect(@Etiqueta.grasas_pol).not_to eq(nil)
        end
        it "Existe polialcoholes" do
        expect(@Etiqueta.polialcoholes).not_to eq(nil)
        end
        it "Existe almidon" do
        expect(@Etiqueta.almidon).not_to eq(nil)
        end
        it "Existe fibra" do
        expect(@Etiqueta.fibra).not_to eq(nil)
        end
        it "Existe vitaminas" do
        expect(@Etiqueta.vitaminas).not_to eq(nil)
        end
        it "Existe minerales" do
        expect(@Etiqueta.minerales).not_to eq(nil)
        end
	end


	describe "# Existen metodos" do

        it "Existe metodo valor energetico" do
	@Etiqueta.valor_energetico()
        expect(@Etiqueta.kcal).not_to eq(nil)
        expect(@Etiqueta.kj).not_to eq(nil)
        end


	 it "Existe metodo para salida formateada" do
        expect(@Etiqueta.to_s).not_to eq(nil)
        end

	 it "Existe metodo para obtener nombre" do
        expect(@Etiqueta.nombre).to eq("Gofio")
        end

        it "Existe metodo para obtener Grasa" do
        expect(@Etiqueta.grasas).to eq(10)
        end

        it "Existe metodo para obtener Grasas Saturadas" do
        expect(@Etiqueta.grasas_s).to eq(10)
        end

        it "Existe metodo para obtener hidratos" do
        expect(@Etiqueta.hidratos).to eq(10)
        end
        it "Existe metodo para obtener azucares" do
        expect(@Etiqueta.azucares).to eq(10)
        end
        it "Existe metodo para obtener proteinas" do
        expect(@Etiqueta.proteinas).to eq(10)
        end
        it "Existe metodo para obtener sal" do
        expect(@Etiqueta.sal).to eq(10)
        end
        it "Existe metodo para obtener grasas monoinsaturadas" do
        expect(@Etiqueta.grasas_mon).to eq(10)
        end
        it "Existe metodo para obtener grasas polinsaturadas" do
        expect(@Etiqueta.grasas_pol).to eq(10)
        end
        it "Existe metodo para obtener polialcoholes" do
        expect(@Etiqueta.polialcoholes).to eq(10)
        end
        it "Existe metodo para obtener almidon" do
        expect(@Etiqueta.almidon).to eq(10)
        end
	 it "Existe metodo para obtener fibra" do
        expect(@Etiqueta.fibra).to eq(10)
        end
        it "Existe metodo para obtener vitaminas" do
        expect(@Etiqueta.vitaminas).to eq(10)
        end
        it "Existe metodo para obtener minerales" do
        expect(@Etiqueta.minerales).to eq(10)
	end
	end	


	describe "#Comparable" do
		it "Los dos operadores son iguales" do
    			expect(@Etiqueta == @Etiqueta).to be(true)
  		end

  		it "El primer operador es menor que el segundo" do
    			expect(@Etiqueta < @Etiqueta2).to be(true)
  		end

  		it "El primer operador es mayor que el segundo" do
    			expect(@Etiqueta2 > @Etiqueta).to be(true)
  		end
		
	        it "El primer operador es menor o igual que el segundo" do
                        expect(@Etiqueta <= @Etiqueta2).to be(true)
                end

                it "El primer operador es mayor o igual que el segundo" do
                        expect(@Etiqueta2 >= @Etiqueta).to be(true)
                end

		it "Between" do
			expect(@Etiqueta3.between?(@Etiqueta, @Etiqueta2)).to be (true)
		end
	end


end

