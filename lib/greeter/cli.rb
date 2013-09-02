require 'greeter'

class Greeter
  class CLI
    def initialize(arguments)
      @arguments = arguments
    end

    def run
      if valid_arguments?
        puts Greeter.greeting(name)
      else
        puts 'usage: greet name'
      end
    end

    private

    def name
      @arguments.first
    end

    def valid_arguments?
      @arguments.length == 1
    end
  end
end
