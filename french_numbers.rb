def saisir msg
    print(msg)
    return gets().chomp.to_i
end

def convertir nombre
    nb_milliards = nombre / 1000000000
    nb_millions = nombre % 1000000000 / 1000000
    nb_milliers = nombre % 1000000 / 1000
    reste = nombre % 1000
    return String(nb_milliards) + " milliards et " + String(nb_millions) + " millions et " + String(nb_milliers) + " milles et " + String(reste) 
end

nb=saisir "taper un nombre : "

tte_lettres = convertir(nb)

puts "le nombre #{nb} en toutes lettres est : #{tte_lettres}"
