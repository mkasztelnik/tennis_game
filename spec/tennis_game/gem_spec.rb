require 'tennis_game'

describe Tennis::Gem do
  subject { Tennis::Gem.new('Foo', 'Bar') }

  it 'starts from "Love all"' do
    expect(subject.score).to eq 'Love all'
  end

  it 'scores "Fifteen, Love" when first user wins first ball' do
    score(1, 0)

    expect(subject.score).to eq 'Fifteen, Love'
  end

  it 'scores "Love, Fifteen" when second user wins first ball' do
    score(0, 1)

    expect(subject.score).to eq 'Love, Fifteen'
  end

  it 'scores "Fifteen all" when 1:1' do
    score(1, 1)

    expect(subject.score).to eq 'Fifteen all'
  end

  it 'scores "Thirty, Love" when 2:0' do
    score(2, 0)

    expect(subject.score).to eq 'Thirty, Love'
  end

  it 'scores "Love, Forty" when 0:3' do
    score(0, 3)

    expect(subject.score).to eq 'Love, Forty'
  end

  it 'scores "Deuce" when 3:3' do
    score(3, 3)

    expect(subject.score).to eq 'Deuce'
  end

  it 'first user wins' do
    score(4, 0)

    expect(subject.score).to eq 'Foo wins'
  end

  it 'second user wins' do
    score(2, 4)

    expect(subject.score).to eq 'Bar wins'
  end

  it '"Advantage Foo" when 4:3' do
    score(4, 3)

    expect(subject.score).to eq 'Advantage Foo'
  end

  it '"Advantage Bar" when 4:5' do
    score(4, 5)

    expect(subject.score).to eq 'Advantage Bar'
  end

  def score(player_one_points, player_two_points)
    player_one_points.times { subject.player_one_scores! }
    player_two_points.times { subject.player_two_scores! }
  end
end