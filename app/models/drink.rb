class Drink < ActiveRecord::Base
  attr_accessible :completed, :user_id, :water_drunk, :water_goal
  
  belongs_to :users
end
