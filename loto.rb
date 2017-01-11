all = (1..45).to_a
all.shuffle!
repartition=[all[0..8],all[9..17],all[18..26],all[27..35],all[36..44]]

grille = []
print "tapez vos 5 valeurs choisis : "

(1..5).each do |i|
    print("valeur n° #{i} :")
    grille.push gets.to_i
end

picked=(1..45).to_a.shuffle.take 5

repartition.each_with_index do |line,numl|
    line.each_with_index do |cellule,numc|        
        ch_cellule = cellule.to_s
        if picked.include? (numl * 9 + numc)
            ch_cellule = "(" + ch_cellule + ")"
        end
        while ch_cellule.length < 8 
            ch_cellule = ch_cellule + " "
        end
        print ch_cellule                   
    end
    puts    
    puts
end

print "Grille jouée :"
print grille
puts

if grille.sort==picked.sort
    print "-\|/-/|\-\|/-/|\-\|/-/|\-  Bravos c'est gagnée  -\|/-/|\-\|/-/|\-\|/-/|\-' :"
else
    print "jeu perdu."
end

gets
