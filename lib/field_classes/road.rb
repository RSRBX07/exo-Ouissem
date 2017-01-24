class Road
  attr_reader :road_size

  def initialize
    @road_size = 5
  end 

  def add_step
    @road_size -= 1
  end  
end 




