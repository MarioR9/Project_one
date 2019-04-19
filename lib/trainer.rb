class Trainer < ActiveRecord::Base
    has_many(:sessions)
    has_many(:members, {through: :sessions})


    def trainer_sessions
    	Session.all.select {|session|session.trainer_id == self.id}
    end

    def self.display_all_trainers
        puts "Avalible Trainers:"

    	Trainer.all.map do |trainer|
        puts "--------------------------".yellow
       puts "| Trainer: #{trainer.name}".yellow
       puts "| Yrs exp: #{trainer.yrs_of_exp}".yellow
       puts "| id: #{trainer.id}".yellow
        puts "--------------------------".yellow
        sleep(0.1)

		end

    end

    # def self.featured_trainer
    #   arr = Session.all.map do |session|
    #     session.trainer.id
    #   end
    #   most_pop_trainer = arr.group_by(&:to_s).values.max_by(&:size).try(:first)
    #   f_trainer = Trainer.find(most_pop_trainer)
    #   puts "#{f_trainer.name} is the featured trainer! #{f_trainer.name} has #{f_trainer.yrs_of_exp} years of experience."
    #   sleep(3)
    #   puts "Would you like to book a session with #{f_trainer.name}?"
    #   puts "Press 'b' to book a session, 'x' to return to the Main Menu."
    #   feature_book = STDIN.gets.chomp
    #     if feature_book == "b"
    #       t_id = STDIN.gets.chomp
    #       Session.book_session(self.id,f_trainer)
    #     Member.member_menu(self.id)
    # end




end
