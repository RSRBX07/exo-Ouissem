
# retourne la valeur de la face lancée
=begin
# 1ere methode : argument optionnel
def roll(*cheated_value)
    return cheated_value if cheated_value.length == 1
    return 1 + rand(6)    
end
=end

# 2ème methode : argument optionnel
def roll(cheated_value=nil)
     return cheated_value if cheated_value
     return 1 + rand(6)
end

infos = {}
print "tapez votre nom et prénom : "
infos["author"] = gets.chomp
print "tapez votre ville : "
infos["ville"] = gets.chomp

print "face jouée : #{roll} \n"
print "face pipé : #{roll 3} \n"

puts "Made with love @ #{infos['ville']} by #{infos['author']}"