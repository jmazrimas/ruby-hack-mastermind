class GameView
  def notify_game_start
    puts "You started a new game of Mastermind, enter the number of guesses (8, 10, 12): "
  end

  def display_board(board)
    # board => [ {user_guess: "..." , feedback: "..."}, {...} ]
    board.each do |row|
      puts row[:user_guess] + "\t" + row[:feedback]
    end
  end 

  def send_prompt(guess_number)
    puts "Please enter Guess #{guess_number}: "
  end

  def get_user_feedback
    gets.chomp
  end

  def notify_win
    puts "You win!"
  end

  def notify_lose
    puts "You lose!"
  end

  def print_response(response)
    puts response
  end
end
