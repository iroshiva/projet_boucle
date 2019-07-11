 # def sign_up
# 	puts "Bonjour, afin d'accéder à l'espace secret, définissez votre mot de passe:"
# 	print "> "
# 	def_mdp = gets.chomp
# 	return def_mdp
# end

# # puts sign_up


# def log_in
# 	def_mdp = sign_up
# 	puts "Veuillez taper votre mot de passe:"
# 	print "> "
# 	mdp = gets.chomp
# 	# récuprer mdp
	
# 	while mdp != def_mdp
# 		puts "Votre mot de passe est erroné, veuillez entrer à nouveau votre mot de passe:"
# 		print "> "
# 		mdp = gets.chomp
# 	end

# 	return mdp
# end

# # puts log_in

# def welcome_screen
# 	"Bienvenue sur la page secrète : <fezlkhfmz><eihf><moizefhoz><oi>efh</oi></moizefhoz></eihf></fezlkhfmz>"
# end

# # puts welcome_screen

# def perform
# 	log_in
# 	puts welcome_screen
# end

# perform


require 'io/console' 


def signup

        puts "Définis ton mot de passe : "
   
        @mdp = STDIN.noecho(&:gets).chomp 
end

def login

        puts "Saisis ton mot de passe : "
    
        log = STDIN.noecho(&:gets).chomp 
    
            while @mdp != log
            puts "Mot de passe incorrect ! Retente ta chance : "
        
            log = STDIN.noecho(&:gets).chomp 

            end
end


def welcome_screen 

    puts "Bienvenue dans ton espace secret ! "

end

def perform 
        signup
        login
        welcome_screen

end

perform

