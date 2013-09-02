class Greeter
  def self.greeting(name)
    new(name).greeting
  end

  def initialize(name)
    @name = name
  end

  def greeting
    "Hello #{name}"
  end

  private

  attr_reader :name
end
