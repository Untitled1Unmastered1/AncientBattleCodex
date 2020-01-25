class AncientBattleCodex::CLI 
    
    def call #procedural method defining all of the things i want to do 
        list_battles
        codex
    end 

    def list_battles #this instance method depends on the display class method of AncientBattleCodex, in order
        #to return instances of battles --- once this works everything else will work. 
        puts "\n------------------------------------"
        puts puts "Hist'rians! these art the top 14 most decisive ancient battles in hist'ry in descending 'rd'r!"
        puts "------------------------------------"
        AncientBattleCodex::Battle.display #if you return to me battle objects/data from the site EVERYTHING else will work :) 
        # binding.pry 
        INSTANCES.each do |battle|
            puts "#{battle.name} |" "BATTLE BETWEEN:#{battle.parties} |" "LOCATION:#{battle.location}"
        end 
    end 

    def codex 
        input = nil 
        while input != "exit"
            puts "\n------------------------------------"
            puts "[CODEX] 
            Selecteth a battle 'r typeth list to see list again or refresh page. Typeth exit to did quit!"
            input = gets.strip.downcase #this stops it from being an endless loop 
            
            if input.to_i > 0  
                details = INSTANCES[input.to_i-1]
                puts "VICTORY BELONGS TO:#{details.victory} ---------------------------------------------
                #{details.summary}"                

            elsif input == "list"
                list_battles
            elsif input == "exit"
                bye 
            else 
                puts "Art thee weary hist'rian?! WWouldst thee liketh an ale? I gleek. Typeth list 'r exit. "
            end 
        end 
    end 

    def bye
        puts "Thanketh thee f'r coming hist'rian!!"
    end  
end 