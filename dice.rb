
# retourne la valeur de la face lancée
def roll
    faces_values=[1,2,3,4,5,6]
    return faces_values[rand 6]
end

face=roll

print "face jouée : " + string(face)