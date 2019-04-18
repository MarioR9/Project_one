class Trainer < ActiveRecord::Base
    has_many(:sessions)
    has_many(:members, {through: :sessions})

  
    def trainer_sessions
    	Session.all.select {|session|session.trainer_id == self.id}
    end	

    def self.display_all_trainers
        puts "Avalible Trainers:"

    	Trainer.all.map do |trainer|
        puts "--------------------------".yellow  
       puts "| Trainer: #{trainer.name}".yellow
       puts "| Yrs exp: #{trainer.yrs_of_exp}".yellow
       puts "| id: #{trainer.id}".yellow            
        puts "--------------------------".yellow   
        sleep(0.1)
 
		end

    end
    	
    
   
	    
end 

 

