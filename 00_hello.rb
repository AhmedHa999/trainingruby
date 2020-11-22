def say_hello(firstname)
puts"Bonjour, " + firstname
end

def askfirstname
puts "Quel est ton prénom?"
print ">"
return askfirstname = gets.chomp
end


firstname= askfirstname.to_s
say_hello(firstname)



