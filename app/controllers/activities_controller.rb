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
    @user = current_user
    
    respond_to do |format|
      format.html
      format.json { render json: @activity }
    end
  end
  
  #CREATE activity
  def create
    @activity = Activity.new(params[:activity])
    @drinks = Drink.new
    @activity.user_id = current_user.id
    if @activity.save
      @total = @activity.total_exercise(@activity, current_user)
      @extra = @activity.extra_oz_from_exercise
      @drink_goal = @drinks.drinks_to_drink(@activity, current_user)
      
      
      redirect_to dashboard_path, notice: 'Activity was saved.' 
    else
      render action: 'new' 
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
    binding.pry
    @activity = Activity.find(params[:id])
    binding.pry
    @activity.delete
    
    redirect_to dashboard_url 
  end
end
