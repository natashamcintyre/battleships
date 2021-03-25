class Battleships

  attr_reader :board, :ship_length

  def initialize
    @board = [[0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
      [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]]
  end

  def place_ship(location)
    raise "Invalid data entry" unless location.is_a?(Array) && location.size == 2

    @board[location[0].ord - 65][location[1] - 1] = 1
    "Ship placed successfully"
  end

  def choose_ship(length)
    raise "Ship length must be an integer between 1 and 4" if length < 1 || length > 4

    @ship_length = length
  end
end
