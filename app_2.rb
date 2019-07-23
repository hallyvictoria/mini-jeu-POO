require 'bundler'
Bundler.require

require_relative 'lib/player'
require_relative 'lib/game'

round = Fight.new

puts "DONNE UNE NOM A TON COMBATANT > " 
humanplayer1 = HumanPlayer.new(gets.chomp)
player1 = Player.new("Josiane")
player2 = Player.new("José")


round.presentation(humanplayer1,player1,player2,)
round.human_fighting_players_loop(humanplayer1,player1,player2,)
