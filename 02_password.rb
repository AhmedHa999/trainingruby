


def welcome_screen ()
puts "-----------------------------------------------------------"
puts "----------------SECRET WELCOME SCREEN----------------------"
puts "################# NSA CODED INFORMATIONS ####################"
puts "-----------------This is the secret info---------------------"
puts "Wow so incredible, you got so far!"
end


#METHODES
def signup
puts "Please sign up with a new password"
print ">"
password = gets.chomp
return password
end

def login(password)
	
	puts "Please enter your secret password"
	print ">"
	checkpass = gets.chomp
	until checkpass == password
	puts "!!!!!!!!!ACCESS DENIED, ENTER CORRECT PASSWORD!!!!!!!!!!!"
	checkpass = gets.chomp
	
	end
return checkpass
end

def perform
password = signup
puts "Password Saved, thank you"
puts "-----------------------------------------------------------"
puts "-----------------------------------------------------------"
puts "--------------Login Interface-------------------"
checkpass = login(password)
puts " +++++++ PASSWORD CORRECT +++++++++"
welcome_screen

end

# ACCUEIL DU PROGRAMME 
puts "-----------------------------------------------------------"
puts" ~~~~~~~~Hello and welcome to the secret soft ;-)~~~~~~~~~~ "

value = perform()
puts value
# On verifie si l'utilisateur entre le bon code en chiffre!
until a == 1
	puts "Please press 1 to throw the dice"
	a = gets.chomp.to_i
end


