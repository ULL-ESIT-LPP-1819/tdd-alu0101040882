RSpec.describe Individuo do

        before :all do

                @p = Individuo.new("Manolo",  15,"M")
        end



        describe " #Pruebas jerarquía" do

                it "La clase es Individuo" do
                        expect(@p).to be_an_instance_of(Individuo)
                end

                it "El objeto es Individuo" do
                        expect(@p).to be_a_kind_of(Individuo)

                end

                it "Pertenece a la jerarquía de clases" do
                        expect(@p).to be_a_kind_of(Individuo)
                end

        end
	describe "#Tipo" do 

                it "Responde a to_s" do
                        expect(@p).to respond_to(:to_s)
                end
        end
	
end


