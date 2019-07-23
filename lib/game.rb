class Fight 

	def initialize 
		puts
		puts "-----------------------------------------------------------------------"
		puts "                     BIENVENUE À 'TATANE FIGHT'                        "
		puts " BATS-TOI JUSQU'À CE QUE MORT S'EN SUIVE ET SOIS LE DERNIER SURVIVANT  "
		puts "-----------------------------------------------------------------------"
		puts
	end

	def presentation(player1, player2, humanplayer1)
		puts
		puts "VOICI NOS COMBATANTS -------------------------------------------------"
		print player1.show_state
		print player2.show_state
	end

	def first_round(player1, player2)
		puts
		puts "COMBATEZ !! ----------------------------------------------------------"
		player2.attacks(player1)
		player1.attacks(player2)
		puts
	end

	def figthing_loop(player1, player2)
		puts
		puts "COMBATEZ !! ----------------------------------------------------------"
		
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
		
		def presentation(player1, player2, humanplayer1)
			puts
			puts "VOICI NOS COMBATANTS -------------------------------------------------"
			print player1.show_state
			print player2.show_state
			puts humanplayer1.show_state
		end
		
		puts
		puts "COMBATEZ !! ----------------------------------------------------------"
		
		while humanplayer1.life_points >0 && (player1.life_points > 0 || player2.life_points >0)
			
			puts humanplayer1.show_state
			puts " QUE VEUX TU FAIRE ?"
			puts
			puts " a - chercher une meilleur tatane"
			puts " s - chercher un Health Pack"
			puts
			puts " Attaquer un autre joueur :"
			puts " 0 - #{player1.name} a #{player1.life_points} points de vie "
			puts " 1 - #{player2.name} a #{player2.life_points} points de vie "


			user_choice = gets.chomp.to_s
			if user_choice == "a"
				humanplayer1.search_weapon
			elsif user_choice == "s"
				humanplayer1.search_health_pack
			elsif user_choice == "0"
				humanplayer1.attacks_player1(player1)
			elsif user_choice == "1"
				humanplayer1.attacks_player2(player2)
			else
				puts "Commande incorrect"
			end

			puts


			if player1.life_points > 0
				player1.attacks(humanplayer1)
				if humanplayer1.life_points <= 0
					print "LE JOUEUR #{humanplayer1.name} EST MORT, JAJAJA !!!"
					puts " LE JOUEUR #{player1.name} À GAGNÉ"
				end
			end

			if player2.life_points > 0
				player2.attacks(humanplayer1)
				if humanplayer1.life_points <= 0
					print "LE JOUEUR #{humanplayer1.name} EST MORT, JAJAJA !!!"
					puts " LE JOUEUR #{player2.name} À GAGNÉ"
				end
			end

			puts
			
			

		end
		
		if player1.life_points <= 0 && player2.life_points <= 0 && humanplayer1.life_points > 0	
			puts
			puts "-----------------------------------------------"
			puts "                  GAME OVER                    "
			puts "             !!! TU AS GAGNÉ !!!               "
			puts "-----------------------------------------------"
			puts
		else player1.life_points > 0 && player2.life_points > 0 && humanplayer1.life_points <= 0
			puts
			puts "-------------------------------------------------"
			puts "                   GAME OVER                     "
			puts "             !!! LOOOOOOOOOSER !!!               "
			puts "-------------------------------------------------"
			puts
		end

	end

end

