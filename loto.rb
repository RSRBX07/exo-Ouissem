class Scanned_Grid    
    def initialize
        @grid = []     
        print "tapez vos 5 valeurs choisis : \n"
        (1..5).each do |i|
            begin
                print("valeur n° #{i} :")
                value = gets.to_i
                if(value <1)||(value>45)
                    puts "nombre non accepté (il faut choisir un nombre entre 1 et 45) !!!"
                elsif @grid.include? value
                    puts "nombre déja utilisé, il faut choisir un nombre différent !!!"
                end
            end while (value <1)||(value>45)||(@grid.include? value)
            @grid.push value
        end
    end
    
    def get_grid
        return @grid
    end    
end

class Picked_Grid    
    def initialize
        @grid=[]
        @grid=(1..45).to_a.shuffle.take 5        
    end

    def get_grid
        return @grid
    end
end

class Repartition_Matrix    
    def initialize
        @matrix=[]
        all = (1..45).to_a
        all.shuffle!
        @matrix=[all[0..8],all[9..17],all[18..26],all[27..35],all[36..44]]        
    end
    
    def get_matrix
        return @matrix
    end
end

class Loto
    def initialize
        @picked_grid = nil
        @repartition = nil
    end
    def picking
        @picked_grid = Picked_Grid.new
        @repartition = Repartition_Matrix.new
    end

    def show_grids 
        @repartition.get_matrix.each_with_index do |line|
            line.each_with_index do |cellule|        
                ch_cellule = cellule.to_s
                if @picked_grid.get_grid.include? (cellule)
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
    end
    def get_grid
        return @picked_grid
    end
end

class Party
    def initialize loto
        @grids=[]        
        @loto_ref = loto
    end
    def add_grid
        if ! @loto_ref.get_grid
            puts "saisie d'une nouvelle grille"            
            @grids.push Scanned_Grid.new
        else
            puts "tirage déjà fait, reéssayer un autre jour."
        end
    end    

    def get_grid_number
        return @grids.length
    end

    def validate_grid num,picked
        print "Grille jouée :"
        print @grids[num].get_grid
        puts       
        if @grids[num].get_grid.sort==picked.get_grid.sort
            puts "-\|/-/|\-\|/-/|\-\|/-/|\-  Bravos c'est gagnée  -\|/-/|\-\|/-/|\-\|/-/|\-' :"
        else
            puts "jeu perdu."
        end
    end
end

# on fait met en commentaire la partie suivante parcequ'elle sera transférée vers le fichier loto_main
=begin
parties = {lundi: nil, Mardi: nil, mercredi: nil, jeudi: nil, vendredi: nil, samedi: nil, dimanche: nil}
lotos = {lundi: Loto.new, Mardi: Loto.new, mercredi: Loto.new, jeudi: Loto.new, vendredi: Loto.new, samedi: Loto.new, dimanche: Loto.new}
# une seule partie correspondante au Lundi
parties[:lundi]= Party.new lotos[:lundi]
parties[:lundi].add_grid
parties[:lundi].add_grid

lotos[:lundi].picking

#test de add_grid après tirage
parties[:lundi].add_grid

lotos[:lundi].show_grids
0.upto parties[:lundi].get_grid_number-1 do |i|
    parties[:lundi].validate_grid i,loto[:lundi].get_grid
end

gets

=end