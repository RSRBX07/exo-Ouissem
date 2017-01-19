class Vehicle
    attr_reader :position , :state
    @@instances_list=[];
    
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
        @@instances_list.push self.class
        puts "--->  Initialization finished   <----"
    end

    def set_position ville
        @position = ville
    end   

    def Vehicle.instances_list
        @@instances_list
    end
end