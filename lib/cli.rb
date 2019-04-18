require 'pry'
require 'colorize'


class CommandLineInterface 

	
	def run
	member_intro
	#main menu
	Member.member_menu(@m_ans)
	end
	
	def member_intro
 		puts"
		╔╦╗╦═╗╔═╗╦╔╗╔╦╔═╗╦ ╦
		 ║ ╠╦╝╠═╣║║║║║╠╣ ╚╦╝
		 ╩ ╩╚═╩ ╩╩╝╚╝╩╚   ╩ 
		
		".blue #TTY
 		puts "1. About Us"
		puts "2. Become a Member?"
		puts "3. Log In"
		puts "4. Contact"
		puts "5. Exit"
		@m_ans = STDIN.gets.chomp
		if @m_ans == "5"
			Process.exit(0)
		elsif @m_ans == "1"
				about_us
		elsif @m_ans == "4"
				contact
		elsif @m_ans == "2"
			Member.member_authe(2)
			@m_ans = "2"
		elsif @m_ans == "3"
			Member.member_authe(3)
			@m_ans = "3"
		end	

	end
	
	def about_us
		
		puts"
		╔╦╗╦═╗╔═╗╦╔╗╔╦╔═╗╦ ╦
		 ║ ╠╦╝╠═╣║║║║║╠╣ ╚╦╝
		 ╩ ╩╚═╩ ╩╩╝╚╝╩╚   ╩ 
		
		".green
		exit_menu
	end

	def contact
		puts"
		╔╦╗╦═╗╔═╗╦╔╗╔╦╔═╗╦ ╦
		 ║ ╠╦╝╠═╣║║║║║╠╣ ╚╦╝
		 ╩ ╩╚═╩ ╩╩╝╚╝╩╚   ╩ 
		
		".red
		exit_menu
	end

	def exit_menu
		puts"1. Exit"
		my_exit = gets.chop
		if my_exit == "1"
			run
		else 
		puts "Invalid Input"
		end
	end

 end
