class Activity < ActiveRecord::Base
  attr_accessible :current, :total, :user_id
  
  belongs_to :users
  
  # def total_exercise(activity)
#     total = activity.current.sum
#     activity.update_column(:total, total)
#     activity.save
#   end
#
#   def extra_oz_from_exercise(activity)
#     total = Self.total
#     total / 30
#   end
end
