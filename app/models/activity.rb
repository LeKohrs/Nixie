class Activity < ActiveRecord::Base
  attr_accessible :current, :total, :user_id
  
  belongs_to :users
end
