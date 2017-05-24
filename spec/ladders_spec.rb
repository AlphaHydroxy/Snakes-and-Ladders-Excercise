require "minitest/autorun"
require "minitest/rg"

require_relative "../game"
# require_relative "../players"
# require_relative "../board"
require_relative "../ladders"

class TestLadders < MiniTest::Test
  def setup()
    @ladder = Ladders.new(26, 48)
  end


  def test_start_ladder()
    assert_equal(26, @ladder.start())
  end

  def test_finish_ladder()
    assert_equal(48, @ladder.finish())
  end








end