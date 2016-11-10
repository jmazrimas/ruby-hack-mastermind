class Game

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

end