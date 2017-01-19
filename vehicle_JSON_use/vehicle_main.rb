require "./vehicle.rb"
require "./plane.rb"
require "./counter.rb"

my_plane = Plane.new "Lille"
my_vehicle = Vehicle.new "Lille"
## oubien
#my_plane_2 = Plane.new
#my_plane_2.set_position "Lille"

#puts "Position actuelle   >>>>>>  " + my_plane.position

puts "etat 1 : " + my_plane.state + "  --- roue sorties :" + my_plane.wheel_out.to_s

my_plane.take_off
puts "etat 2 : " + my_plane.state + "  --- roue sorties :" + my_plane.wheel_out.to_s

my_plane.move
puts "etat 3 : " + my_plane.state + "  --- roue sorties :" + my_plane.wheel_out.to_s

my_plane.land
puts "etat 4 : " + my_plane.state + "  --- roue sorties :" + my_plane.wheel_out.to_s

my_plane.stop
puts "etat 5 : " + my_plane.state + "  --- roue sorties :" + my_plane.wheel_out.to_s

## display counter from file counter.txt
print Counter.counters