class AddPhoneNo2ToDonor < ActiveRecord::Migration
  def change
    add_column :donors, :phone_no2, :string
  end
end
