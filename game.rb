class Game
  def initialize (players, board, s_and_l)
    @players = players
    @board = board
    @s_and_l = s_and_l
    @dice = ((1..6).to_a)
    @winner = false
  end

  def snake_or_ladder_check(player, s_or_l)
    position = player.position
    for snakesorladders in s_or_l
      if position == snakesorladders.start
        player.change_position(snakesorladders.finish)
      end
    end
  end

  def win(player)
    position = player.position
    if position >= 100
      @winner = true
    end
  end

  def play_game()
    while @winner == false do
      for player in @players
        player.add_position(@dice.sample)
        snake_or_ladder_check(player, @s_and_l)
        win(player)
      end

    end
    puts "#{player.name} won!"
    return "You've Won!"
  end
end
