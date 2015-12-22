class AddUserIdToHouseHold < ActiveRecord::Migration
  def change
    add_column :house_holds, :user_id, :integer
  end
end
