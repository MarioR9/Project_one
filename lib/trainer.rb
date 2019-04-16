class Trainer < ActiveRecord::Base
    has_many(:sessions)
    has_many(:members, {through: :sessions})

  
    def trainer_sessions
    	Session.all.select {|session|session.trainer_id == self.id}
    end	


   
	    
end 

 

