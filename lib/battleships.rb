class Battleships

  attr_reader :board, :ship_length

  SHIP_SIZES = [1, 2, 3, 4]

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
    check_location(location, cell: false)
    location.each do |cell|
      check_location(cell)
      @board[cell[0].ord - 65][cell[1] - 1] = 1
    end
    "Ship placed successfully"
  end

  def choose_ship(length)
    raise "Ship length must be an integer between 1 and 4" unless SHIP_SIZES.include?(length)

    @ship_length = length
  end

  private

  def check_location(location, cell: true)
    raise "Invalid data entry" unless location.is_a?(Array)

    if cell
      raise "Invalid data entry" unless location.size == 2
    end
  end
end
