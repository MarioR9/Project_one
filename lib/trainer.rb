class Trainer < ActiveRecord::Base
    has_many(:sessions)
    has_many(:members, {through: :sessions})

  
    def trainer_sessions
    	Session.all.select {|session|session.trainer_id == self.id}
    end	

    def self.display_all_trainers
    	Trainer.all.map do |x|
    	puts "*#{x.name} trainer for #{x.yrs_of_exp} years *-* Trainer id: #{x.id}" 
		end

    end
    	
    
   
	    
end 

 

