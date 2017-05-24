require "minitest/autorun"
require "minitest/rg"

require_relative "../game"
# require_relative "../players"
require_relative "../board"
# require_relative "../snakesandladders"

class TestBoard < MiniTest::Test
  def setup()
    @board = Board.new((1..100).to_a)
    @snake = SnakesLadders.new(99, 56)
  end

  def test_tiles()
    assert_equal((1..100).to_a, @board.tiles)
  end

end