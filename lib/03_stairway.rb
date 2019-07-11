
# class Game

	def lance_de
		# à chaque tour ===> lancé de dé
		entr=String.new

		while entr != "\n"
			puts "Tape entrée pour lancer le dé!!!!"
			entr = gets
		end

		# initialiser le lancé de dé
		# comp_tour
		comp_tour += 1

		$chifr = rand (1..6)
		puts $chifr

		

	end

# puts lance_de

	def verif_de
		# - si 5 ou 6 : +1 (monter) et dire sur quelle marche est le joueur
		if $chifr == 5 or $chifr == 6 # if @$chifr.to_s.match(/[56]/)
			mont
		elsif $chifr == 1
			desc
		else 
			rest

		end
			

	end


	def mont
	# - si 5 ou 6 : +1 (monter) et dire sur quelle marche est le joueur
		
			$pos_mar += 1
			puts "Vous êtes monté d'une marche!"
			puts "Vous êtes maintenant à la marche #{pos_mar}"
	end

# # puts mont

	def desc
	# - si 1 : -1 (descendre) et dire sur quelle marche est le joueur
		if $pos_mar == 0
			puts "Vous ne pouvez pas descendre plus bas!" 
			puts "Vous êtes maintenant à la marche #{pos_mar}"
		else 
			$pos_mar -= 1
			puts "Vous êtes descendu d'un marche!"
			puts "Vous êtes maintenant à la marche #{pos_mar}"
		end
	end

	def rest
	# - si 2, 3 ou 4 : 0 (reste) et dire sur quelle marche est le joueur
		puts "Vous restez perchés sur votre marche!"
		puts "Vous êtes maintenant à la marche #{pos_mar}"
	end


	def initializing
		$pos_mar = 0
		$comp_tour = 0
	end

	def verif_gagne
		if $pos_mar == 10
			puts "Félicitation!!!!! Tu es arrivé à la dernière marche!!! "	# quand 10eme marche atteint : GAGNE !!!!!!
			else
				lance_de
		end
	end

# # puts comp_ma

	# def verif_gagne
	# 	if $pos_mar == 10
	# 		puts "Félicitation!!!!! Tu es arrivé à la dernière marche!!! "	# quand 10eme marche atteint : GAGNE !!!!!!
	# 		else
	# 			lance_de
	# 	end
	# end


def perform
	while $pos_mar < 10
		pos_mar
		lance_de
		verif_de
		verif_gagne
	end
	
	
	# additionne les autres method
end

perform

# end

# var = Game.new
# var.lance_de
# # var.comp_ma
# var.mont