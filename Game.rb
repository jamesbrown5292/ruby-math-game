class Game
  attr_accessor :game_start, :ask_question, :player1, :player2, :current_player

  def initialize(player1, player2)
    @winner
    @player1 = player1
    @player2 = player2
    @current_player = @player1
  end

  def game_start
    puts "----- START GAME -----"
    puts "Welcome, #{@player1.name} and #{@player2.name}"
  end

  def ask_question(current_player, question)
    puts "#{@current_player.name}, #{question}"
    response = gets.chomp
  end

  def analyze_response(response, answer)
    response = response.to_i
    if response != answer
      return false
    else return true
    end
  end

end