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
        INSTANCES[10].name = html.css("#post-393 > div > div > h2:nth-child(17)").text 
        array_7 = html.css("#post-393 > div > div > p:nth-child(19)").children.to_a
        INSTANCES[10].parties = array_7[1].text 
        INSTANCES[10].victory = array_7[17].text 
        INSTANCES[10].location = array_7[21].text 
        INSTANCES[10].summary = html.css("#post-393 > div > div > p:nth-child(20)").text 
        INSTANCES[9].name = html.css("#post-393 > div > div > h2:nth-child(21)").text 
        array_8 = html.css("#post-393 > div > div > p:nth-child(23)").children.to_a 
        INSTANCES[9].parties = array_8[1].text 
        INSTANCES[9].victory = array_8[17].text 
        INSTANCES[9].location = array_8[21].text 
        INSTANCES[9].summary = html.css("#post-393 > div > div > p:nth-child(24)").text 
        INSTANCES[8].name = html.css("#post-393 > div > div > h2:nth-child(25)").text 
        array_9 = html.css("#post-393 > div > div > p:nth-child(27)").children.to_a 
        INSTANCES[8].parties = array_9[1].text 
        INSTANCES[8].victory = array_9[17].text 
        INSTANCES[8].location = array_9[21].text 
        INSTANCES[8].summary = html.css("#post-393 > div > div > p:nth-child(28)").text 
        INSTANCES[7].name = html.css("#post-393 > div > div > h2:nth-child(29)").text 
        array_10 = html.css("#post-393 > div > div > p:nth-child(31)").children.to_a
        INSTANCES[7].parties = array_10[1].text 
        INSTANCES[7].victory = array_10[17].text 
        INSTANCES[7].location = array_10[21].text
        INSTANCES[7].summary = html.css("#post-393 > div > div > p:nth-child(32)").text 
        INSTANCES[6].name = html.css("#post-393 > div > div > h2:nth-child(33)").text 
        array_11 = html.css("#post-393 > div > div > p:nth-child(34)").children.to_a
        INSTANCES[6].parties = array_11[1].text 
        INSTANCES[6].victory = array_11[17].text 
        INSTANCES[6].location = array_11[21].text 
        array_12 = html.css("#post-393 > div > div > p:nth-child(35)").to_a << html.css("#post-393 > div > div > p:nth-child(36)").text 
        INSTANCES[6].summary = array_12[0].text << array_12[1]
        INSTANCES[5].name = html.css("#post-393 > div > div > h2:nth-child(37)").text 
        array_13 = html.css("#post-393 > div > div > p:nth-child(38)").children.to_a
        INSTANCES[5].parties = array_13[1].text 
        INSTANCES[5].victory = array_13[17].text 
        INSTANCES[5].location = array_13[21].text 
        INSTANCES[5].summary = html.css("#post-393 > div > div > p:nth-child(39)").text 
        INSTANCES[4].name = html.css("#post-393 > div > div > h2:nth-child(40)").text 
        array_14 = html.css("#post-393 > div > div > p:nth-child(42)").children.to_a 
        INSTANCES[4].parties = array_14[1].text 
        INSTANCES[4].victory = array_14[17].text 
        INSTANCES[4].location = array_14[21].text 
        INSTANCES[4].summary = html.css("#post-393 > div > div > p:nth-child(43)").text
        INSTANCES[3].name = html.css("#post-393 > div > div > h2:nth-child(44)").text 
        array_15 = html.css("#post-393 > div > div > p:nth-child(46)").children.to_a
        INSTANCES[3].parties = array_15[1].text 
        INSTANCES[3].victory = array_15[17].text 
        INSTANCES[3].location = array_15[21].text 
        INSTANCES[3].summary = html.css("#post-393 > div > div > p:nth-child(47)").text 
        INSTANCES[2].name = html.css("#post-393 > div > div > h2:nth-child(48)").text 
        array_16 = html.css("#post-393 > div > div > p:nth-child(49)").children.to_a 
        INSTANCES[2].parties = array_16[1].text 
        INSTANCES[2].victory = array_16[17].text 
        INSTANCES[2].location = array_16[21].text 
        array_17 = html.css("#post-393 > div > div > p:nth-child(50)").to_a << html.css("#post-393 > div > div > p:nth-child(51)").text 
        INSTANCES[2].summary = array_17[0].text << array_17[1]
        INSTANCES[1].name = html.css("#post-393 > div > div > h2:nth-child(52)").text 
        array_18 = html.css("#post-393 > div > div > p:nth-child(53)").children.to_a 
        INSTANCES[1].parties = array_18[1].text 
        INSTANCES[1].victory = array_18[17].text 
        INSTANCES[1].location = array_18[21].text
        INSTANCES[1].summary = html.css("#post-393 > div > div > p:nth-child(54)").text 
        INSTANCES[0].name = html.css("#post-393 > div > div > h2:nth-child(55)").text 
        array_19 = html.css("#post-393 > div > div > p:nth-child(57)").children.to_a
        INSTANCES[0].parties = array_19[1].text 





        







        





    

    

        



    


        

        

        


    
        binding.pry 

        

        # binding.pry 
        #"battle" #this goes after parsing through the xml elements and applying its return value to the attributes, this shoves it into the battles array in the scrape_battles class method above.. 

    end 
end 
