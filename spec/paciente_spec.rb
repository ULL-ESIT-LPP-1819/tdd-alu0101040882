RSpec.describe Paciente do

        before :all do

                @p = Paciente.new("Manolo",  15,"M")
        end




        describe " #Pruebas jerarquía" do

                it "La clase es Paciente" do
                        expect(@p).to be_an_instance_of(Paciente)
                end

                it "El objeto es Paciente" do
                        expect(@p).to be_a_kind_of (Paciente)

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
