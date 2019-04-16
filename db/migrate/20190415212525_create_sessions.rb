class CreateSessions < ActiveRecord::Migration[5.0]
  def change
  	create_table :sessions do |t|
  		t.integer :member_id
  		t.integer :trainer_id
  		t.integer :time
  	end
  end
end


# broad = Station.create(name: "Broad Street")