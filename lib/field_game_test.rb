require './field.rb'
require './crow.rb'
require './road.rb'
require './dice.rb'



field = Field.new
road = Road.new
crow = Crow.new
dice = Dice.new

# print field

begin
    face = dice.roll  
    print "face  =  #{face}  ===>  "
    if face == "panier" 
        max = field.fruit_rest('red')
        face= "rouge"
        if field.fruit_rest('green') > max
            max = field.fruit_rest('green')
            face="vert"
        end
        if field.fruit_rest('yellow') > max
            max = field.fruit_rest('yellow')
            face="jaune"
        end
        if field.fruit_rest('blue') > max
            max = field.fruit_rest('blue')
            face="bleu"
        end
    end
    if face == "corbeau" 
        road.add_step
        crow.move
        puts "Courbeau avance, il reste #{road.road_size} pas."
    elsif (face == "rouge") && (field.fruit_rest('red')>0)
        field.fruit_remove "red"
        puts "fruit rouge recueilli, il reste #{field.fruit_rest 'red'} fruits rouges"
    elsif (face == "vert") && (field.fruit_rest('green')>0)
        field.fruit_remove "green"
        puts "fruit vert recueilli, il reste #{field.fruit_rest 'green'} fruits verts"
    elsif (face == "jaune") && (field.fruit_rest('yellow')>0)
        field.fruit_remove "yellow"
        puts "fruit jaune recueilli, il reste #{field.fruit_rest 'yellow'} fruits jaunes"
    elsif (face == "bleu") && (field.fruit_rest('blue')>0)
        field.fruit_remove "blue"  
        puts "fruit bleu recueilli, il reste #{field.fruit_rest 'blue'} fruits bleus"
    else    
        puts "il n'ya plus de fruits #{face}s."
    end    
end while !(field.is_basket_full?) && (road.road_size >0)

if field.basket.is_full?
    puts "vous avez gagné"
else
    puts "vous avez perdu"
end