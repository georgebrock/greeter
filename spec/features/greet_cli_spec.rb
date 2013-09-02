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
end
