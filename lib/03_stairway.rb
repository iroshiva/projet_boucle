
class Game

	def lance_de
		# à chaque tour ===> lancé de dé
		entr=String.new

		while entr != "\n"
			puts "Tape entrée pour lancer le dé!!!!"
			entr = gets
		end

		# initialiser le lancé de dé
		@chifr = rand (1..6)
		puts @chifr

	end

# puts lance_de

	def verif_de
		# - si 5 ou 6 : +1 (monter) et dire sur quelle marche est le joueur
		if @chifr == 5 or @chifr == 6 # if @chifr.to_s.match(/[56]/)
			mont
		elsif @chifr == 1
			desc
		else 
			rest

		end
			

	end

	def pos_jou
		#compteur de marche
		@pos_mar 
	end

# puts comp_ma


	def mont
	# - si 5 ou 6 : +1 (monter) et dire sur quelle marche est le joueur
		
			@pos_mar += 1
			puts "Vous êtes monté d'une marche!"
	end

# puts mont



	def desc
	# - si 1 : -1 (descendre) et dire sur quelle marche est le joueur
		if @pos_mar += 0
			rest 
		else 
			@pos_mar -= 1
			puts "Vous êtes descendu d'un marche!"
		end
	end

	def rest
	# - si 2, 3 ou 4 : 0 (reste) et dire sur quelle marche est le joueur
		puts "Vous restez perchés sur votre marche!"
	end





# def gagne
# 	# quand 10eme marche atteint : GAGNE !!!!!!!
# end


# def perform
# 	# additionne les autres method
# end


end

var = Game.new
var.lance_de
# var.comp_ma
var.mont