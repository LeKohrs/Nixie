class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :current
      t.integer :total
      t.integer :user_id

      t.timestamps
    end
  end
end
