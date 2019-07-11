
class Game

	def initialize 
	# method appliquée dès que nouvelle instance créée

		@pos_mar = 0
		# démarrer à la marche 0

		@comp_tour = 0
		# commencer au tour 0
	end

	def lance_de
		# à chaque tour ===> lancé de dé

		entr = String.new 
		# Pemret d'initier la boucle suivante

		while entr != "\n"
		# \n == touche entrée du clavier
			if @comp_tour == 0
			puts "Bienvenu(e) dans le jeu du siècle! Lance le dé en tapant sur la touche entrée de ton clavier et essaie de gravir l'escalier jusqu'à la 10ème marche! Les règles sont simples : si tu fais un 1, tu descends d'une marche, un 5 ou 6, tu montes d'une marche, sinon, tu restes sur ta marche! Tape entrée pour lancer le dé! Maintenant!!!"
			entr = gets
				else
					puts "Tape entrée pour relancer le dé!"
					entr = gets
			end
		end

		@comp_tour += 1
		# les tours augmentent de 1 à chaque tour
		# le @ permet de connecter les variables entre les méthodes QUAND UNE CLASSE A ETE CREEE

		@chifr = rand(1..6)
		# "dé virtuel" : fonction qui choisit aléatoirement un chiffre entre 1 et 6 
	end

	def verif_de
		# méthode de vérification du chiffre sorti par le dé
		
		puts @chifr
		# Afficher le chiffre sortant du dé

		if @chifr == 5 or @chifr == 6 # ou, autres écriture : if @$chifr.to_s.match(/[56]/)
			mont
		# - si chiffre dé == 5 ou 6 : lancer la méthode mont
		elsif @chifr == 1
			desc
		# si chiffre dé == 1, lancer la méthode desc
		else 
			rest
		# pour les autres chiffres, lancer la méthode rest
		end


	end


	def mont
		# méthode mont : si 5 ou 6, monter

		@pos_mar += 1
		# monte de une marche
		if @pos_mar < 10
			puts "---------------"
			puts "Tour numéro #{@comp_tour}"
			puts "---------------" 
			puts "Tu es monté d'une marche! Bien ouéj!"
			puts "Tu es maintenant à la MARCHE #{@pos_mar}"
			# message affiché si marhce < à 10, sinon message de félicitations !!
		end
	end

	def desc
		# - si 1 : -1 (descendre) et dire sur quelle marche est le joueur
		if @pos_mar == 0
			puts "---------------"
			puts "Tour numéro #{@comp_tour}"
			puts "-------------"  
			puts "tu ne vas quand même pas descendre à la cave!" 
			puts "Vous êtes maintenant à la MARCHE #{@pos_mar}"
		else 
			@pos_mar -= 1
			puts "---------------"
			puts "Tour numéro #{@comp_tour}"
			puts "---------------" 
			puts "Tu es descendu d'une marche..."
			puts "Tu es maintenant à la MARCHE #{@pos_mar}"
		end
	end

	def rest
		# - si 2, 3 ou 4 : 0 (reste) et dire sur quelle marche est le joueur
		puts "---------------"
		puts "Tour numéro #{@comp_tour}"
		puts "---------------" 
		puts "Tu restes perché sur ta marche!"
		# puts "Vous êtes maintenant à la marche #{@pos_mar}"
	end


	

	def verif_gagne
		if @pos_mar == 10
			puts "------------------------------------------------------"
			puts "Félicitations!!!!! Tu es arrivé à la dernière marche!!"
			puts "------------------------------------------------------"
			puts "-------------------------"
			puts "CHAMPIIIIOOOOOONNNNNNN!!!"
			puts "-------------------------"	# quand 10eme marche atteint : GAGNE !!!!!!

		end
	end

	def perform
		while @pos_mar < 10
			lance_de
			verif_de
			verif_gagne
		end


		# additionne les autres method
	end



end

jeu = Game.new
jeu.perform

# var = Game.new
# var.lance_de
# # var.comp_ma
# var.mont
