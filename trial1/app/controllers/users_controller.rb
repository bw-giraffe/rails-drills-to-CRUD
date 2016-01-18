class UsersController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def new
  end

  def create
    @user = User.create(user_params)
    login(@user)
    redirect_to @user
  end

  private

  def user_params
     params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

end
