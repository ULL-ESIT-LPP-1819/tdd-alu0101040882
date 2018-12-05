#Lista doblemente enlazada
class Dll
	include Enumerable
	attr_accessor :head, :tail, :size

	Node = Struct.new(:value, :next, :prev)
	
	def initialize
		@head = nil
		@tail = nil
		@size = 0
	end
	
	#Comprueba si la lista esta vacía
	def empty
		@size == 0
	end
		
	#Inserta por la cabeza
	def insert_head(value)

		if empty()
			@head = Node.new(value,nil,nil)
			@tail = @head
		else
			@head.prev = Node.new(value,@head,nil)
			@head = @head.prev;
		end

		@size = @size + 1
			
	end

	#Inserta por la cola
	def insert_tail(value)

		if empty()
			@head = Node.new(value,nil,nil)
			@tail = @head
		else
			@tail.next = Node.new(value,nil,@tail)
			@tail = @tail.next;
		end

		@size = @size + 1
			
	end

	#Extrae por la cabeza
	def extract_head

		aux = @head
		@head = @head.next
		
		if @head != nil
			@tail.next = nil
		else
			@tail = nil
		end
		
		aux.next = nil
		aux.prev = nil

		@size = @size - 1
		return aux
	end


	#Extrae por la cola
	def extract_tail

		aux = @tail
		@tail = @tail.prev
		
		if @tail != nil
			@tail.next = nil
		else
			@head = nil
		end
		
		aux.next = nil
		aux.prev = nil

		@size = @size - 1
		return aux
	end

	#Imprime la lista
	def print
		aux = @head
		
		while aux != nil do
			puts aux.value.to_s
			aux = aux.next
		end
	end

	#Imprime la lista a la inversa
	def reverse_print
		aux = @tail
		
		while aux != nil do
			puts aux.value.to_s
			aux = aux.prev
		end
	end

	#Obtiene el elemento en la posicion n
	def get(n)
		i = 0
		aux = @head
		while i < n do
			aux = aux.next
		i += 1
		end

		return aux
			
	end


	#Elimina el elemento al que corresponda value
	def remove(value)
		
		node = @head
		while node.value.sal != value do
			node = node.next
		end
		
		if node != nil
		
			if node != @head
				node.prev.next = node.next
			else
				@head = node.next
			end

			if node != @tail
				node.next.prev = node.prev
			else
				@tail = node.prev
			end

			@size-=1
		end			
				
	end


	#Clasifica usando la sal
	def clasify_salt

		i = 0
		sz = @size
				
		sorted_dll = Dll.new()
				
		while i < sz do
			aux = @head
			min = aux.value

			while aux != nil do
				if aux.value.sal < min.sal
					min = aux.value
				end
								
			aux = aux.next					
			end
		
		sorted_dll.insert_tail(min)
		remove(min.sal)
		i+=1	
		end

		return sorted_dll		
	end
	

	#Clasifica usando la sal con el metodo de la burbuja
	def salt_bubble	
		i = 1
		
		while i < @size
			j = 0
			aux = @head
			while j < (@size - i)
				if aux.value.sal > aux.next.value.sal
					aux.value, aux.next.value = aux.next.value, aux.value
				end
				aux = aux.next
				j+=1	
			end	
			i+=1
		end		
		
	end				
		
	#Metodo each utilizado para poder hacer uso del modulo Enumerable
	def each
		aux = @head
                while aux != nil do
			yield aux.value
                        aux = aux.next

                end

	end					

			
end


