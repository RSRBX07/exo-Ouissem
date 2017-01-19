class Plane < Vehicle 
    attr_reader :wheel_out

    # def self.new ville=nil       
    #      super        
    # end

    def initialize ville=nil        
        @wheel_out = true
        super
    end   

    ############## Plane Functions

    def take_off
        @state = "Taking off"
        @wheel_out = false
    end     
    def land
        @state = "Landing"
        @wheel_out = true
    end     
    def move
        @state = "Flying"
        @wheel_out = false
    end     
    def stop
        @state = "Stopped"
        @wheel_out = true
    end     
end