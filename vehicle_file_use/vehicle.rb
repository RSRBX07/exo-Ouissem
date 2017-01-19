require "./counter.rb"
class Vehicle
    attr_reader :position , :state        

    def self.new ville=nil
         puts "--->  Instanciating vehicle is started   <----"
         obj = super
         puts "--->  Instanciating vehicle is finished   <----"                          
         obj
    end
    
    def initialize ville=nil
        puts "--->  Initialization started   <----"        
        @position = ville
        @state = "Stopped"        
        Counter.add_instance
        puts "--->  Initialization finished   <----"
    end

    def set_position ville
        @position = ville
    end   
end