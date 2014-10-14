class AddColumnsNameAndWeightToUser < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :weight, :integer
  end
end
