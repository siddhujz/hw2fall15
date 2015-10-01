class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  # YOUR CODE HERE
  game.each do |element|
    if element[1].downcase == "r" || element[1].downcase == "p" || element[1].downcase == "s"
    else raise NoSuchStrategyError
    end
  end
  my_game_winner(game)
end

def rps_tournament_winner(tournament)
  # YOUR CODE HERE
  if is_game_available(tournament) #if only 1 game can be played
    return rps_game_winner(tournament)
  end
  rps_game_winner [rps_tournament_winner(tournament[0]), rps_tournament_winner(tournament[1])]
end

#feel free to add your own helper functions as needed
#Returns the winning element
def my_game_winner(game)
  #print "\n 1 = "
  #print game[0][1]
  #print "\n 2 = "
  #print game[1][1]
  if game[0][1].downcase == game[1][1].downcase
    game[0]
  elsif game[0][1].downcase == "r"
    if game[1][1].downcase == "s"
      game[0] #Rock beats Scissors
    else
      game[1] #Paper beats Rock
    end
  elsif game[0][1].downcase == "p"
    if game[1][1].downcase == "r"
      game[0] #Paper beats Rock
    else
      game[1] #Scissors beats Paper
    end
  elsif game[0][1].downcase == "s"
    if game[1][1].downcase == "p"
      game[0] #Scissors beats Paper 
    else
      game[1] #Rock beats Scissors
    end
  end
end

#Check if the inner variable is a String or an Array again
def is_game_available(game)
  return game[0][0].is_a?(String)
end