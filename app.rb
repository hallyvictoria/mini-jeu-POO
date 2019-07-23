require 'bundler'
Bundler.require

require_relative 'lib/player' # ref aux fichiers dans le lib
require_relative 'lib/game'

player1 = Player.new("Josiane") # définit les player Josiane et José
player2 = Player.new("José")

round = Fight.new # initialise le combat

round.presentation(player1,player2) # fait tourner la méthode de présentation pour les deux player
round.figthing_loop(player1,player2) # fait tourner la méthode de combat en prenant en compte les player 1 et 2
