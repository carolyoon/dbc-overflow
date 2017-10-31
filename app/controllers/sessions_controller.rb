class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:username], params[:password])
      session[:id] = user.id
      redirect_to questions_path
    else
      @errors = ['invalid username or password']
      render :new
    end
  end

  def destroy
  end

end
