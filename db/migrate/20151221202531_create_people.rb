class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :surname
      t.integer :house_hold_id

      t.timestamps null: false
    end
  end
end
