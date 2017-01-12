def in_french nombre=nil
    tte_lettres=["Zero","Un","Deux","Trois","Quatre","Cinq","Six","Sept","Huit","Neuf"]
    return tte_lettres[nombre] if nombre
    return ""
end

puts "tapez un nombre entre 0 et 9"
nb=gets.chomp.to_i
puts in_french nb
