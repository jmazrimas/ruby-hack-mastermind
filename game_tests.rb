require_relative 'game.rb'


describe "#game" do

  before do
    @game = Game.new
    @game.secret_code = ["Y","Y","B","G"]
  end

  describe "game" do
    it "generates a random answer after init" do
      expect(@game.secret_code.length).to eq(4)
    end

    it "will respond with black pegs to an accurate color position" do
      expect(@game.check_answer("YYXX")).to eq("BB")
    end

    it "will return an empty string for a completely wrong answer" do
      expect(@game.check_answer("XXXX")).to eq("")
    end

    it "will respond with a white peg" do
      expect(@game.check_answer("YYGX")).to eq("BBW")
    end

    it "will return the answer in ordered form" do
      expect(@game.check_answer("BYYG")).to eq("BBWW")
    end

    it "will return four Bs for correct answer" do
      expect(@game.check_answer("YYBG")).to eq("BBBB")
    end

    it "increments guesses after each guess" do
      3.times do
        @game.check_answer("YYBG")
      end
      expect(@game.guesses).to eq(3)
    end

    it "returns true for game_over?" do
      12.times do
        @game.check_answer("YYBG")
      end
      expect(@game.game_over?).to be true
    end
  end

end
