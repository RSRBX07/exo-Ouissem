class Vehicle
    attr_reader :position , :state        
    class << self
        attr_accessor :instances_list
    end

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
        # create / update class.variable
        self.class.instances_list ||= []
        self.class.instances_list << self.class
        puts "--->  Initialization finished   <----"
    end

    def set_position ville
        @position = ville
    end   
end