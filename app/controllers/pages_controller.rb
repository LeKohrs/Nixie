class PagesController < ApplicationController
  skip_before_filter :require_login, only: [:index]
  def index  
  end
  
  def dashboard
    @activities = current_user.activities
    @total = Activity.order("created_at").last
    @totalDrinks = Drink.order("created_at").last
    @drinks = @totalDrinks.show_icons
    respond_to do |format|
      format.html
      format.json { render json: @activity }
    end
  end
  
  
end
