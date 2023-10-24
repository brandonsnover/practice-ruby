class BowlingGame
  def initialize
    @rolls = []
  end

  def roll(pins)
    @rolls << pins
  end

  def score
    total_score = 0
    roll_index = 0

    10.times do
      if strike?(roll_index)
        total_score += 10 + strike_bonus(roll_index)
        roll_index += 1
      elsif spare?(roll_index)
        total_score += 10 + spare_bonus(roll_index)
        roll_index += 2
      else
        total_score += standard_frame_score(roll_index)
        roll_index += 2
      end
    end

    total_score
  end

  def strike?(roll_index)
    @rolls[roll_index] == 10
  end

  def spare?(roll_index)
    @rolls[roll_index] + @rolls[roll_index + 1] == 10
  end

  def strike_bonus(roll_index)
    @rolls[roll_index + 1] + @rolls[roll_index + 2]
  end

  def spare_bonus(roll_index)
    @rolls[roll_index + 2]
  end

  def standard_frame_score(roll_index)
    @rolls[roll_index] + @rolls[roll_index + 1]
  end
end

# Example usage:
game = BowlingGame.new
# Enter the rolls for the game:
rolls = [10, 3, 5, 5, 2, 5, 7, 2, 10, 8, 0, 10, 10, 10, 8, 1, 9, 1, 10, 9]
rolls.each { |pins| game.roll(pins) }

# Calculate the final score
final_score = game.score
puts "Final Score: #{final_score}"
