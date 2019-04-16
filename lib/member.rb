require "pry"

class Member < ActiveRecord::Base
    has_many(:sessions)
    has_many(:trainers, {through: :sessions})

    
    def find_booked_trainers
    #member can find all the trainers they have booked.
    #find trainer_id and mache it with trainer book and return trainer 
	    session_t = Session.all.find_all {|session| session.member == self}
	    			# session.trainer_id
	    session_t.map{|session|session.trainer}
	end
    

    def get_member_profile

    	Member.all.select{|x| x.id == self.id}
    	#iterate through all members
    	#get a member profile using member_id
    	#display profile

    end 

    def 
    	#create an new member 
    	

    end 
#     def most_popular_trainer
# #finds the most popular trainer by going through all the instances of
# #trainer and returns the trainer with the most sessions
# 		# most_sessions_int = 0
# 		Session.all.map {|session| session.trainer}
# 		binding.pry
#     end


end 

