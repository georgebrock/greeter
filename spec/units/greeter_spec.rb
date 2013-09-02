require 'greeter'

describe Greeter do
  describe '.greeting' do
    it 'returns a greeting' do
      greeting = Greeter.greeting('George')

      expect(greeting).to eq 'Hello George'
    end

    it 'raises an exception when given the name a nil name' do
      greet = -> { Greeter.greeting(nil) }

      expect(greet).to raise_exception Greeter::BadNameError
    end

    it 'raises an exception when given non-alphanumeric characters' do
      greet = -> { Greeter.greeting('!%@#') }

      expect(greet).to raise_exception Greeter::BadNameError
    end
  end
end
