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
end
