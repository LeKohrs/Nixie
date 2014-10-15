class UsersController < ApplicationController
  skip_before_filter :require_login, only: [:index, :new, :create]
  
  def new
    @user = User.new
    
    respond_to do |format|
      format.html
      format.json { render json: @user }
  end
  
  #Create user
  def create
    @user = User.new(params[:user])
    
    respond_to do |format|
      if @user.save
      
        auto_login(@user)
        format.html { redirect_to root_url, :notice => "Signed up!" }
        format.json { render json: @user, status: :created, loaction: @user }
      else
        format.html { render action: 'new' }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # Show user
  def show
    @user = User.find_by_id(params[:id])
  end
  
  # Edit user
  def edit
    @user = User.find_by_id(params[:id])
  end
  
  # Update user
  def update
    @user = User.find_by_id(params[:id])
    
    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to @user, notice: 'Your information has been updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user.errors, Status: :unprocessable_entity }
      end
    end
  end
  
  # Delete user
  def destroy
    @user = User.find_by_id(params[:id])
    @activity = Activity.find_by_user_id(@user.id)
    if @activity != nil
      @activity.destroy
    end
    @drinks = Drink.find_by_user_id(@user.id)
    if @drinks != nil
      @drinks.destroy
    end
    @user.destroy
    
    respond_to do |format|
      format.html { redirect_to users_url } 
      format.json { head :no_content }
    end
  end
end
