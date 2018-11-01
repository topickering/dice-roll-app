require 'dice'

RSpec.describe Dice do

  it 'returns a number between 1 and 6 when rolled' do
    n = rand(10)
    expect(subject.roll(n)[n-1]).to be_between(1, 6)
  end

  it 'allows any number of dice to be rolled' do
    expect(subject).to respond_to(:roll).with(1) .argument
  end

  it 'shows the result of each roll' do
    n = rand(10)
    expect(subject.roll(n).count).to eq(n)
  end

end
