
# retourne la valeur de la face lancée
# 1ere methode : argument optionnel
=begin
def roll(*cheated_value)
    if cheated_value.length == 1
        return cheated_value
    else        
        return 1 + rand(6)
    end
end
=end
# 2ème methode : argument optionnel
def roll(cheated_value=nil)
    if cheated_value!=nil
        return cheated_value
    else        
        return 1 + rand(6)
    end
end

face=roll
face_cheated=roll 5
print "face jouée : #{face} \n"
print "face pipé : #{face_cheated}"