class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :completion_time
      t.string :status
      t.integer :avg_completion_time, default: 0

      t.timestamps null: false
    end
  end
end
