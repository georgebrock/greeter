require 'open3'
require 'shellwords'

class GreetRunner
  attr_reader :output, :error_output

  def self.run(name)
    new(name).tap(&:run)
  end

  def initialize(name)
    @name = name
  end

  def run
    @output, @error_output, @exit_status = Open3.capture3(env, command)
  end

  def successful?
    exit_status.success?
  end

  private

  attr_reader :name, :exit_status

  def env
    { 'RUBYLIB' => lib_path }
  end

  def command
    [executable_path, name].compact.map(&:shellescape).join(' ')
  end

  def lib_path
    File.expand_path('../../../lib', __FILE__)
  end

  def executable_path
    File.expand_path('../../../bin/greet', __FILE__)
  end
end
