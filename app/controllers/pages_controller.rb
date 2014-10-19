class PagesController < ApplicationController
  skip_before_filter :require_login, only: [:index, :about]
  def index  
  end
  
  def about
  end
  
  def dashboard
    @activities = current_user.activities
    @total = @activities.order("created_at").last
    @yourDrinks = current_user.drinks
    @totalDrinks = @yourDrinks.order("created_at").last
    if @totalDrinks
      @drinks = @totalDrinks.show_icons
    end
    respond_to do |format|
      format.html
      format.json { render json: @activity }
    end
  end
  
  
end
