def full_pyramid
  number=0 
  while ((number % 2) == 0 ) do 
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? (choisis un chifre ou un nombre impair)"
    print "> "
    number = gets.chomp.to_i
    puts "Voici la pyramide : "
    ligne = 1
    nbr_die =1
  end

  while ligne < number / 2 + 1
    puts ("#" * nbr_die).center((number))
    ligne +=1
    nbr_die +=2 
  end

  while ligne >= number / 2 - 1 && nbr_die > 0
  	puts ("#"* nbr_die).center((number)) 
    ligne +=1
    nbr_die -=2 
	end

end

full_pyramid

