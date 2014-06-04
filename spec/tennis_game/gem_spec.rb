require 'tennis_game'

describe Tennis::Gem do

  it 'starts from "Love all"' do
    expect(subject.score).to eq 'Love all'
  end
end