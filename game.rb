class Game

  attr_accessor :secret_code
  attr_reader :guesses

  def initialize
    @possible_colors = ['R','O','Y','G','B','W']
    @rows = 12
    @guesses = 0
    @secret_code = generate_code(@possible_colors)
    @user_wins = false
  end

  # returns random array
  def generate_code(possible_colors)
    secret_code = []

    4.times do
      secret_code << possible_colors.sample
    end

    secret_code
  end

  # takes guess as string, returns string of Bs and Ws
  def check_answer(user_guess)
    add_guess
    answer_copy = @secret_code.dup
    feedback = ''

    user_guess.each_char.with_index do |char, i|
      if char == @secret_code[i]
        feedback << "B"
        answer_copy[i] = nil
      elsif answer_copy.include?(char)
        feedback << "W"
        answer_copy[answer_copy.index(char)] = nil
      end
    end
    update_win(feedback)
    feedback.chars.sort.join("")
  end

  def add_guess
    @guesses += 1
  end

  def game_over?
    @guesses == @rows
  end

  def user_wins?
    @user_win
  end

  def update_win(feedback)
    if feedback == "BBBB"
      @user_win = true
    end
  end


end
