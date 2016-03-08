#define classes that create objects with both behavior and data.

#Ask the palyer 1 for their choice of "rock", "paper", or "scissors"using gets.

#The game should then randomly select the computer's selection

#The game then outputs who won in this format: "Player: ROCK vs Computer: SCISSORS ----- PLAYER WINS"

#Rock beats siccors
#Paper beats Rock
#Scissors beats Paper

class Game

  def initialize(player_name)
    @player_name = player_name
  end

  def get_player_input
    print "Choose rock(r), paper(r), or scissor(s): "
    choice = gets.chomp.downcase
    if choice == "r"
      puts "You've chosen Rock"
      return choice
    elsif choice == "p"
      puts "You've chosen Paper"
      return choice
    elsif choice == "s"
      puts "You've chosen Scissors"
      return choice
    else
      puts "You did not follow instructions"
    end
  end

  def get_computer_input
    computer_entry = rand(1..3)
    if computer_entry == 1
      puts "r"
      return "r"
    elsif computer_entry == 2
      puts "p"
      return "p"
    else computer_entry == 3
      puts "s"
      return "s"
    end
  end

  def results(player_choice, computer_choice)
    puts "Here we go! #{@player_name}"
    if player_choice == "" && computer_choice == ""
       puts "Player: ROCK vs Computer: ROCK ----- IT'S A DRAW!"
     elsif player_choice == "r" && computer_choice == "s"
       puts "Player: ROCK vs Computer: SCISSORS ----- PLAYER WINS!"
     elsif player_choice == "r" && computer_choice == ""
       puts "Player: ROCK vs Computer: PAPER ----- COMPUTER WINS!"
     elsif player_choice == "" && computer_choice == ""
       puts "Player: PAPER vs Computer: ROCK ----- PLAYER WINS!"
     elsif player_choice == "" && computer_choice == ""
       puts "Player: PAPER vs Computer: PAPER ----- IT'S A DRAW!"
     elsif player_choice == "" && computer_choice == ""
       puts "Player: ROCK vs Computer: SCISSORS ----- COMPUTER WINS!"
     elsif player_choice == "s" && computer_choice == "r"
       puts "Player: SCISSORS vs Computer: ROCK ----- COMPUTER WINS!"
     elsif player_choice == "s" && computer_choice == "p"
       puts "Player: SCISSORS vs Computer: ROCK ----- PLAYER WINS!"
     elsif player_choice == "s" && computer_choice == "s"
       puts "Player: SCISSORS vs Computer: ROCK ----- IT'S A DRAW!"
    end
  end

  def play
    puts "Welcome to the game of Rock Paper Scissor"
    computer_choice = get_computer_input
    player_choice = get_player_input
    results(player_choice, computer_choice)
  end

end

print "Please give me your name > "
player_name = gets.chomp

game = Game.new(player_name)
game.play
