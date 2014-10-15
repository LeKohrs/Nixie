class UsersController < ApplicationController
  skip_before_filter :require_login, only: [:index, :new, :create]
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      
      auto_login(@user)
      redirect_to root_url, :notice => "Signed up!"
    else
      render :new
    end
  end
  
  def show
    @user = User.find_by_id(params[:id])
  end
end
