class Vehicle
    attr_reader :position

    def initialize ville=""
        @position = ville
    end

    def move ville        
        @position &&=ville
    end
end