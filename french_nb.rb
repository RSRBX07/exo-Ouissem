def saisir msg    
    begin
        puts msg
        nb_saisi = gets.chomp.to_i
        msg = "chiffre incorrect"
    end while (nb_saisi<0)||(nb_saisi>9)
    return nb_saisi
end

def in_french nombre=nil
    tte_lettres=["Zero","Un","Deux","Trois","Quatre","Cinq","Six","Sept","Huit","Neuf"]
    tte_lettres[nombre] if nombre  
end

chiffre = saisir "tapez un nombre entre 0 et 19"
puts in_french chiffre