require 'greeter'

class Greeter
  class CLI
    EX_USAGE = 64

    def initialize(arguments)
      @arguments = arguments
    end

    def run
      if valid_arguments?
        $stdout.puts Greeter.greeting(name)
      else
        $stderr.puts 'usage: greet name'
        exit EX_USAGE
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
