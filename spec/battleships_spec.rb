require 'battleships'

describe Battleships do
  describe '#place_ship' do
    it "returns a 1 in the first cell when input is [A, 1]" do
      expect(subject.place_ship([['A', 1]])).to eq("Ship placed successfully")
      expect(subject.board).to eq([[1, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]])
    end

    it "returns a 1 in cell A2 when input is [A, 2]" do
      expect(subject.place_ship([['A', 2]])).to eq("Ship placed successfully")
      expect(subject.board).to eq([[0, 1, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]])
    end

    it "returns a 1 in cell B1 when input is [B, 1]" do
      expect(subject.place_ship([['B', 1]])).to eq("Ship placed successfully")
      expect(subject.board).to eq([[0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [1, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]])
    end

    it "returns error when input is 'B1'" do
      expect{ subject.place_ship('B1') }.to raise_error("Invalid data entry")
    end
  end

  describe '#choose_ship' do
    it "sets ship_length to 1 when input is 1" do
      subject.choose_ship(1)
      expect(subject.ship_length).to eq(1)
    end

    it "sets ship_length to 2 when input is 2" do
      subject.choose_ship(2)
      expect(subject.ship_length).to eq(2)
    end

    it "raises error when input is 5" do
      expect{ subject.choose_ship(5) }.to raise_error("Ship length must be an integer between 1 and 4")
    end

    it "raises error when input is 0" do
      expect{ subject.choose_ship(0) }.to raise_error("Ship length must be an integer between 1 and 4")
    end

    it "raises error when input is 3.5" do
      expect{ subject.choose_ship(3.5) }.to raise_error("Ship length must be an integer between 1 and 4")
    end
  end

  it "places ship of length 2 in correct place" do
    subject.choose_ship(2)
    subject.place_ship([['A', 1], ['A', 2]])
    expect(subject.board).to eq([[1, 1, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0], [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]])
  end
end
