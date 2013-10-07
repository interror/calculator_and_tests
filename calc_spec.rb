require 'rspec'
require './calc.rb'

describe Calculator do 

	describe '#new' do
		it 'empty array' do
			Calculator.new.array.should == []
		end

		it 'input only numbers or array of numbers' do
			c = Calculator.new(1,2,'ass',:sum, [1,2])
			c.array.should == [1,2,1,2]
		end
	end

	describe '#plus' do
		it 'it must return sum of all numbers in array' do
			Calculator.new(2,2,2).plus.should == 6
			Calculator.new(1,2,[1,2,'as'],:hash_mmm).plus.should == 6
		end
	end

	describe '#minus' do
		it 'it must return sum of all numbers but with one condition, it must has minus sign' do
			Calculator.new(2,2,2).minus.should == -6
			Calculator.new(1,2,[1,2,'as'],:hash_mmm).minus.should == -6
		end
	end

	describe '#clear' do
		it 'it must return ampty, and only ampty ARRAY' do
			Calculator.new(2,2,2).clear.should == []
		end
	end

end