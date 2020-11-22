# Les methodes
def full_pyramid (i)

i.times {|n|
    print ' ' * (i - n)
    puts '#' * (2 * n + 1)
  }		 
end

def wtf_pyramid (i)
n= 1/3
while n <= (i/2).round

    	puts ' ' * (i - n) + '#' * (2 * n + 1 ) 
    	n += 1 
    	end
    	
while n > (i/2).round && (n)  != i
        
        puts ' ' * (n + 1) + '#'* (2 * i - 2 * n - 1)
  	n += 1
  	end

end 
# ACCUEIL DU PROGRAMME 
puts "Salut, bienvenue dans ma super pyramide ! Quelle pyarmide veux tu ? Super tape: 1 ou wtf tape: 2 "
print ">"
a = gets.chomp.to_i

# On verifie si l'utilisateur entre le bon code en chiffre!
until a.between?(1, 2)
	puts "Erreur, merci de taper 1 ou 2"
	a = gets.chomp.to_i
end


# On fait un cas par entrée valide
case a

	when 1 
	puts "Combien d'étages ?"
	i = gets.chomp.to_i 
	puts "Ok, c'est parti pour une super pyramide à " + i.to_s + " étages"
	puts " "
	full_pyramid(i)
	
	
	when 2  
	
	puts "Combien d'étages ? nombre impair !"
	i = gets.chomp.to_i 
	until i.odd? == true
	puts "Erreur, merci de taper un nombre impair pour la wtf pyramid"
	i = gets.chomp.to_i
	end
	puts "Ok, c'est parti pour une wtf pyramide à " + i.to_s + " étages"
	puts " "
	wtf_pyramid(i)
	
	
	
end








