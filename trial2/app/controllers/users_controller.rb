class UsersController < ApplicationController
  def create
    @user = User.create(user_params)
    login(@user)
    redirect_to @user
  end

  def index
    @users = User.all
    render :index
  end

  def show
    @user = User.find_by_id(params[:id])
    render :show
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

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end

end
