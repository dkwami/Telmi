class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # Handle a successful save.
      # redirect_to 'static_pages#signup2'
      flash[:success] = "Welcome to Telmi!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:username, :firstName, :lastName, :email,
					:birthday, :password, :password_confirmation, :location)
    end
end
