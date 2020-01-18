#Our CLI Controller- responsible for user interactions 
class AncientBattleCodex::CLI 
    
    def call #procedural method defining all of the things i want to do 
        list_battles
        codex 
        bye 
    end 

    def list_battles #here doc: prints large strings 
        puts "Hist'rians! these art the top 14 most decisive ancient battles in hist'ry in descending 'rd'r!"
        puts <<-DOC.gsub /^\s*/, ''
        14. Battle of Platea       | 479 BC  | Persians VS Greeks 
        13. Battle of Thermopylae  | 480 BC  | Persians VS Greeks 
        12. Battle of Red Cliffs   | 208 AD  | Southern Warlords Liu Bei & Sun Quan VS Northern Warlord Cao Cao
        11. Battle of the Hydaspes | 326 BC  | Macedonians VS Hindu Paurava Kingdom
        10. Battle of Changping    | 262 BC - 260 BC | State of Qin VS State of Zhao 
        9.  Battle of Chalons      | 451 AD  | Roman Empire VS Gallic Empire
        8.  Battle of Kadesh       | 1274 BC | New Kingdom of Egypt VS Hittite Empire 
        7.  The Siege of Syracuse  | 214 BC – 212 BC |  Roman Republic VS Syracuse, Carthage
        6.  Battle of the Metaurus | 207 BC  | Carthage VS Roman Republic 
        5.  Third Servile War      | 73 BC –  71 BC  |  Roman Republic VS Escaped Gladiators
        4.  Battle of Gaugamela    | 331 BC  | Hellenic League VS Achaemenid Empire 
        3.  Battle of Salamis      | 480 BC  | Roman Republic VS Parthian Empire 
        2.  Battle of Carrhae      | 53 BC   | Roman Republic VS Parthian Empire 
        1.  Battle of Gaixia       | 202 BC  | Han VS Western Chu 

        DOC
    end 

    def codex 
        puts "[CODEX] Selecteth a battle 'r typeth list to see full listeth again. Typeth exit to did quit!"
        input = nil 
        while input != "exit"
        input = gets.strip.downcase
        case input 
        when "14"
            puts "M're info on battleth 14.."
        when "13"
            puts "M're info on battleth 13.."
        when "12"
            puts "M're info on battleth 12.."
        when "11"
            puts "M're info on battleth 11.."
        when "10"
            puts "M're info on battleth 10.."
        when "9"
            puts "M're info on battleth 9.."
        when "8"
            puts "M're info on battleth 8.."
        when "7"
            puts "M're info on battleth 7.."
        when "6"
            puts "M're info on battleth 6.."
        when "5"
            puts "M're info on battleth 5.."
        when "4"
            puts "M're info on battleth 4.."
        when "3"
            puts "M're info on battleth 3.."
        when "2"
            puts "M're info on battleth 2.."
        when "1"
            puts "M're info on the most decisive ancient battle in hist'ry.."
        when "list"
            list_battles
        else 
            puts "Art thee weary hist'rian?! WWouldst thee liketh an ale? I gleek. Typeth list 'r exit. "
        end 
    end 
end 

    def bye
        puts "Thanketh thee f'r coming hist'rian!!"
    end  
end 
