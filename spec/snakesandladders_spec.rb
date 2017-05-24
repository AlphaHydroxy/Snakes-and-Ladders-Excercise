require "minitest/autorun"
require "minitest/rg"

require_relative "../game"
# require_relative "../players"
# require_relative "../board"
require_relative "../snakesandladders"

class TestSnakesLadders < MiniTest::Test
  def setup()
    @snake = SnakesLadders.new(99, 56)
    @ladder = SnakesLadders.new(26, 48)
  end

  def test_start()
    assert_equal(99, @snake.start())
  end

  def test_finish()
    assert_equal(56, @snake.finish())
  end

  def test_start_ladder()
    assert_equal(26, @ladder.start())
  end

  def test_finish_ladder()
    assert_equal(48, @ladder.finish())
  end








end