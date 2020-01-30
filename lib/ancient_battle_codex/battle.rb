class AncientBattleCodex::Battle 
    attr_accessor :name, :parties, :victory, :location, :summary
    

    @@all = []

    def initialize 
        @@all << self

    end 

    def self.all
        @@all 
    end 
end 
 

