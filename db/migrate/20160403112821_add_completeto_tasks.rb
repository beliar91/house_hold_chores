class AddCompletetoTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :complete, :boolean, default: false, null: false
    remove_column :tasks, :status
  end
end
