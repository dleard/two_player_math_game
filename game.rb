require "./question"
require "./player"
require "./turn"

class Game
  attr_accessor :P1_QUESTIONS, :P1_CORRECT, :P2_QUESTIONS, :P2_CORRECT, :TURN, :p1, :p2
  def initialize
    @P1_QUESTIONS = 0
    @P2_QUESTIONS = 0
    @P1_CORRECT = 0
    @P2_CORRECT = 0
    @TURN = 'p1'
  end

  def setup
    puts "Player 1 enter your name"
    p1_name = gets.chomp
    @p1 = Player.new(p1_name)
    puts "Player 2 enter your name"
    p2_name = gets.chomp
    @p2 = Player.new(p2_name)
  end

  def play(game)
    loop do
      if game.TURN == 'p1'
        player = game.p1
        game.TURN = 'p2'
      else
        game.TURN = 'p1'
        player = game.p2
      end  
      turn = Turn.new
      turn.do_turn(game, player)    
      break if game.p1.lives == 0 || game.p2.lives == 0  
    end  
    if game.p1.lives == 0
      puts "#{game.p2.name} WINS with a score of #{game.p2.lives}/3 lives left"
      puts "GAME OVER"
    else
      puts "#{game.p1.name} WINS with a score of #{game.p1.lives}/3 lives left"
      puts "GAME OVER"
    end
  end  
end