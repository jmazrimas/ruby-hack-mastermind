require_relative "game_controller"
require 'pry'
RSpec.describe GameController do 
  let(:controller) { GameController.new }

  describe "#initialize" do
    it "has a game presenter" do
      expect(controller.game_presenter).to be_an_instance_of(GameView)
    end

    it "has a game object" do
      expect(controller.game).to be_an_instance_of(Game)
    end
  end

  describe "#specify_guess_limit" do
    it "sets an instance variable for guess limit" do
      expect(controller.game_presenter).to receive(:get_user_feedback).and_return(10)
      controller.specify_guess_limit
      expect(controller.number_of_guesses).to eq(10)
    end
  end

  describe "#start_game" do

  end
end
