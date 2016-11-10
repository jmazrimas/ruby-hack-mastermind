require_relative 'game.rb'


describe "#game" do

  before do
    @game = Game.new
  end

  describe "game" do
    it "generates a random answer after init" do
      expect(@game.secret_code.length).to eq(4)
    end

    it "will respond correctly to a guess" do
      @game.secret_code = ["Y","Y","B","G"]
      expect(@game.check_answer("YYXX")).to eq("BB")
    end

    it "will respond with a white peg" do
      @game.secret_code = ["Y","Y","B","G"]
      expect(@game.check_answer("YYGX")).to eq("BBW")
    end

    it "will return the answer in ordered form" do
      @game.secret_code = ["Y","Y","B","G"]
      expect(@game.check_answer("BYYG")).to eq("BBWW")
    end

  end

end
