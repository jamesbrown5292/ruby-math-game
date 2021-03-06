require_relative 'Player' # 
require_relative 'Game' # while loop (while both scores > 0) .... (current_player_id * -1)
require_relative 'Turn'
require_relative 'Question' #var1, var2, question-body; 


player1 = Player.new("James")
player2 = Player.new("Andy")
game = Game.new(player1, player2)
turn = Turn.new
game.game_start
round = 1

while player1.lives > 0 && player2.lives > 0
  
  question = Question.new
  answer = question.answer
  question = question.question_body
  puts "--- 🔔 ROUND#{round} 🔔 ---"
  puts "Current player is #{game.current_player.name}"
  response = game.ask_question(game.current_player, question)

  if  game.analyze_response(response, answer)
    puts "--- 🟩 CORRECT 🟩 ---"
    puts "You got it right, #{game.current_player.name}!"
    puts "You have #{game.current_player.lives}/3 lives remaining"
  else 
    puts "--- 🟥 INCORRECT 🟥 ---"
    puts "You got it wrong, #{game.current_player.name}!"
    game.current_player.lives -= 1
    puts "You have #{game.current_player.lives}/3 lives remaining"
  end
  round += 1
  game.current_player = turn.switch_turn(game.current_player, player1, player2)

end

game.declare_winner(player1, player2)




