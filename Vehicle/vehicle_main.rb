require "./vehicle.rb"
require "./plane.rb"

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

print my_plane.class.instances_list ; puts
print my_vehicle.class.instances_list ; puts

instances_list = []

my_plane2 = Plane.new "Lille"
my_vehicle2 = Vehicle.new "Lille"

print instances_list ; puts

print my_plane.class.instances_list ; puts
print my_vehicle.class.instances_list ; puts

