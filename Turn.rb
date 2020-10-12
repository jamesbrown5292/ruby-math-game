# var 1, var 2 ---> question_body \
#behaviour: stdout(pid, )
class Turn
  attr_accessor :switch_turn 
  
  def switch_turn(current_player, player1, player2)
    if current_player == player1
      player2
    else
      player1
    end
  end
end 