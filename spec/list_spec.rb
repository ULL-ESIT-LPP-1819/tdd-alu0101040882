RSpec.describe Etiqueta_nut do

	before :all do
		@dll = Dll.new()
		@dll.insert(Etiqueta_nut.new("Gofio",10,10,10,10,10,10,10,10,10,10,10,10,10))
		@dll.insert(Etiqueta_nut.new("Pollo",10,10,10,10,10,10,10,10,10,10,10,10,10))
		@dll.insert(Etiqueta_nut.new("Agua",10,10,10,10,10,10,10,10,10,10,10,10,10))
		@dll.insert(Etiqueta_nut.new("Arroz",10,10,10,10,10,10,10,10,10,10,10,10,10))
		@dll.insert(Etiqueta_nut.new("Cereales",10,10,10,10,10,10,10,10,10,10,10,10,10))
	end

describe "# Funciona correctamente" do
	it "Clasifica sal"

		@dll.clasify_salt
		aux = @head
		
		while aux != nil do
			expect(aux.value).to be <= aux.next.value
			aux = aux.next
		end
	end
end

end
