class Tennis::Gem
  def initialize
    @player_one = Player.new
    @player_two = Player.new
  end

  def score
    if eq?
      'Love all'
    else
      "#{@player_one.score}, #{@player_two.score}"
    end
  end

  def player_one_scores
    @player_one.score!
  end

  def player_two_scores
    @player_two.score!
  end

  private

  def eq?
    @player_one.points == @player_two.points
  end

  class Player
    attr_reader :points

    def initialize
      @points = 0
    end

    def score!
      @points += 1
    end

    def score
      case @points
      when 0 then 'Love'
      when 1 then 'Fifteen'
      end
    end
  end
end