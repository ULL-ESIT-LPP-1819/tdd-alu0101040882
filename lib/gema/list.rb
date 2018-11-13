class Dll
	attr_reader :head, :tail, :size

	Node = Struct.new(:value, :next, :prev)
	
	def initialize
		@head = nil
		@tail = nil
		@size = 0
	end
	

	def empty
		@size == 0
	end
		
		
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

	def print
		aux = @head
		
		while aux != nil do
			puts aux.value.to_s
			aux = aux.next
		end
	end

	def reverse_print
		aux = @tail
		
		while aux != nil do
			puts aux.value.to_s
			aux = aux.prev
		end
	end

	def get(n)
		i = 0
		aux = @head
		while i < n do
			aux = aux.next
		i += 1
		end

		return aux
			
	end


	def swap(a, b)
		a.value,a.next,a.prev,b.value,b.next,b.prev=b.value,b.next,b.prev,a.value,a.next,a.prev
	end



	def remove(value)

		node = @head
		while node.value != value do
			node = node.next
		end
		
		if node.value != nil
		
			if node.value != @head.value
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

	def clasify_salt
		i = 0
		sz = @size
				
		sorted_dll = Dll.new()
				
		while i < sz do
			aux = @head
			min = aux.value.sal

			while aux != nil do
				if aux.value < min
					min = aux.value.sal
				end
								
			aux = aux.next					
			end
		
		sorted_dll.insert_tail(min)
		remove(min)
		i+=1	
		end
		
		@head,@tail,@size=sorted_dll.head,sorted_dll.tail,sorted_dll.size
	end
				
					
end


@dll = Dll.new()
@dll.insert_tail(1)
@dll.insert_tail(2)
@dll.insert_tail(3)

@dll.print


@dll.remove(3)
@dll.print
