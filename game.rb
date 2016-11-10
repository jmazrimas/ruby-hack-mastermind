class Game

  attr_reader :secret_code

  def initialize
    @possible_colors = ['R','O','Y','G','B','W']
    @rows = 12
    @secret_code = generate_code(@possible_colors)
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


  end


end