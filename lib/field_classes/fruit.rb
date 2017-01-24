class Fruit
  attr_reader :cueilli
  attr_reader :color

  COLORS = [:red, :blue, :yellow, :green]
    
  def initialize color_symbol
    raise ArgumentError.new "new fruit color should be one of #{Fruit::COLORS}, got #{color_symbol}" unless Fruit::COLORS.include? color_symbol

    puts " un nouveau fruit vient d'être positionné sur un arbre"
    @cueilli = false
    @color = color_symbol
  end

end

