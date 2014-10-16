class Activity < ActiveRecord::Base
  attr_accessible :current, :total
  
  belongs_to :users
  
  def self.total_exercise(activity)
    user = activity.user
    total = user.activity.sum(:current)
    activity.update_column(:total, total)
    activity.save
  end

  def extra_oz_from_exercise
    total = self.total
    total / 30 * 12
  end
end
