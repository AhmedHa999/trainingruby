#initialisation des variables

position = 0
count = 0
arrayag = Array.new 

	# On determine la prochaine position en fonction des précédentes et du dés randomizé
def nextmove (position)
		dice = rand(1..6).to_i
		puts "Your dice gave you a " + dice.to_s
	
			if position <= 0 and dice <= 2
			puts "No luck, Stay at position 0"
				position = 0
			else
	
				case dice
					when 1
					puts "No luck, go back one position"
					position = position - 1 
					when 2
					puts "Some luck, stay at your current position"
					position = position 
					when 3
					puts "Some luck, stay at your current position" 
					position = position
					when 4
					puts "Some luck, stay at your current position"
					position = position 
					when 5
					puts "Yay ! move to the next postion"
					position = position + 1
					when 6
					puts "Yay ! move to the next postion"
					position = position + 1
			
			
				end 
			end
return position
end
	# On determine la position sur le board 
def posboard (position, count)
		
		case position
			when 0
			puts "You are at the begining"
			position = 0
			when 1
			puts "On the board, you are on position 1 #~~~~~~~~"
			when 2
			puts "On the board, you are on position 2 ##~~~~~~~"
			when 3
			puts "On the board, you are on position 3 ###~~~~~~" 
			when 4
			puts "On the board, you are on position 4 ####~~~~~"
			when 5
			puts "On the board, you are on position 5 #####~~~~"
			when 6
			puts "On the board, you are on position 6 ######~~~"
			when 7
			puts "On the board, you are on position 7 #######~~"
			when 8
			puts "On the board, you are on position 8 #######~~"
			when 9
			puts "On the board, you are on position 9 ########~"
			when 10
			puts "On the board, you're on position 10 ######### CONGRATULATIONS YOU WON "
			puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
			puts "~ The game took " + count.to_s + " repetitions to finish ~"
			puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
			exit
		else
		puts "Technical issue, restart the game"
		exit
		end
		count = count + 1
return count

end


	# On calcule les positions successive du jeu + compteur
def gameproc (position, count)
		
		count = posboard(position, count).to_i
		position = nextmove(position).to_i
		gameproc(position, count)
		puts "---------------------------------"
		
end



	# Methode aggregation des 100 parties







# Execution du jeu + compteur




while posboard(position,count).to_i < 11	

	# On demande à l'utlisateur quel type de jeu: manuel au automatique
	puts "To roll the dice, please press 1, to get auto game press 2."
	a = gets.chomp.to_i
	
	# On verifie si l'utilisateur entre le bon code en chiffre!
		unless a == 1 or a == 2 or a == 3
		puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
		puts "!Please write 1 or 2 to roll the dice!!"
		puts "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
		a = gets.chomp.to_i
		end
		
	# Si L'utilisateur rentre 1, jeu manuel 
			while a==1
			puts "To roll the dice, please press 1, to get auto game press 2."
			a = gets.chomp.to_i
			count = posboard(position, count).to_i
			position = nextmove(position).to_i
			end
	
		
	# Si L'utilisateur rentre 2, jeu automatique
		while a == 2	
			
			gameproc(position, count)
			
		end
	# Si L'utilisateur rentre 3, moyenne de 100 parties 
	while a == 3	
			
	break	
		
			end
	break
end








