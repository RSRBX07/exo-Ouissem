require "./vehicle/vehicle.rb"

my_vehicle = Vehicle.new "Lille"
my_vehicle.move "Paris"

puts my_vehicle.start_position + "  >>>>>>  " + my_vehicle.target_position