def saisir msg    
    begin
        puts msg
        nb_saisi = gets.chomp.to_i
        msg = "nombre incorrect"
    end while (nb_saisi<0)||(nb_saisi>99)
    return nb_saisi
end

def in_french nombre=nil
    tte_lettres=["Zero","Un","Deux","Trois","Quatre","Cinq","Six","Sept","Huit","Neuf","Dix","Onze","Douze","Treize","Quattorze","Quinze","Seize","Dix-Sept","Dix-Huit","Dix-Neuf"]
    dizaines_tte_lettres = ["","","Vingt","Trente","Quarante","Cinquante","Soixante","Soixante","Quatre-vingt","Quatre-vingt"]
#    if nombre < 17
#        return tte_lettres[nombre]
#    elsif nombre < 20
#        return "dix-" + tte_lettres[nombre % 10]  
    if nombre < 20
        return tte_lettres[nombre]
    elsif (nombre < 70)||(nombre>=80 && nombre<90)
        result = dizaines_tte_lettres[nombre/10] + " " + tte_lettres[nombre % 10]  
        result.gsub!("Zero","")
        result.gsub!("Un","et Un")
        return result
    else
        result = dizaines_tte_lettres[nombre/10] + " " + tte_lettres[nombre % 20]  
        result.gsub!("Zero","")
        result.gsub!("Un","et Un")
        result.gsub!("Onze","et Onze")
        return result
    end
end

nombre = saisir "tapez un nombre entre 0 et 99"
puts in_french nombre