class Drink < ActiveRecord::Base
  attr_accessible :completed, :water_drunk, :water_goal
  
  belongs_to :user
  scope :today, where('created_at >= ?', 1.day.ago)
  
  def drinks_to_drink(activity, user, drink)
    weight = user.weight
    water_goal = weight * 0.50 + activity.extra_oz_from_exercise
    drink.update_attribute(:water_goal, water_goal)
  end
  
  def show_icons
    total = self.water_goal
    total / 8
  end
  
  
end
