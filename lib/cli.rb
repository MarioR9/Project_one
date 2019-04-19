require 'pry'
require 'colorize'


class CommandLineInterface


	def run
		counter = 0
		while counter <1
		member_intro
	#main menu
		end
	end

	def member_intro
		logo
 		# puts"
		# ╔╦╗╦═╗╔═╗╦╔╗╔╦╔═╗╦ ╦
		#  ║ ╠╦╝╠═╣║║║║║╠╣ ╚╦╝
		#  ╩ ╩╚═╩ ╩╩╝╚╝╩╚   ╩
		#
		# ".blue #TTY

 		puts "1. About Us"
		puts "2. Become a Member?"
		puts "3. Log In"
		puts "4. Contact"
		puts "5. Exit"
		m_a = STDIN.gets.chomp
		if m_a == "5"
			Process.exit(0)
		elsif m_a == "1"
				about_us
		elsif m_a == "4"
				contact
		elsif m_a == "2"
			Member.register_new_user
		elsif m_a == "3"
			Member.welome_member

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
	 C.E.O Mario Rodriguez
 	 github.com/marioR9

	 C.E.O Errol Watson
	 github.com/errolgh

	 C.E.O Angela Mumba
 	 github.com/angiemalaika
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

	def logo
 puts "          _                 _
    _  _ | |               | | _  _
   | || || |               | || || |
 =H| || || |===TRAINIFY====| || || |H=
   |_||_|| |               | ||_||_|
         |_|               |_|".yellow
	end



 end
