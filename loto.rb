def scan_grid 
    grille = []
    print "tapez vos 5 valeurs choisis : \n"

    (1..5).each do |i|
        begin
            print("valeur n° #{i} :")
            value = gets.to_i
            if(value <1)||(value>45)
                puts "nombre non accepté (il faut choisir un nombre entre 1 et 45)"
            end
        end while (value <1)||(value>45)
        grille.push value
    end
    return grille
end

def rand_grid_5
    picked=(1..45).to_a.shuffle.take 5
    return picked
end

def make_repartition
    all = (1..45).to_a
    all.shuffle!
    repartition=[all[0..8],all[9..17],all[18..26],all[27..35],all[36..44]]
    return repartition
end

def show_grids repartition,scanned,picked
    repartition.each_with_index do |line|
        line.each_with_index do |cellule|        
            ch_cellule = cellule.to_s
            if picked.include? (cellule)
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
    puts
    print "Grille jouée :"
    print scanned
    puts
end

def show_result scanned,picked
    if scanned.sort==picked.sort
        print "-\|/-/|\-\|/-/|\-\|/-/|\-  Bravos c'est gagnée  -\|/-/|\-\|/-/|\-\|/-/|\-' :"
    else
        print "jeu perdu."
    end
end

scanned_grid = scan_grid
picked_grid = rand_grid_5
repartition = make_repartition

show_grids repartition,scanned_grid,picked_grid
show_result scanned_grid,picked_grid

gets
