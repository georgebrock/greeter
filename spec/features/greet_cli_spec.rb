require 'spec_helper'

describe 'The greet command' do
  it 'outputs a greeting for the user' do
    invocation = GreetRunner.run('Matz')

    expect(invocation.output).to eq "Hello Matz\n"
  end

  it 'outputs a nice error message when given an invalid name' do
    invocation = GreetRunner.run('#####')

    expect(invocation.output).to eq "greet: Error: \"#####\" is not a valid name\n"
  end

  it 'outputs a nice usage message when given no arguments' do
    invocation = GreetRunner.run

    expect(invocation.output).to eq "usage: greet name\n"
  end
end
