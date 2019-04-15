class CreateSessions < ActiveRecord::Migration[5.0]
  def change
  	create_table :sessions do |t|
  		t.string :member
  		t.string :trainer
  		t.integer :time
  	end
  end
end
