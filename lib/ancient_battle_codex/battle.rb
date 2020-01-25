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
        INSTANCES[13].name = html.css("#post-393 > div > div > h2:nth-child(2)").text
        array_1 = html.css("#post-393 > div > div > p:nth-child(4)").to_a
        doc_1 = array_1[0].children.to_a
        INSTANCES[13].parties = doc_1[1].text
        INSTANCES[13].victory = array_1[0].children[17].text 
        INSTANCES[13].location = array_1[0].children[21].text
        array_2 = html.css("#post-393 > div > div > p:nth-child(5)").to_a << html.css("#post-393 > div > div > p:nth-child(6)").text
        INSTANCES[13].summary = array_2[0].text << array_2[1]
        INSTANCES[12].name = html.css("#post-393 > div > div > h2:nth-child(7)").text
        array_3 = html.css("#post-393 > div > div > p:nth-child(9)").to_a
        doc_2 = array_3[0].children.to_a
        INSTANCES[12].parties = doc_2[1].text 
        doc_3 = array_3[0].children.to_a 
        INSTANCES[12].victory = doc_3[17].text 
        INSTANCES[12].location = array_3[0].children[21].text 
        array_4 = html.css("#post-393 > div > div > p:nth-child(10)").to_a
        INSTANCES[12].summary = array_4[0].text 
        INSTANCES[11].name = html.css("#post-393 > div > div > h2:nth-child(11)").text
        array_5 = html.css("#post-393 > div > div > p:nth-child(13)").children.to_a
        INSTANCES[11].parties = array_5[1].text 
        INSTANCES[11].victory = array_5[17].text 
        INSTANCES[11].location = array_5[21].text 
        array_6 = html.css("#post-393 > div > div > p:nth-child(14)").to_a << html.css("#post-393 > div > div > p:nth-child(15)").text 
        INSTANCES[11].summary = array_6[0].text << array_6[1] 
        INSTANCES[10]


    
        binding.pry 

        

        # binding.pry 
        #"battle" #this goes after parsing through the xml elements and applying its return value to the attributes, this shoves it into the battles array in the scrape_battles class method above.. 

    end 
end 
