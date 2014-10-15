class PagesController < ApplicationController
  
  def index  
    @user = User.all
    @drinks = User.drinks
    @activity = User.activities
  end
  
end
