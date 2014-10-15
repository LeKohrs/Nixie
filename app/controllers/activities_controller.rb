class ActivitiesController < ApplicationController
  
  # INDEX for all activities for that user 
  def index
    @activity = current_user.activity
    
    respond_to do |format|
      format.html
      format.json { render json: @activity }
    end
  end
  
  # SHOWS current activity
  def show
    @activity = Activity.find_by_id(params[:id])
    
    respond_to do |format|
      format.html
      format.json {render json: @activity }
    end
  end
  
  #NEW activity
  def new
    @activity = Activity.new
    @user = User.find_by_id(params[:id])
    
    respond_to do |format|
      format.html
      format.json { render json: @activity }
    end
  end
  
  #CREATE activity
  def create
    @activity = Activity.new(params[:activity])
    @activity.user_id = current_user.id
    
    respond_to do |format|
      if @activity.save
        format.html { redirect_to @activty, notice: 'Activity was saved.' }
        format.json { render json: @activity, status: :created, location: @activity }
      else
        format.html { render action: 'new' }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end 
  end
  
  #EDIT activity
  def edit
    @activity = Activity.find_by_id(params[:id])
  end
  
  #UPDATE activity
  def update
    @activity = Activity.find_by_id(params[:id])
    
    respond_to do |foramt|
      if @activity.update_attributes(params[:activity])
        format.html { redirect_to @activity, notice: 'Activity was updated' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @activity.errors, status: :unprocessable_entity }
      end
    end 
  end
  
  #DESTROY activity
  def destroy
    @activity = Activity.find_by_id(params[:id])
    @activity.destroy
    
    respond_to do |format|
      format.html { redirect_to activity_url }
      format.json { head :no_content }
    end
  end
end
