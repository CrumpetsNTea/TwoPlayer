require './player.rb'
require './question.rb'

class Game
  def initialize
    @player1 = Player.new("P1", true)
    @player2 = Player.new("P2", false)
  end
  
  def next_turn
    make_question
    check_answer
  end

def make_question
  @new_question = Question.new
  if @player1.turn
 puts "#{@player1.name} : #{@new_question.question}"
  elsif @player2.turn
 puts "#{@player2.name} : #{@new_question.question}"
  end
end

def check_answer
if gets.chomp.to_i == @new_question.answer
  if @player1.turn
  puts "correct!"
  @player1.turn = false
  @player2.turn = true
  elsif @player2.turn
    puts "correct!"
    @player1.turn = true
    @player2.turn = false
  end
  puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
  check_winner
else
  if @player1.turn
    @player1.lives -= 1
  puts "Incorrect, lose a life!"
  @player1.turn = false
  @player2.turn = true
  elsif @player2.turn
    @player2.lives -= 1
    @player1.turn = true
    @player2.turn = false
  end
puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
check_winner
end
end

def check_winner
if @player1.lives == 0
  puts "Game Over\n#{@player2.name} wins with a final score of: #{@player2.lives}/3 "
elsif @player2.lives == 0
  puts "Game Over\n#{@player1.name} wins with a final score of: #{@player1.lives}/3 "
else
  next_turn
end
end
end

