
class CommandLineInterface 

	
	def run
	member_intro
	#main menu
	@reg_member = Member.member_authe(@m_answear)
	Member.member_menu(@reg_member)
	end
	
	def member_intro
 		puts "TRAINIFY" #TTY
 		puts "1. About Us"
		puts "2. Become a Member?"
		puts "3. Log In"
		puts "4. Contact"
		puts "5. Exit"
		@m_answear = STDIN.gets.chomp
		if @m_answear == "5"
			Process.exit(0)
		end
	end

 end
