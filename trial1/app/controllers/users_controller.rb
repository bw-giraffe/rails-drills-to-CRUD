class UsersController < ApplicationController
  def index
    @users = User.all
    render :index
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
    @user = User.new
    render :new
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
