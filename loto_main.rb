require "./loto.rb"
loto = {lundi: Loto.new , Mardi: Loto.new , mercredi: Loto.new , jeudi: Loto.new , vendredi: Loto.new , samedi: Loto.new , dimanche: Loto.new}

# une seule partie correspondante au Lundi
my_party= Party.new
my_party.add_grid
my_party.add_grid

loto[:lundi].show_grids
0.upto my_party.get_grid_number-1 do |i|
    my_party.validate_grid i,loto[:lundi].get_grid
end

gets
