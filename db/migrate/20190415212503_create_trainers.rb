class CreateTrainers < ActiveRecord::Migration[5.0]
  def change 
  	create_table :trainers do |t|
  		t.string :name 
  		t.integer :yrs_of_exp
  	end
  end
end
