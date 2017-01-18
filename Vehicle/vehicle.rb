class Vehicle
    attr_reader :start_position , :target_position

    def initialize ville=nil
        @start_position = ville
    end

    def set_position ville
        @position = ville
    end

    def move ville
        @target_position = ville
    end
end