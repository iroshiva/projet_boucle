

def ask_first_name 
	# definition de la methode ask_first_name chargée de demander le prenom de l'utilisateur
	
	puts "Quel est votre prénom?"
	# demande le prenom de l'utilisateur
	
	print "> "
	# l'utilisateur tape son prenom 
	
	first_name = gets.chomp
	# variable first_name donné au prenom de l'utilisateur
	
	return first_name 
	# retourne la variable first_name
end


def say_hello(first_name)
	# definition de la methode say_hello chargé de dire bonjour à l'utilisateur avec une variable first_name 

  	puts "Bonjour, #{first_name}!"
end

def perform
	first_name = ask_first_name
	say_hello(first_name)

	# ou que say_hello(ask_first_name) = contraction des deux méthodes
end

# say_hello('jean')
perform 