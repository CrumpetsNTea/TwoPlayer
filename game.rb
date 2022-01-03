require './player.rb'
require './question.rb'

class Game
  def initialize
    @player1 = Player.new("P1", true)
    @player2 = Player.new("P2", false)
  end

def make_question
  @new_question = Question.new
  if @player1.turn
 puts "#{@player1.name} : #{@new_question.question}"
  elsif @player2.turn
 puts "#{@player2.name} : #{@new_question.question}"
 end
 if gets.chomp.to_i == @new_question.answer
       puts "correct!"
     else
       puts "false!"
     end
end
end

game = Game.new
game.make_question
