class Calculator

	attr_accessor :array

	def initialize(*input)
		if input.size == 0
			@array = input
		else	
			@array = Array.new.push(*input).flatten
			@array.select!{|i| i.is_a?(Numeric) }
		end
	end

	def plus
		@array.inject(){ |i, acc| acc+=i }
	end

	def minus
		0 - plus
	end

	def clear
		@array.clear
	end
end