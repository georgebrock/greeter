class Greeter
  class BadNameError < StandardError; end

  VALID_NAME_REGEXP = /^\w+$/.freeze

  def self.greeting(name)
    new(name).greeting
  end

  def initialize(name)
    @name = name
  end

  def greeting
    if valid_name?
      "Hello #{name}"
    else
      raise BadNameError, "#{name.inspect} is not a valid name"
    end
  end

  private

  attr_reader :name

  def valid_name?
    name =~ VALID_NAME_REGEXP
  end
end
