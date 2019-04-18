class Session < ActiveRecord::Base
	belongs_to :member
	belongs_to :trainer

	def self.book_session(m_booking_id,t_id)
		#member_id; trainer_id:	
	new_session = Session.find_or_create_by(member_id: m_booking_id, trainer_id: t_id)		
	
		  	puts "----------------------------------".green
       puts "| Thank you, #{Member.find(m_booking_id).first_name}".green
       puts "| Your session with #{Trainer.find(t_id).name}".green
       puts "| is booked.".green      
        puts "----------------------------------".green 
        sleep(1)
	end

	

	
end 