require 'spec_helper'
require 'greeter/cli'

describe 'The greet command' do
  it 'outputs a greeting for the user' do
    invocation = GreetRunner.run('Matz')

    expect(invocation).to be_successful
    expect(invocation.output).to eq "Hello Matz\n"
    expect(invocation.error_output).to be_empty
  end

  it 'outputs a nice error message when given an invalid name' do
    invocation = GreetRunner.run('#####')

    expect(invocation).not_to be_successful
    expect(invocation.output).to be_empty
    expect(invocation.error_output).to eq "greet: Error: \"#####\" is not a valid name\n"
  end

  it 'outputs a nice usage message when given no arguments' do
    invocation = GreetRunner.run

    expect(invocation).not_to be_successful
    expect(invocation.output).to be_empty
    expect(invocation.error_output).to eq "usage: greet name\n"
    expect(invocation.exit_code).to eq Greeter::CLI::EX_USAGE
  end
end
