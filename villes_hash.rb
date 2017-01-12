liste_villes = [
    {   "p_code" => 59000 ,
        "nom_ville"   => "Lille" 
    },    
    {   "p_code" => 59100 ,
        "nom_ville"   => "Roubaix"     
    },   
    {   "p_code" => 59170 ,
        "nom_ville"   => "Croix"
    },
    {   "p_code" => 59200 ,
        "nom_ville"   => "tourcoing" 
    }    
]


print "choisir un code postal parmis cette liste :   "
liste_villes.each{|ville| print "#{ville['p_code']} | "}
puts
p_code_saisi = gets.chomp.to_i
puts
liste_villes.each{|ville| 
    if ville['p_code']==p_code_saisi
        print "#{ville['nom_ville']}"
        break
    end 
}

puts
