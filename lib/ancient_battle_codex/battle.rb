class AncientBattleCodex::Battle 
    attr_accessor :name, :parties, :victory, :location, :summary 

    @@all = []

    def initialize 
        @@all << self 
    end 

    def self.all
        @@all
    end 


    def self.display #display calls scrape_battles as long as its returning an array of battle objects 
        #scrape data from site and then return battles based on that data 
        self.scrape_battles 
    end 

    def self.scrape_battles
        battles = [] #everytime i scrape a battle, it should push into this empty array, and that will be the return #value of this method 

        battles << self.scrape_article 
        #go to site find the battle 
        #extract the details of each battle 
        #instantiate a battle object 

        #go to site 
        battles 
    end 

    def self.scrape_article 
        html = Nokogiri::HTML(open("https://www.ancienthistorylists.com/ancient-civilizations/top-14-decisive-ancient-battles-history/"))
        INSTANCES[0].name = html.css("#post-393 > div > div > h2:nth-child(2)").text
        array = html.css("#post-393 > div > div > p:nth-child(4)").to_a
        doc = array[0].children.to_a
        INSTANCES[0].parties = doc[1].text

        # INSTANCES[0].parties = html.css("#post-393 > div > div > p:nth-child(4) > strong:nth-child(1)").text
        binding.pry         

        
        # meh = doc.css("h2").children
        # meh.each do |title| 
        #     b = AncientBattleCodex::Battle.new 
        #     b.name = title.text 
        # binding.pry 
        # end 

        # here put,    "name = html.search("").text"  ----------------- then each with its individual attribute and html in the parentheses 

        #battle #this goes after parsing through the xml elements and applying its return value to the attributes, this shoves it into the battles array in the scrape_battles class method above.. 

    end 
end 
