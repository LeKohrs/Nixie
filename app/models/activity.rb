class Activity < ActiveRecord::Base
  attr_accessible :current, :total
  
  belongs_to :users
  
  def total_exercise(activity, user)
    total = user.activities.sum(:current)
    activity.update_column(:total, total)
    activity.save
  end

  def extra_oz_from_exercise
    total / 30 * 12
  end
end
