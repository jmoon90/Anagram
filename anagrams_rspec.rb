require_relative 'anagram_generator.rb'

describe AnagramGenerator do

  it 'returns an argument message if a blanks string is passed' do
    expect { AnagramGenerator.new('').generate }.to raise_error(ArgumentError, "It can't be a blank string")
  end

  it 'should return the letter if it is only 1 letter' do
    expect(AnagramGenerator.new("h").generate).to eql ([])
  end

  it 'should takes a 2 letter word and create 2 word' do
    expect(AnagramGenerator.new('ab').generate).to eql (['ba'])
  end

  it 'should takes a 3 letter word and create 5 word' do
    expect(AnagramGenerator.new('dog').generate).to include('dgo','odg','ogd','god','gdo')
  end
end
