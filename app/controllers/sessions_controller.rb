class SessionsController < ApplicationController
  skip_before_filter :require_login, except: [:destroy]
  
  def new
    @user = User.new
  end
  
  def create
    if @user = login(params[:email], params[:password])
      redirect_back_or_to dashboard_path, :notice => "Logged in!"
    else
      flash.now[alert] = "Email or password was invalid"
      render action: 'new'
    end
  end
  
  def destroy
    logout
    redirect_to root_url, :notice => "Logged out!"
  end
end
