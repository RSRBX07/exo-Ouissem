require './fruit.rb'
class TreeSet
    attr_reader :trees

    def initialize
        @trees ={}
        @trees[:red] = [] ; 4.times do @trees[:red].push Fruit.new :red end
        @trees[:green] = [] ; 4.times do @trees[:green].push Fruit.new :green end
        @trees[:blue ] = []; 4.times do @trees[:blue].push Fruit.new :blue end
        @trees[:yellow] = [] ; 4.times do @trees[:yellow].push Fruit.new :yellow end       
    end     
    def fruit_remove color
        return false if @trees[color.to_sym].size == 0 
        @trees[color.to_sym].pop         
    end
end

class Basket
    attr_reader :gathed , :capacity
    def initialize value
        @gathed =[]
        @capacity = value
    end
    
    def gath_fruit fruit
        @gathed.push fruit
    end

    def is_full?
        return true if @gathed.length ==@capacity
        return false
    end
end

class Field
    attr_reader :tree_set , :basket 

    def initialize
        @tree_set = TreeSet.new
        @basket = Basket.new 16
    end 

    def fruit_remove color       
        fruit = @tree_set.fruit_remove color
        @basket.gath_fruit fruit
    end
    
    def is_basket_full?
        @basket.is_full?
    end   

    def fruit_rest color
        @tree_set.trees[color.to_sym].size
    end
end