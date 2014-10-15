class User < ActiveRecord::Base
  authenticates_with_sorcery!
  
  attr_accessible  :email, :password, :password_confirmation, :name, :weight
  
  has_many :activities
  has_many :drinks
  
  validates :password, length: { minimum: 3 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  validates :email, uniqueness: true
  
  validates :weight, numericality: { only_integer: true }
end
