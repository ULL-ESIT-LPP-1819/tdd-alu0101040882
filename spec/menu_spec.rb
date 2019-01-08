RSpec.describe Menu do

	before :all do
		@menu = Menu.new("Lunes") do
        titulo "Bajo en calorias"

        ingesta :min => 30, :max => 35

        desayuno "Pan de trigo integral",
                :porcion => "1 rodaja",
                :gramos => 100,
                :grasas => 3.3,
                :hidratos => 54.0,
                :proteinas => 11.0,
                :fibra => 2.3,
                :sal => 0.06

        desayuno "Actimel",
                :porcion => "1 porcion",
                :gramos => 100,
                :grasas => 3.4,
                :hidratos => 4.4,
                :proteinas => 3.6,
                :sal => 0.05

        almuerzo "Arroz",
                :porcion => "1 taza",
                :gramos => 100,
                :grasas => 0.9,
                :hidratos => 81.6,
                :proteinas => 6.67,
                :fibra => 1.4,
                :sal => 0.04

        almuerzo  "Lentejas",
                :porcion => "1/2 cuchar´on",
                :grasas => 0.4,
                :hidratos => 20.0,
                :proteinas => 9.0,
                :fibra => 8.0,
                :sal => 0.02

        almuerzo "Naranja",
                :porcion => "1 pieza",
                :gramos => 100,
                :grasas => 0.12,
                :hidratos => 11.75,
                :proteinas => 0.94,
                :fibra => 2.4

        cena    "Leche entera hacendado",
                :porcion => "1 vaso",
                :gramos => 100,
                :grasas => 3.6,
                :hidratos => 4.6,
                :proteinas => 3.1,
                :sal => 0.13


	end


	end


	describe "#DSL" do

		it "Valor energetico" do

			expect(@menu.valor_energetico_total).to eq(978.1200000000001)
		end

		it "to s" do
			expect(@menu.to_s).not_to be(nil)

		end		
		
	end
end
