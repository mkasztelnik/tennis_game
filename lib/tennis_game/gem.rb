class Tennis::Gem
  def initialize(player_one_name, player_two_name)
    @player_one = Player.new(player_one_name)
    @player_two = Player.new(player_two_name)
  end

  def score
    if deuce?
      'Deuce'
    elsif eq?
      "#{@player_one.score} all"
    elsif end?
      "#{winner.name} wins"
    else
      "#{@player_one.score}, #{@player_two.score}"
    end
  end

  def player_one_scores!
    @player_one.score!
  end

  def player_two_scores!
    @player_two.score!
  end

  private

  def deuce?
    @player_one.points == 3 && eq?
  end

  def eq?
    @player_one.points == @player_two.points
  end

  def end?
    points_diff.abs > 1 && winner.points > 3
  end

  def winner
    points_diff > 0 ? @player_one : @player_two
  end

  def points_diff
    @player_one.points - @player_two.points
  end

  class Player
    attr_reader :points, :name

    def initialize(name)
      @points = 0
      @name = name
    end

    def score!
      @points += 1
    end

    def score
      case @points
      when 0 then 'Love'
      when 1 then 'Fifteen'
      when 2 then 'Thirty'
      when 3 then 'Forty'
      end
    end
  end
end