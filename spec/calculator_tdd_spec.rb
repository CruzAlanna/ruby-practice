require_relative '../tdd'

RSpec.describe Calculator do 
  let(:calculator) { Calculator.new }

  describe '#add' do
    it 'adds two numbers and gets the sum' do
      expect(calculator.add(10, 5)).to eq(15)
    end
  end

  describe '#subtract' do
    it 'subtracts two numbers and gets the difference' do
      expect(calculator.subtract(10, 5)).to eq(5)
    end
  end

  describe '#multiply' do
    it 'multiply two numbers and gets the product' do
      expect(calculator.multiply(10, 5)).to eq(50)
    end
  end

  describe '#divide' do
    it 'divide two numbers and gets the quotient' do
      expect(calculator.divide(10, 5)).to eq(2)
    end
  end
end