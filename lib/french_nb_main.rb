require "./french_nb.rb"

def saisir msg    
    begin
        puts msg
        nb_saisi = gets.chomp.to_i
        msg = "nombre incorrect"
    end while (nb_saisi<0)||(nb_saisi>99)
    nb_saisi
end

nb = Number.new  
puts nb.spell_in_french 

nb = Number.new 10
puts nb.spell_in_french 

nb = Number.new saisir "tapez un nombre entre 0 et 99"
puts nb.spell_in_french