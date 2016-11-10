# create a new instance of Game
# while game is not over
  # collect user input
  # send user input to our game instance
  # get a response back from our game instance 
  # send the response to the user
require_relative "game_view"
require_relative "game"
require 'pry'

class GameController
  attr_accessor :game_presenter, :game

  def initialize
    self.game_presenter = GameView.new 
    self.game = Game.new(guess_limit.to_i)
  end

  def start_game
    response = ""
    
    until game.game_over?
      board = game.guess_history
      game_presenter.display_board(board)
      game_presenter.send_prompt
      guess = game_presenter.get_user_feedback
      response = game.check_answer(guess)
      game_presenter.print_response(response)
    end

    game.user_wins? ? game_presenter.notify_win : game_presenter.notify_lose
  end

  private

  def guess_limit
    game_presenter.notify_game_start
    game_presenter.get_user_feedback
  end
  
end
