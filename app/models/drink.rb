class Drink < ActiveRecord::Base
  attr_accessible :completed, :water_drunk, :water_goal
  
  belongs_to :users
  
  
  # def drinks_to_drink(activity, drink)
#     user = drink.user
#     weight = user.weight
#     water_goal = weight * .67 + extra_oz_from_exercise
#     drink.update_column(:water_goal, water_goal)
#     drink.save
#   end
end
