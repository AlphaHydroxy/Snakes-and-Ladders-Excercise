require "minitest/autorun"
require "minitest/rg"

require_relative "../game"
require_relative "../players"
require_relative "../board"
# require_relative "../snakesandladders"

class TestPlayer < MiniTest::Test
  def setup()
    @player1 = Players.new("Sam")
    @player2 = Players.new("Jia")
  end

  def test_name()
    assert_equal("Sam", @player1.name)
  end

  def test_position()
    assert_equal(1, @player2.position)
  end

  def test_add_position()
    @player2.add_position(3)
    assert_equal(4, @player2.position)
  end

  def test_change_position()
    @player2.change_position(3)
    assert_equal(3, @player2.position)
  end


end