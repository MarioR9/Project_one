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
    	member_info = Member.all.select{|member| member.id == self.id}
    	puts "Member ID: #{member_info[0].id}"
    	puts "First Name: #{member_info[0].first_name}"
    	puts "Last Name: #{member_info[0].last_name}"
    	puts "Age: #{member_info[0].age}"
    	puts "Gender: #{member_info[0].gender}"
    	puts "Press any key to return to Main Menu."
    	# iterate through all members
    	# get a member profile using member_id
    	# display profile	
    end 

	def self.receive_new_user
		puts "GET STARTED TODAY!\nEnter your first name:"
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
  		new_member = Member.create(first_name: answer_fn, last_name: answer_ln, age: answer_age, gender: gender)
		puts "Welcome  #{new_member.first_name}"
		puts "Member id is: #{new_member.id}.\nSave this for your records."
    end
    
 	def self.member_intro
 		puts "TRAINIFY" #TTY
 		puts "1. About Us"
		puts "2. Become a Member?"
		puts "3. Log In"
		puts "4. Contact"
		m_answear = STDIN.gets.chomp
		if m_answear == "2"
 		conter = 0
 		while conter < 1 do
	 		self.receive_new_user
		 	conter = 1
			end
		elsif 
			m_answear == "3"
			puts "Welcome back! \nPlease Enter Member Id"
		 	a2 = gets.chomp
			puts "Welcome: #{Member.find(a2).first_name} #{Member.find(a2).last_name}"
		end
	end

 	#Main menu
 	def main_menu
 		puts "Main Menu"
 		puts "Select an Option:"
 		puts "1. View My Profile" #press any key to return to main menu
 		puts "2. Book a Session"
 		puts "3. View My Sessions"
 		puts "4. Featured Trainer" #most pop trainer
 			 answer = STDIN.gets.chomp
 			case answer
				when "1"
					get_member_profile#take cli to member profile
				when 2
					#new session
				when 3
					#return all sessions for that member
				when 4
					#return most pop trainer
				else
		puts "Invalid Input, please select a number between 1 and 4."
 	end
end 





end 

