require './scrabble.rb'

describe 'Scrabble' do
  it'returns 8 for the word' do
    game = Scrabble.new
    expect(game.score('word')).to eq(8)
  end

  it 'returns 9 for words' do
    game = Scrabble.new
    expect(game.score('words')).to eq(9)
  end
end
