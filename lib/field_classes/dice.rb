# Classe de Dé
class Dice   
  def roll
    @faces.sample
  end

  def initialize 
    @faces=["corbeau","panier","rouge","vert","jaune","bleu"] 
  end
end