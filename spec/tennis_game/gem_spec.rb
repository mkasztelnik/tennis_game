require 'tennis_game'

describe Tennis::Gem do

  it 'starts from "Love all"' do
    expect(subject.score).to eq 'Love all'
  end

  it 'scores "Fifteen, Love" when first user wins first ball' do
    subject.player_one_scores!

    expect(subject.score).to eq 'Fifteen, Love'
  end

  it 'scores "Love, Fifteen" when second user wins first ball' do
    subject.player_two_scores!

    expect(subject.score).to eq 'Love, Fifteen'
  end

  it 'scores "Fifteen all" when 1:1' do
    subject.player_one_scores!
    subject.player_two_scores!

    expect(subject.score).to eq 'Fifteen all'
  end

  it 'scores "Thirty, Love" when 2:0' do
    2.times { subject.player_one_scores! }

    expect(subject.score).to eq 'Thirty, Love'
  end
end