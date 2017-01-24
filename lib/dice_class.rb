
# retourne la valeur de la face lancée
=begin
# 1ere methode : argument optionnel
def roll(*cheated_value)
    return cheated_value if cheated_value.length == 1
    return 1 + rand(6)    
end
=end

# 2ème methode : argument optionnel
class Dice
    @nb_dices = 0
    def initialize
        Dice.count
    end
    #méthode de Classe
    def self.count
        #puts self.inspect         ' affiche le nom correspondant à self; ici c'est Dice
        @nb_dices +=1
        puts "nombre d'instanciations : #{@nb_dices}"
    end
    #méthode d'instance
    def roll(cheated_value=nil)
        #puts self.inspect         ' affiche le nom correspondant à self; ici c'est l'instance d'objet de Dice
        return cheated_value if cheated_value
        return 1 + rand(6)
    end
end

infos = {}
print "tapez votre nom et prénom : "
infos[:author] = gets.chomp
print "tapez votre ville : "
infos[:ville] = gets.chomp

my_dice = Dice.new
print "face jouée : #{my_dice.roll} \n"
my_dice1 = Dice.new
print "face pipé : #{my_dice1.roll 3} \n"

puts "Made with love @ #{infos[:ville]} by #{infos[:author]}"