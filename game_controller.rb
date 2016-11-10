# create a new instance of Game
# while game is not over
  # collect user input
  # send user input to our game instance
  # get a response back from our game instance 
  # send the response to the user
class GameController
  attr_accessor :game_presenter, :game

  def initialize
    game_presenter = GameView.new 
    game = Game.new
  end

  def start_game
    game_presenter.notify_game_start

    number_of_guesses = game_presenter.get_user_feedback

    response = ""
    guess_number = 0
    
    until response == "bbbb" || guess_number > number_of_guesses
      guess_number += 1
      game_presenter.send_prompt(guess_number)
      guess = game_presenter.get_user_feedback
      response = game.check_answer(guess)
      game_presenter.print_response(response)
    end

    if response == "bbbb"
      game_presenter.notify_win 
    else 
      game_presenter.notify_lose
    end
  end
  
end
