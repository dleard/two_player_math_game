class Question
  def initialize(x, y)
    @x = x
    @y = y
  end
  
  def ask
    puts "What is #{@x+1} + #{@y+1}?"
  end
  
  def answer
    (@x+1) + (@y+1)
  end 
  
  def response
    response = gets.chomp
    puts "ANSWER: #{self.answer}"
    if response.to_i != self.answer
      false
    else
      true
    end
  end      
end
