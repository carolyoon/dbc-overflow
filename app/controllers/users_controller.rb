class UsersController < ApplicationController

  def new
    @user = User.new

    respond_to do |format|
      format.html { render :new }
    end
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = user.id
      redirect_to questions_path
    else
      @errors = @user.errors.full_messages
      render 'users/new'
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end
