
RSpec.describe Dll do

	before :all do
		@dll = Dll.new()
		@dll.insert_tail(Etiqueta_nut.new("Gofio",   10,10,10,10,10,9,10,10,10,10,10,10,10))
		@dll.insert_tail(Etiqueta_nut.new("Pollo",   10,10,10,10,10,7,10,10,10,10,10,10,10))
		@dll.insert_tail(Etiqueta_nut.new("Agua",    10,10,10,10,10,6,10,10,10,10,10,10,10))
		@dll.insert_tail(Etiqueta_nut.new("Arroz",   10,10,10,10,10,10,10,10,10,10,10,10,10))
		@dll.insert_tail(Etiqueta_nut.new("Cereales",10,10,10,10,10,8,10,10,10,10,10,10,10))


		@dll2 = Dll.new()
		@dll2.insert_tail(Valores_nut.new("Juan",10,"M"))
		@dll2.insert_tail(Valores_nut.new("Pepe",10,"M"))
		@dll2.insert_tail(Valores_nut.new("Francisco",10,"M"))
		@dll2.insert_tail(Valores_nut.new("Luis",10,"M"))
		@dll2.insert_tail(Valores_nut.new("Andrés",10,"M"))
	end




describe " #Metodos básicos" do
	it "Existe constructor" do
		expect(Dll.new).not_to be == nil
	end
	
	it "Inserta elementos por la cola" do
		expect(Dll.new.insert_tail(1)).not_to be == nil
	end

	it "Inserta elementos por la cabeza" do
		expect(Dll.new.insert_head(1)).not_to be == nil
	end

	it "Extrae elementos por la cabeza" do
		list = Dll.new
		list.insert_tail(1)
		list.insert_tail(2)
		expect(list.head.value).to be == list.extract_head.value
	end
	it "Extrae elementos por la cola" do
                list = Dll.new
                list.insert_tail(1)
                list.insert_tail(2)
                expect(list.tail.value).to be == list.extract_tail.value
	end
	
		
end




describe " # Clasificacion" do
	it "Clasifica sal" do
		@dll.salt_bubble
		aux = @dll.head

		while aux.next != nil do
			expect(aux.value.sal).to be <= aux.next.value.sal	
			aux = aux.next
		end
	end
end

describe " #Enumerable etiqueta nutricional" do
        it "collect" do
		expect(@dll2.collect{|x| x.to_s}).not_to eq(nil)
        end
	
	it "select" do
		expect(@dll2.select{}).not_to eq(nil)
	end
	
	it "max" do

		expect(@dll.max).to eq(Etiqueta_nut.new("Pollo",10,10,10,10,10,6,10,10,10,10,10,10,10))

	end

        it "max" do

		expect(@dll.min).to eq(Etiqueta_nut.new("Agua",10,10,10,10,10,6,10,10,10,10,10,10,10))

        end


	it "sort" do
		sorted_arr = @dll.sort
		
		i = 0
		while(i < sorted_arr.length-1)
			expect(sorted_arr[i] < sorted_arr[i+1]).to eq (true)
			i = i + 1
		end
	end
end

describe " #Enumerable valoracion nutricional" do
        it "collect" do
                expect(@dll2.collect{|x| x.to_s}).not_to eq(nil)
        end

        it "select" do
                expect(@dll2.select{}).not_to eq(nil)
        end

        it "max" do

		expect(@dll2.max).to eq(Valores_nut.new("Pepe",10,"M"))

        end

        it "max" do

		expect(@dll2.min).to eq(Valores_nut.new("Andrés",10,"M"))

        end



        it "sort" do
                sorted_arr = @dll2.sort

                i = 0
                while(i < sorted_arr.length-1)
                        expect(sorted_arr[i] < sorted_arr[i+1]).to eq (true)
                        i = i + 1
                end
        end

end



end


