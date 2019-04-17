require "pry"

class Member < ActiveRecord::Base
    has_many(:sessions)
    has_many(:trainers, {through: :sessions})

	#instance class needs an instance of a Member    
    def find_booked_trainers
    	n = 1;
      #member can find all the trainers they have booked.
      #find trainer_id and mache it with trainer book and return trainer 
	  session_t = Session.all.find_all {|session| session.member == self}  	
	  # session.trainer_id
	  find_trainers = session_t.map{|session|session.trainer}
	  #iterating find_trainers to output custome msg for every instance of a trainer stored.
	  find_trainers.each do |x|
	  	puts "#{n}. Booked #{x.name} #{x.yrs_of_exp} Years of Experience"
	  		n += 1
	  end
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
  		@new_member = Member.create(first_name: answer_fn, last_name: answer_ln, age: answer_age, gender: gender)
  		
		puts "Welcome  #{@new_member.first_name}"
		puts "Member id is: #{@new_member.id}.\nSave this for your records."
		return @new_member.id
    end
    

	def	self.member_authe(new_a)
		if new_a == 2
 			self.receive_new_user
		 elsif 
			new_a == 3
			puts "Welcome back! \nPlease Enter Member Id"
		 	a2 = STDIN.gets.chomp
			puts "Welcome: #{Member.find(a2).first_name} #{Member.find(a2).last_name}"
			return a2
		end


	end

 	#Main menu
 	def self.member_menu(number)
 		# counter = 0
 		# while counter < 1 do
 		puts "Main Menu"
 		puts "Select an Option:"
 		puts "1. View My Profile" #press any key to return to main menu
 		puts "2. Book a Session"
 		puts "3. View My Sessions"
 		puts "4. Featured Trainer"
 		puts "5. Exit" #most pop trainer
 		answer = STDIN.gets.chomp
 			case answer
				when "1"
					Member.find(number).get_member_profile#take cli to member profile

				when "2"
					puts "TRAINIFY \nTrainers"
					Trainer.display_all_trainers
					puts "  "
					puts "Input Trainer's Id"
					t_id = STDIN.gets.chomp
					Session.book_session(number,t_id)

				when "3"
					Member.find(number).find_booked_trainers#return all sessions for that member
				when "4"
					#return most pop trainer
				when "5"
					Process.exit(0) #terminate the process
			else
 		end
 		
	end 





end 

