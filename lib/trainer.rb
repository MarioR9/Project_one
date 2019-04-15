class Trainer < ActiveRecord::Base
    has_many(:sessions)
    has_many(:members, {through: :sessions})
end 

 

