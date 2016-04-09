class AddAddressToHouseHold < ActiveRecord::Migration
  def change
    add_column :house_holds, :address, :string
  end
end
