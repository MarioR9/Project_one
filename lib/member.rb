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

    	Member.all.select{|member| member.id == self.id}
    	#iterate through all members
    	#get a member profile using member_id
    	#display profile

    end 


	def receive_new_user
		
		puts "Welcome"
		puts "Hello!\nEnter your first name:"
		answer_fn = STDIN.gets.chomp
		puts "Enter your last name:"
		answer_ln = STDIN.gets.chomp
		puts "How old are you in years?"
		answer_age = STDIN.gets.chomp.to_i
		puts "Enter 1 for female \nEnter 2 for male \nEnter 3 for non-binary"
		answer_g = STDIN.gets.chomp
			if answer_g == 1
				gender = "Female"
			elsif answer_g == 2
				gender = "Male"
			else answer_g == 3
				gender = "Non-binary"
			end
   new_member =  Member.create(first_name: answer_fn, last_name: answer_ln, age: answer_age, gender: gender)

    end
    
 #    def most_popular_trainer
 # 		#find the trainer tha has the most booked sessions.
				
	# 	Session.all.select(:trainer_id).group(:trainer_id)
	# #User.select(:first,:email).group(:first,:email).having("count(*) > 1")	
	
 #    end


end 

