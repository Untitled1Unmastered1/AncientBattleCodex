#!/usr/bin/env ruby 

require './lib/environment.rb'
#anything that needs my environment can just load it through this one line call above 


AncientBattleCodex::CLI.new.call 

#here i've defined my executable file or execution point this is the file people are running. creates a new
# instance of my cli controller, calls the call method on it, which starts the first procedural method in my cli 
#file which lists the battles, gives user a menu called a codex, and it bids thee farewell. 




