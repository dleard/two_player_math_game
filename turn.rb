class Turn
  def do_turn(game, player)
    puts "-----#{player.name} it's your turn-----"
    question = Question.new(rand(100), rand(50))
    question.ask
    if question.response
      puts "Got it!"
      puts "#{game.p1.name}: #{game.p1.lives}/3 vs #{game.p2.name}: #{game.p2.lives}/3"
      puts ""
    else
      puts "No! You dummy!"
      player.lives-=1
      puts "#{game.p1.name}: #{game.p1.lives}/3 vs #{game.p2.name}: #{game.p2.lives}/3"
      puts""
    end    
  end
end