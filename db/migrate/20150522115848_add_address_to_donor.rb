class AddAddressToDonor < ActiveRecord::Migration
  def change
    add_column :donors, :address, :text
  end
end
