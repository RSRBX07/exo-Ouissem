liste_villes = {   
    lille: 59000 ,               
    roubaix: 59100 ,               
    croix: 59170 ,
    tourcoing: 59200     
}    



print "choisir un nom de ville parmis cette liste :   "
liste_villes.each_key{|nom_ville| print "#{nom_ville} | "}
2.times {puts}
nom_ville_saisi = gets.chomp

ville_sym = :nom_ville_saisi
if liste_villes[ville_sym]
    puts "le code postal correspondant à cette ville est : #{ liste_villes[ville_sym] }"
else
    puts "Ville non existante dans la liste!!!" 
end