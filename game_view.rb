class GameView
  def notify_game_start
    puts "You started a new game of Mastermind, enter the number of guesses (8, 10, 12): "
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
