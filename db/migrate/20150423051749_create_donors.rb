class CreateDonors < ActiveRecord::Migration
  def change
    create_table :donors do |t|
    	t.string :name
    	t.string :blood_group
    	t.string :area
    	t.string :phone_no
		t.text :message

      t.timestamps null: false
    end
  end
end
