class ScannedGrid       
    def initialize
        @grid = []     
        print "tapez vos 5 valeurs choisis : \n"
        (1..5).each do |i|
            begin
                print("valeur n° #{i} :")
                value = gets.to_i
                if input_out_of_range? value
                    puts "nombre non accepté (il faut choisir un nombre entre 1 et 45) !!!"
                elsif existing_value? value
                    puts "nombre déja utilisé, il faut choisir un nombre différent !!!"
                end
            end while input_unvalid? value
            @grid.push value
        end
    end
    
    public
    def grid
        @grid
    end
        
    private
        
    def input_unvalid? value
        input_out_of_range?(value) || existing_value?(value)
    end
        
    def input_out_of_range? value
        (value <1)||(value>45)
    end
        
    def existing_value? value
        @grid.include? value
    end
        
end

class PickedGrid    
    def initialize
        @grid=[]
        @grid=(1..45).to_a.shuffle.take 5        
    end

    public
    def grid
        @grid
    end
end

class RepartitionMatrix    
    def initialize
        @matrix=[]
        all = (1..45).to_a
        #all.shuffle!
        @matrix=[all[0..8],all[9..17],all[18..26],all[27..35],all[36..44]]        
    end
    
    public
    def matrix
        @matrix
    end
end

class Loto
    attr_reader :picked_grid
    def initialize
        @picked_grid = nil
        @repartition = nil
    end
    def pick
        @picked_grid ||= PickedGrid.new
        @repartition = RepartitionMatrix.new
    end

    def show_grids 
        @repartition.matrix.each_with_index do |line|
            line.each_with_index do |cellule|        
                ch_cellule = cellule.to_s
                if @picked_grid.grid.include? (cellule)
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
end

class Party
    attr_reader :grids, :scanned_grid
    def initialize loto
        @grids=[]        
        @loto_ref = loto
    end
    def add_grid grid_arg=nil
        if ! @loto_ref.picked_grid
            if grid_arg == nil
                puts "saisie d'une nouvelle grille"  
                @scanned_grid = ScannedGrid.new          
                @grids.push @scanned_grid
            else
                @grids.push grid_arg.to_a
                @scanned_grid = grid_arg.to_a
            end
            puts "Votre grille de jeu est bien enregistrée"            
        else
            puts "tirage déjà fait, reéssayer un autre jour."
        end
    end    

    def grid_number
        @grids.length
    end

    def evaluate_grid num,picked
        print "Grille jouée :"
        print @grids[num].grid
        puts       
        if @grids[num].grid.sort==picked.grid.sort
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

lotos[:lundi].pick

#test de add_grid après tirage
parties[:lundi].add_grid

lotos[:lundi].show_grids
0.upto parties[:lundi].grid_number-1 do |i|
    parties[:lundi].evaluate_grid i,loto[:lundi].picked_grid
end

gets

=end
