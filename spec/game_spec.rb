require "minitest/autorun"
require "minitest/rg"

require_relative "../game"
require_relative "../players"
require_relative "../board"
require_relative "../snakesandladders"

class TestGame < MiniTest::Test
  def setup()
   
    @board = Board.new((1..100).to_a)
    @player1 = Players.new("Sam")
    @player2 = Players.new("Jia")
    @players = [@player1, @player2]
    @dice = ((1..6).to_a)
    @snake = SnakesLadders.new(99, 56)
    @ladder = SnakesLadders.new(26, 48)
    @s_and_l = [@snake, @ladder]
    @game = Game.new(@players, @board, @s_and_l)
  end

  def test_roll_dice()
    expected = ((1..6).to_a)
    actual = expected.include?(@dice.sample)
    assert_equal(true, actual)
  end

  def test_change_position_with_dice()
    
    @player1.add_position(@dice.sample)
    actual = ((2..7).to_a.include?(@player1.position))
    assert_equal(true, actual)
  end

  def test_landing_on_ladder()
    @player1.change_position(26)
    @game.snake_or_ladder_check(@player1, @s_and_l)
    assert_equal(48, @player1.position())
  end

  def test_landing_on_snake()
    @player1.change_position(99)
    @game.snake_or_ladder_check(@player1, @s_and_l)
    assert_equal(56, @player1.position())
  end

  def test_win()
    @player1.change_position(100)
    assert_equal(true, @game.win(@player1))
  end

  def test_play_game()
    assert_equal("You've Won!", @game.play_game)
  end

  def test_finish_position1()
    @game.play_game
    assert_equal(100, @player1.position)
  end

  def test_finish_position2()
    @game.play_game
    assert_equal(100, @player2.position)
  end





end