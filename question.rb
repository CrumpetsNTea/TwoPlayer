class Question
  attr_reader :new_question, :answer
  
def initialize
  num1 = rand(1..10)
  num2 = rand(1..10)
  @question = "What is #{num1} + #{num2}?"
  @answer = num1 + num2
end

def make_question
  puts "#{@question}"
  if gets.chomp.to_i == @answer
        puts "correct!"
      else
        puts "false!"
      end
end
end

question1 = Question.new

question1.make_question