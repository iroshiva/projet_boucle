

# Programme qui demande à l'utilisateur : 



# Method sign-up
# - définir un mot de passe
# 	> Demander à l'ut se definir un mot de passer
# 	> récupérer le mot de passe

# Method log-in
# - rentrer le mot de passe
# 	> demander de taper le mot de passe
# 	> si mdp == def_mdp ok
# 	> si mdp != def_mdp redemande le mot

# # si mot de passe != def du mot de passe =====> redemande le mot de passe
# # si mot de passe == def du mot de passe =====> accès à l'espace secret

# Method welcome screen
# si mot de passe == def du mot de passe =====> accès à l'espace secret



def sign_up
	puts "Bonjour, afin d'accéder à l'espace secret, définissez votre mot de passe:"
	print "> "
	def_mdp = gets.chomp
	return def_mdp
end

# puts sign_up


def log_in
	def_mdp = sign_up
	puts "Veuillez taper votre mot de passe:"
	print "> "
	mdp = gets.chomp
	# récuprer mdp
	
	while mdp != def_mdp
		puts "Votre mot de passe est erroné, veuillez entrer à nouveau votre mot de passe:"
		print "> "
		mdp = gets.chomp
	end

	return mdp
end

# puts log_in

def welcome_screen
	puts "Bienvenue sur la page secrète : <fezlkhfmz><eihf><moizefhoz><oi>efh</oi></moizefhoz></eihf></fezlkhfmz>"
end

# puts welcome_screen

def perform
	sign_up
	log_in
	welcome_screen
end

perform

