require "./loto.rb"
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
0.upto parties[:lundi].grid_number-1 do |i|
    parties[:lundi].validate_grid i,lotos[:lundi].grid
end

gets

gets
