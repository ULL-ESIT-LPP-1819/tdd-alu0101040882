
RSpec.describe Dll do

	before :all do
		@dll = Dll.new()
		@dll.insert_tail(@gofio=Etiqueta_nut.new("Gofio",   10,10,10,10,10,9,10,10,10,10,10,10,10))
		@dll.insert_tail(@pollo=Etiqueta_nut.new("Pollo",   10,10,10,10,10,7,10,10,10,10,10,10,10))
		@dll.insert_tail(@agua=Etiqueta_nut.new("Agua",    10,10,10,10,10,6,10,10,10,10,10,10,10))
		@dll.insert_tail(@arroz=Etiqueta_nut.new("Arroz",   10,10,10,10,10,10,10,10,10,10,10,10,10))
		@dll.insert_tail(@cereales=Etiqueta_nut.new("Cereales",10,10,10,10,10,8,10,10,10,10,10,10,10))


		@dll2 = Dll.new()
		@dll2.insert_tail(@juan =Valores_nut.new(@juan ="Juan",10,"M"))
		@dll2.insert_tail(@pepe=Valores_nut.new(@pepe="Pepe",10,"M"))
		@dll2.insert_tail(@francisco=Valores_nut.new(@francisco="Francisco",10,"M"))
		@dll2.insert_tail(@luis=Valores_nut.new(@luis="Luis",10,"M"))
		@dll2.insert_tail(@andres=Valores_nut.new(@andres="Andrés",10,"M"))
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
		expect(@dll.collect{|x| x.to_s}).not_to eq(nil)
        end
	
	it "select" do
		expect(@dll.select{|x| x == @pollo }) == @pollo
	end
	
	it "max" do

		expect(@dll.max).to eq(@pollo)

	end

        it "max" do

		expect(@dll.min).to eq(@agua)

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
                expect(@dll2.select{|x| x== @juan}) == @juan
        end

        it "max" do

		expect(@dll2.max).to eq(@pepe)

        end

        it "max" do

		expect(@dll2.min).to eq(@andres)

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


