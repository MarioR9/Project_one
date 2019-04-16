require "pry"

class Member < ActiveRecord::Base
    has_many(:sessions)
    has_many(:trainers, {through: :sessions})

    
    def find_trainers(member_id)
    #member can find all the trainers they have booked.
    #find trainer_id and mache it with trainer book and return trainer 
    	session_t = Session.all.select do |session|
    		session.member_id == member_id
    			# session.trainer_id
    		end
    binding.pry
    		
    	
    	
    	


    # fund session by trainer - need to return trainer instace 
    	

    
    end
    
end 

