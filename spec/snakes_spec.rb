require "minitest/autorun"
require "minitest/rg"

require_relative "../game"
# require_relative "../players"
# require_relative "../board"
require_relative "../snakes"

class TestSnakes < MiniTest::Test
  def setup()
    @snake = Snakes.new(99, 56)
  end

  def test_start()
    assert_equal(99, @snake.start())
  end

  def test_finish()
    assert_equal(56, @snake.finish())
  end









end