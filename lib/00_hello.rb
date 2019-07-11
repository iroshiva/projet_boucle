
def ask_first_name
  puts  "Quel est ton prénom ? "
	print "> "
	first_name = gets.chomp
  	return first_name
end

def say_hello(prenom)
  "Bonjour, #{prenom}!"
end

def perform
  prenom = ask_first_name
  say_hello(prenom)
  
end


puts perform