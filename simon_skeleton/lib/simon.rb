class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    self.take_turn
    until @game_over
      take_turn
    end
    
    game_over_message
    reset_game
    end
  end

  def take_turn
    show_sequence
    require_sequence

    unless @game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    @seq.each do |color|
      puts color
      sleep 0.75
      system["clear"]
      sleep 0.25
    end
  end

  def require_sequence
    puts "enter the sequence with each color separated by a comma, like 'blue,red,green,yellow' and so on..."
    # gets.chomp
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message

  end

  def game_over_message
    puts "WRONG! You lose!"
  end

  def reset_game
    self.sequence_length = 1
    self.game_over = false
    self.seq = []
  end
end
