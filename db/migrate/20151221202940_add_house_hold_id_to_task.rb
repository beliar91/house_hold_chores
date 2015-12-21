class AddHouseHoldIdToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :house_hold_id, :integer
  end
end
