class Player
	attr_accessor :name, :life_points # la classe player prend en attributs le nom et les points de vie qui seront facilement lisibles et modifiables

	@@enemies = [] # initialise un array pour les ennemis, pour l'instant vide

	def initialize(name) # initialise un joueur et lui donne les attributs ci-contre en meme-temps
		@name = name
		@life_points = 10
		@@enemies << self #fait rentrer les instances de type Player dans le tableau Ennemis
	end

	def show_state
		puts "> #{@name} a #{@life_points} de vie" # montre le niveau de vie d'un player, de manière générale
	end

	def gets_damage(damage_points)
		@life_points = @life_points - damage_points # calcul pour enlever les points de vie
		
	end

	def compute_damage
		return rand(1..6) # lance le dé pour avoir un nombre de "dommages" au hasard
	end

	def attacks(player) # méthode attacks + (player à attaquer)

		puts "Le joueur #{@name} attaque le joueur #{player.name}"

		@attacks_damages = compute_damage # fait entrer en variable le chiffre de "dommages"
		
		puts "Il lui inflige #{@attacks_damages} points de dommages" # on réutilise la variable ici

		player.gets_damage(@attacks_damages) # le player choisi perd des points de vie

	end
end

class HumanPlayer < Player
	attr_accessor :name, :life_points, :weapon_level

	def initialize(name)
		@name = name
		@life_points = 100
		@weapon_level = 1
	end

	def show_state
		puts "> #{@name} a #{@life_points} points de vie et une Tatane de niveau #{@weapon_level}"
	end

	def compute_weapon_damage
		return rand(1..6) * @weapon_level
	end

	def search_weapon
		@new_weapon_level = compute_weapon_damage
		puts "Tu as trouvé une Tatane de niveau #{@new_weapon_level}"

		if @new_weapon_level > @weapon_level
			@weapon_level = @new_weapon_level
			puts "C'est une bien meilleure Tatane :D ! Gardons-la "
		else
			puts "Repose donc ce cure-dents"
		end
	end

	def compute_health_pack
		return rand(1..6)
	end

	def search_health_pack
		@health_pack = compute_health_pack
		
		if @health_pack == 1
			puts "Tu n'as pas trouvé de Health Pack :( "
		elsif @health_pack > 1 && @health_pack < 5
			puts "Tu as trouvé un Health Pack de +50 ! ;)"
			@life_points = @life_points + 50
			puts self.show_state
		else @health_pack > 5
			puts "Tu as trouvé un Health Pack de + 80 ! :D"
			@life_points = @life_points + 80
		end
	end

	def attacks_player1(player1)
		print player1.show_state
		
		puts "Le joueur #{@name} attaque le joueur #{player1.name}"

		@attacks_damages = compute_damage
		
		puts "Il lui inflige #{@attacks_damages} points de dommages"

		player1.gets_damage(@attacks_damages)
		
		if player1.life_points <= 0
			print "LE JOUEUR #{player1.name} EST MORT, JAJAJA !!!"

		end
		
	end

	def attacks_player2(player2)
		print player2.show_state

		puts "Le joueur #{@name} attaque le joueur #{player2.name}"

		@attacks_damages = compute_damage
		
		puts "Il lui inflige #{@attacks_damages} points de dommages"

		player2.gets_damage(@attacks_damages)

		if player2.life_points <= 0
			print "LE JOUEUR #{player2.name} EST MORT, JAJAJA !!!"
		end
		
	end


end
