class CreateDrinks < ActiveRecord::Migration
  def change
    create_table :drinks do |t|
      t.integer :water_goal
      t.integer :water_drunk
      t.boolean :completed
      t.integer :user_id

      t.timestamps
    end
  end
end
