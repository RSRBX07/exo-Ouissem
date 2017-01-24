liste_villes = {   
    lille: 59000 ,               
    roubaix: 59100 ,               
    croix: 59170 ,
    tourcoing: 59200     
}    



print "choisir un nom de ville parmis cette liste :   "
liste_villes.each_key{|nom_ville| print "#{nom_ville} | "}
2.times {puts}
ville_sym = gets.chomp.to_sym

if liste_villes[ville_sym]
    puts "le code postal correspondant à cette ville est : #{ liste_villes[ville_sym] }"
else
    puts "Ville non existante dans la liste!!!" 
end