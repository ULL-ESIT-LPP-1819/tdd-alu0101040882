RSpec.describe Dll do

	before :all do
		@dll = Dll.new()
		@dll.insert_tail(Etiqueta_nut.new("Gofio",   10,10,10,10,10,9,10,10,10,10,10,10,10))
		@dll.insert_tail(Etiqueta_nut.new("Pollo",   10,10,10,10,10,7,10,10,10,10,10,10,10))
		@dll.insert_tail(Etiqueta_nut.new("Agua",    10,10,10,10,10,6,10,10,10,10,10,10,10))
		@dll.insert_tail(Etiqueta_nut.new("Arroz",   10,10,10,10,10,10,10,10,10,10,10,10,10))
		@dll.insert_tail(Etiqueta_nut.new("Cereales",10,10,10,10,10,8,10,10,10,10,10,10,10))
	end

describe " # Funciona correctamente" do
	it "Clasifica sal" do
		@dll.clasify_salt
		aux = @dll.head

		while aux.next != nil do
			expect(aux.value.sal).to be <= aux.next.value.sal	
			aux = aux.next
		end
	end
end

end
