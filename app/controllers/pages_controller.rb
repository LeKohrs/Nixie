class PagesController < ApplicationController
  skip_before_filter :require_login, only: [:index]
  def index  
  end
  
  def dashboard
    @activities = current_user.activities
    @activity = Activity.find_by_id(params[:id])
    
    respond_to do |format|
      format.html
      format.json { render json: @activity }
    end
  end
  
  
end
