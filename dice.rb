
# retourne la valeur de la face lancée
def roll(*num)
    if num.length == 1
        return num
    else
        faces_values=[1,2,3,4,5,6]
        return faces_values[rand 6]
    end
end

face=roll
face_cheated=roll 5
print "face jouée : #{face} \n"
print "face pipé : #{face_cheated}"