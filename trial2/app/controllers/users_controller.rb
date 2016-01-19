class UsersController < ApplicationController
  def create
    user_params = params.require(:user).permit(:first_name, :last_name, :email, :password)
    @user = User.create(user_params)

    redirect_to root_path
  end

  def index
    @users = User.all
    render :index
  end

  def show
  end

  def update
  end

  def destroy
  end

  def new
    @user = User.new
    render :new
  end

  def edit
  end
end
