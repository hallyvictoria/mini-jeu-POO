class Fight 

	def initialize
		
	end

	def presentation(player1, player2)
		puts "-----------------------------------------------------"
		puts "            WELCOME TO 'TATANE FIGHT' !"
		puts " FIGHT UNTIL DEATH AND BE THE LAST SURVIVOR TO WIN !"
		puts "-----------------------------------------------------"
		print humanplayer1.show_state
		puts player1.show_state
		puts player2.show_state
	end

	def first_round(player1, player2)
		puts
		puts " ------------------- LET'S FIGHT ------------------- "
		player2.attacks(player1)
		player1.attacks(player2)
		puts
	end

	def human_figthing_players_loop(player1, player2)
		puts
		puts " ------------------- LET'S FIGHT ------------------- "
		
		while player1.life_points > 0 && player2.life_points > 0
			
			player2.attacks(player1)
			print player1.show_state
			puts player2.show_state
			if player1.life_points <= 0
				print "LE JOUEUR #{player1.name} EST MORT, JAJAJA !!!"
				puts " LE JOUEUR #{player2.name} A GAGNÉ"
				break
			end
			
			player1.attacks(player2)
			print player1.show_state
			puts player2.show_state
			if player2.life_points <= 0
				print "LE JOUEUR #{player2.name} EST MORT, JAJAJA !!!"
				puts " LE JOUEUR #{player1.name} A GAGNÉ"
				break
			end

		end
	end

	def human_fighting_players_loop(humanplayer1, player1, player2)
		puts
		puts "LET'S FIGHT ----------------------- "
		
		while player1.life_points > 0 && player2.life_points > 0 && humanplayer1.life_points > 0
			
			player2.attacks(player1)
			print player1.show_state
			puts player2.show_state
			if player1.life_points <= 0
				print "LE JOUEUR #{player1.name} EST MORT, JAJAJA !!!"
				puts " LE JOUEUR #{player2.name} A GAGNÉ"
				break
			end
			
			player1.attacks(player2)
			print player1.show_state
			puts player2.show_state
			if player2.life_points <= 0
				print "LE JOUEUR #{player2.name} EST MORT, JAJAJA !!!"
				puts " LE JOUEUR #{player1.name} A GAGNÉ"
				break
			end

		end
	end

end

