class Game
  def initialize (players, board, s_and_l)
    @players = players
    @board = board
    @s_and_l = s_and_l
  end

  def snake_or_ladder_check(players, s_or_l)
    for player in players
    position = player.position
    for snakesorladders in s_or_l
      if position == snakesorladders.start
        player.change_position(snakesorladders.finish)
      end
    end
    end
  end

  def win(player)
    position = player.position
    if position == 100
      return "You've Won!"
    end
  end
end

def play_game()

end