class Drink < ActiveRecord::Base
  attr_accessible :completed, :water_drunk, :water_goal
  
  belongs_to :user
  
  
  def drinks_to_drink(activity, user)
    weight = user.weight
    water_goal = weight * 0.67 + activity.extra_oz_from_exercise
    self.update_attribute(:water_goal, water_goal)
  end
end
