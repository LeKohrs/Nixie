class Activity < ActiveRecord::Base
  attr_accessible :current, :total
  belongs_to :users
  scope :today, where('created_at >= ?', 1.day.ago)
  
  def total_exercise(activity, user)
    total = user.activities.today.sum(:current)
    activity.update_column(:total, total)
  end

  def extra_oz_from_exercise
    total / 30 * 12
  end
end
