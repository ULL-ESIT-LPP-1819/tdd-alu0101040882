RSpec.describe Valores_nut do

	before :each do
                @valor1 = Valores_nut.new("Juan",13,"M")
                @valor2 = Valores_nut.new("Pepe",13,"M")
                @valor3 = Valores_nut.new("Luis",13,"M")
	end



        describe "#Comparable" do
                it "Los dos operadores son iguales" do
                        expect(@valor1 == @valor1).to be(true)
                end
		
                it "El primer operador es menor que el segundo" do
                        expect(@valor1 < @valor2).to be(true)
                end

                it "El primer operador es mayor que el segundo" do
                        expect(@valor2 > @valor1).to be(true)
                end

                it "El primer operador es menor o igual que el segundo" do
                        expect(@valor1 <= @valor2).to be(true)
                end

                it "El primer operador es mayor o igual que el segundo" do
                        expect(@valor2 >= @valor1).to be(true)
                end

                it "Between" do
                        expect(@valor3.between?(@valor1, @valor2)).to be (true)
                end
	end
end

