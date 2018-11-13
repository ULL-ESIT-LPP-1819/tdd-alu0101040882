RSpec.describe Etiqueta_nut do

	before :all do
		@dll = Dll.new()
		@dll.insert(Etiqueta_nut.new("Gofio",10,10,10,10,10,10,10,10,10,10,10,10,10))
		@dll.insert(Etiqueta_nut.new("Pollo",10,10,10,10,10,10,10,10,10,10,10,10,10))
		@dll.insert(Etiqueta_nut.new("Agua",10,10,10,10,10,10,10,10,10,10,10,10,10))
		@dll.insert(Etiqueta_nut.new("Arroz",10,10,10,10,10,10,10,10,10,10,10,10,10))
		@dll.insert(Etiqueta_nut.new("Cereales",10,10,10,10,10,10,10,10,10,10,10,10,10))
	end
end
