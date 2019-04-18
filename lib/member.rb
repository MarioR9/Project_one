require "pry"


class Member < ActiveRecord::Base
    has_many(:sessions)
    has_many(:trainers, {through: :sessions})

	#instance class needs an instance of a Member    
    def find_booked_trainers
    	n = 1
      #member can find all the trainers they have booked.
      #find trainer_id and mache it with trainer book and return trainer 
	  session_t = Session.all.find_all do|session| 
	  	session.member == self	
	  end
	  

	  find_trainers = session_t.map{|session|session.trainer}
	  #iterating find_trainers to output custome msg for every instance of a trainer stored.
	  	puts "Booked Sessions"
	  	 # binding.pry	
n = 1
	  find_trainers.each do |trainer|
	  	puts "----------------------------------".green  
       puts "| Booked Trainer: #{trainer.name}".green
       puts "| Yrs exp: #{trainer.yrs_of_exp}".green
       puts "| id: #{trainer.id}".green        
       puts "| Session ID ##{n}".green
        puts "----------------------------------".green 
        n += 1
	  	end
	  end
	#   	binding.pry
	#   	puts "Press 'C' to cancel a session."
	#   	cancel_input = STDIN.gets.chomp

	#   if 

	#   else
	#   	puts "Invalid Input"
	# end
    

    def get_member_profile
    	member_info = Member.all.select{|member| member.id == self.id}
    	puts "Member ID: #{member_info[0].id}".blue
    	puts "First Name: #{member_info[0].first_name}".blue
    	puts "Last Name: #{member_info[0].last_name}".blue
    	puts "Age: #{member_info[0].age}".blue
    	puts "Gender: #{member_info[0].gender}".blue
    	
    	# iterate through all members
    	# get a member profile using member_id
    	# display profile	
    end 

	def self.register_new_user
		puts "GET STARTED TODAY!\nEnter your first name:"
		answer_fn = STDIN.gets.chomp
		puts "Enter your last name:"
		answer_ln = STDIN.gets.chomp
		puts "How old are you in years?"
		answer_age = STDIN.gets.chomp.to_i
		puts "Enter 1 for female \nEnter 2 for male \nEnter 3 for non-binary"
		answer_g = STDIN.gets.chomp
			if answer_g == "1"
				gender = "Female"
			elsif answer_g == "2"
				gender = "Male"
			else answer_g == "3"
				gender = "Non-binary"
			end
  		new_member = Member.create(first_name: answer_fn, last_name: answer_ln, age: answer_age, gender: gender)
		puts "Welcome  #{new_member.first_name}!".red
		puts "Member id is: #{new_member.id}.\nSave this for your records.".yellow
		self.member_menu(new_member.id)
		# binding.pry
	end
    

	def	self.welome_member		
 			puts "Welcome back! \nPlease Enter Member Id"
		 	member = STDIN.gets.chomp
			puts "Welcome: #{Member.find(member).first_name} #{Member.find(member).last_name}"
			self.member_menu(member)
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
 		puts "4. Featured Trainer" #most pop trainer
 		puts "5. Cancel a Session"
 		puts "Press return to Exit" 
 		answer = STDIN.gets.chomp
 			case answer
				when "1"
				Member.find(number).get_member_profile#take cli to member profile
				self.member_menu(number)
				when "2"
					puts "TRAINIFY \nTrainers"
					Trainer.display_all_trainers
					puts "  "
					puts "Input Trainer's Id to booked"
					t_id = STDIN.gets.chomp
					Session.book_session(number,t_id)
				self.member_menu(number)
					# binding.pry
				when "3"
				Member.find(number).find_booked_trainers#return all sessions for that member
				self.member_menu(number)
				when "4"
					#return most pop trainer
					self.member_menu(number)
				when "5"

					#terminate the process
					# Process.exit(0)
					

			else
 		end	
	end 

	def remove_session
		find_booked_trainers
	#display current sessions
	#sellect session to be removed
	#remove the session
	
	end



end 

