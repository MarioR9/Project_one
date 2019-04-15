class Session < ActiveRecord::Base
	belongs_to :members 
	belongs_to :trainers
end 