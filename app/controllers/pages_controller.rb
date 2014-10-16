class PagesController < ApplicationController
  skip_before_filter :require_login, only: [:index]
  def index  
  end
  
  def dashboard
    @activities = current_user.activities
    @total = current_user.activities.sum(:current)
    
    respond_to do |format|
      format.html
      format.json { render json: @activity }
    end
  end
  
  
end
