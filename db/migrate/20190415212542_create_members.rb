class CreateMembers < ActiveRecord::Migration[5.0]
  def change
  	create_table :members do |t|
  		t.string :first_name
  		t.string :last_name
  		t.integer :age
  		t.string :gender
  	end
  end
end
