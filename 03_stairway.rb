#initialisation  des vars et de l'array
$arrayga = Array.new 
position = 0
count = 0
require 'colorize'
# ----------------------------------------------------------- DEBUT DES METHODES  ----------------------------------------------------------------------

# Methode 1 - average_finish_time où on repete up to repeat la methode game + on push dans l'array le count 

def average_finish_time (repeat, position, count)
		
		i = 0
			while i < repeat
				i += 1
				count = game(position, 0)
				$arrayga.push (count.to_i)
	
			end 
			
end 

							# --------Méthode 1 fin --------------
							
							

# Méthode 2 - On determine la prochaine position en fonction des précédentes et du dés randomizé - Methode game
	
def game (position, count)

		# Jusqu'à ce que la position sur le board soit 10
		until position == 10	
		
		# On lance un dé randomizé de 1 à 6 et indiquons le resultat
		dice = rand(1..6).to_i
		puts "Your dice gave you a ".cyan.bold + dice.to_s.cyan.bold
		
		# Protections pour les positions non normales, on revient à 0 
			if position <= 0 and dice <= 2 or position > 10
			puts "You are in position" + " 0".red.bold
			puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
				position = 0
			else
		# Case avec toutes les possibilités légales, on rend ici la position + affiche un message indiquant la position
				case dice
					when 1
						puts "No luck, go back one position".magenta
						position = position - 1 
						puts "On the board, you are on position  " + position.to_s .red
						puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
					when 2
						puts "Some luck, stay at your current position".magenta
						position = position 
						puts "On the board, you are on position  " + position.to_s.red
						puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
					when 3
						puts "Some luck, stay at your current position".magenta
						position = position
						puts "On the board, you are on position  " + position.to_s.red
						puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
					when 4
						puts "Some luck, stay at your current position".magenta
						position = position 
						puts "On the board, you are on position  " + position.to_s.red
						puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
					when 5
						puts "Yay ! move to the next postion".magenta
						position = position + 1
						puts "On the board, you are on position  " + position.to_s.red
						puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
					when 6
						puts "Yay ! move to the next postion".magenta
						position = position + 1
						puts "On the board, you are on position  " + position.to_s.red
						puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
				end
			# On compte les itérations pour les inclures dans l'array à la fin 
				count = count + 1
				
				
			end
			
	end
	# On annonce combien  de coups pour finir un jeu 
	puts "~~~~~~~~~~~~~"+"Game completed in ".yellow + count.to_s.yellow + " moves".yellow + "~~~~~~~~~~~~~"
	puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

			
	return count
	

end
		
							# --------Méthode 2 fin --------------	
		
# ----------------------------------------------------------- FIN DES METHODES  ----------------------------------------------------------------------
		
		
# ACCUEIL DU JEU + demande du nombre de parties à faire + verification d'entrée valide pour la var $repeat
	
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".blue
puts "~~~~~~~~~~~~~~".blue + "Welcome to the goose game".red + "~~~~~~~~~~~~~".blue
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".blue

puts "~~~~~~~~~~~~~~~~~~~".blue +  "  <(')" + "       ~~~~~~~~~~~~~~~~~~~~".blue
puts "~~~~~~~~~~~~~~~~~~~".blue +  "   | |     /" + " ~~~~~~~~~~~~~~~~~~~~".blue
puts "~~~~~~~~~~~~~~~~~~~".blue +  "  /  `----/ " + " ~~~~~~~~~~~~~~~~~~~~".blue
puts "~~~~~~~~~~~~~~~~~~~".blue +  " |   ~=- /"   + "   ~~~~~~~~~~~~~~~~~~~~".blue
puts "~~~~~~~~~~~~~~~~~~~~".blue + "^~^~^~^~^~^~^" + " ~~~~~~~~~~~~~~~~~~".blue
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~".blue


puts "How many games do you want to calculate/emulate ?"
print ">"
$repeat = Integer(gets.chomp) rescue nil
until $repeat.is_a?(Integer) do
 print "Please enter a valid number: "
 $repeat = Integer(gets.chomp) rescue nil
end
		
# Execution du code: average_finish_time calcul le nombre de coups pour un nombre de repetitions données (repeat)
average_finish_time($repeat, 0, 0)

# Calcul de la moyenne des coups dans l'array puis le présente
avgame = $arrayga.sum / $arrayga.size
puts "On average, a game takes "  + avgame.to_s.green + " dice throws to complete, for " + $repeat.to_s.green  + " simulated games"
puts
puts
puts "Voici l'array complet"
puts $arrayga.inspect 

