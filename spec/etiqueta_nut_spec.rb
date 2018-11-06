RSpec.describe Etiqueta_nut do

        before :each do
                @Etiqueta = Etiqueta_nut.new("Gofio",10,10,10,10,10,10,10,10,10,10,10,10,10)
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


end
