require 'greeter'

describe Greeter do
  describe '.greeting' do
    it 'returns a greeting' do
      greeting = Greeter.greeting('George')

      expect(greeting).to eq 'Hello George'
    end
  end
end
