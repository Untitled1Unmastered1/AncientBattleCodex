#Our CLI Controller- responsible for user interactions 
class AncientBattleCodex::CLI 
    
    def call #procedural method defining all of the things i want to do 
        list_battles
        codex 
        bye 
    end 

    def list_battles #here doc: prints large strings 
        puts "Hist'rians! these art the top 14 most decisive ancient battles in hist'ry in descending 'rd'r!"
        @battles = AncientBattleCodex::Battle.hey
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
