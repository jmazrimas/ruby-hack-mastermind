require_relative 'game.rb'


describe "#game" do

  before do
    @game = Game.new
  end

  describe "game" do
    it "generates a random answer after init" do
      expect(@game.secret_code.length).to eq(4)
    end
  end

end
