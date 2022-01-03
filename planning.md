# Game
Players take turn answering simple addition. If they get it wrong they lose a life.

# Entities/Classes


class Player
@name - can just be P1 and P2
@lives/score = 3
@turn? - if it is player one's turn then it is truthy, player 2 turn falsy - swap after each answer



class Question
needs two numbers (rand(1..10))
newquestion "What is num1 + num2 ?"
answer = num1 + num2
if answer == gets.chomp - "Correct!"
if answer != gets.chomp - "Incorrect, lose a life"
player lives - 1


So then when main.rb is run, we need to initialize the game, which can be in a game entity

class Game

need to check whose turn it is
  if @player1.turn
  puts "Player one, it is your turn" 
  and calls a question

  if @player2.turn
  puts "player two it is your turn"
  and calls a question

we need to make the questions, which will call the new_question method inside of Questions which will then create a new question

Then it will check the answer, 

if the answer is correct then it sets the current player's turn to false and the other one's to true and then displays the lives of the players - if one of the players lives is at 0 then t should end the game

