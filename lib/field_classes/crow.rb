class Crow
  attr_reader :position , :state
  def initialize
    @position = 0
    @state= "hungry"
  end
  def move    
    @state = "eating" if @position==4
    @position += 1
  end

  
  # def win
  #   if @position == 5
  #     puts "The crow win"
  #   else
  #     puts "The crow lose"
  #   end
  # end
end
