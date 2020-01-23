class AncientBattleCodex::Battle 
    attr_accessor :name, :time, :parties, :leaders, :victory, :location, :strength, :summary, :url 


    def self.display 
        #scrape data from site and then return battles based on that data 
        self.scrape_battles 
    end 

    def self.scrape_battles
        #go to site find the battle 
        #extract the details of each battle 
        #instantiate a battle object 

        [battle_14, battle_13]
    end 
end 


# battle_14 = self.new 
# battle_14.name = "Battle of Platea"
# battle_14.time = "479 BC"
# battle_14.parties = "Persians VS Greeks"
# battle_14.leaders = "Persian Leader: General Pausanias | Greek Leader: Aristides" 
# battle_14.victory = "Victor: Greece"
# battle_14.location = "Location: Platea, Greece"
# battle_14.strength = "Army Size: Greek Army had 40,000 men & Persian Army had 70,000 men."
# battle_14.summary = "In the summer of 479 BC, a large Persian force led by King Xerxes invaded Greece. The Greeks tried to hold the Persian force with 300 Spartiates and 7,000 hoplites under the leadership of King Leonidas in a narrow pass. Despite the gallant efforts of the Spartans, Persia conquered Thermopylae and had several victories in Artemisium, Thessaly, Boeotia, Euboea, and Attica. However, the Persians lost the Battle of Salamis. Then Xerxes retreated and returned to Asia with half of his army. He put Mardonius in charge in Boeotia.The 60,000 hoplites, under the command of the Spartan king, Pausanius, marched towards Boeotia to fight the Persians. The historic battle took place near Plataea (modern Plataiai) in Boeotia. A huge portion of the Persian army was trapped in the camp and slaughtered. This battle allegedly happened on the same day as the Battle of Mycale and marked the end of the Persian invasion."
# battle_14.url = "https://www.ancienthistorylists.com/ancient-civilizations/top-14-decisive-ancient-battles-history/"

# battle_13 = self.new 
# battle_13.name = "Battle of Thermopylae"
# battle_13.time = "480 BC"
# battle_13.parties = "Persians VS Greeks"
# battle_13.leaders = "Persian Leaders: King Xerxes I, Mardonius, Hydarnes | Greek Leaders:  King Leonidas I, Demophilus"
# battle_13.victory = "Victor: Persia"
# battle_13.location = "Location: Thermopylae, Greece"
# battle_13.strength = 
# battle_13.summary = "In the summer of 480 BC, an unparalleled Greek force of 7,000 men, led by King Leonidas of Sparta, blocked the outnumbered Persian army at the pass. The Greeks held off the Persians for seven days in three vicious battles, often epitomized as famous last-stand battles in history. Leonidas blocked the road with his troops for two days, this road being the one and only way for the Persian army to pass. After the continuous two-day battle, Greek resident Ephiatles revealed a secret pass through which the Persian army could enter. Leonidas, with his 300 Spartans and several other Thespians and Thebans died a glorious death at the pass."
# battle_13.url = "https://www.ancienthistorylists.com/ancient-civilizations/top-14-decisive-ancient-battles-history/"