class Vehicle
    attr_reader :position , :state
    @@counter=0;
    
    def self.new ville=nil
         puts "--->  Instanciating vehicle is started   <----"
         super
         puts "--->  Instanciating vehicle is finished   <----"         
         @position = ville
         @@counter +=1
         super
    end
    
    def initialize ville=nil
        puts "--->  Initialization started   <----"
        @position = ville
        @state = "Stopped"
        puts "--->  Initialization finished   <----"
    end

    def set_position ville
        @position = ville
    end   

    def Vehicle.counter
        @@counter
    end
end