require './player.rb'

class Question
  attr_reader :new_question, :answer
  
def initialize
  num1 = rand(1..10)
  num2 = rand(1..10)
  @question = "What is #{num1} + #{num2}?"
  @answer = num1 + num2
 @player1 = Player.new("P1", true)
 @player2 = Player.new("P2", false)

end

def make_question
   if @player1.turn
  puts "#{@player1.name} : #{@question}"
   elsif @player2.turn
  puts "#{@player2.name} : #{@question}"
  end
  if gets.chomp.to_i == @answer
        puts "correct!"
      else
        puts "false!"
      end
end
end

question1 = Question.new

question1.make_question
