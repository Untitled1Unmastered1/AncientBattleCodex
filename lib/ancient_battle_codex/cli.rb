class AncientBattleCodex::CLI 
    
    def call 
        list_battles
        codex
    end 

    def list_battles 
        puts "\n------------------------------------"
        puts "Hist'rians! These art the top 14 most decisive ancient battles in hist'ry!"
        puts "------------------------------------"
        AncientBattleCodex::Scraper.scrape_article 
        INSTANCES.each do |battle|
            puts "#{battle.name} |" "BATTLE BETWEEN:#{battle.parties} |" "LOCATION:#{battle.location}"
        end 
    end 

    def valid?(input)
        if (1..14).any? {|num| num == input.to_i}
            true
        else
            false
        end
    end

    def codex 
        input = nil 
        while input != "exit"
            puts "\n------------------------------------"
            puts "[CODEX]   Selecteth a battle 'r typeth list to see list again or refresh page. Typeth exit to did quit!"
            puts "\n------------------------------------"
            input = gets.strip.downcase 
             
            if valid?(input)
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