require 'greeter'

class Greeter
  class CLI
    def initialize(arguments)
      @arguments = arguments
    end

    def run
      puts Greeter.greeting(name)
    end

    private

    def name
      @arguments.first
    end
  end
end
