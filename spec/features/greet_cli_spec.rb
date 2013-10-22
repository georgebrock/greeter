require 'spec_helper'

describe 'The greet command' do
  it 'outputs a greeting for the user' do
    invocation = GreetRunner.run('Matz')

    expect(invocation.output).to eq "Hello Matz\n"
  end
end
