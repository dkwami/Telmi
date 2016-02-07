class UsersController < ApplicationController
  before_action :logged_in_user, only: [:signup2, :recommendations]

  #Action to display the NDA page. Called when "Sign Up" is clicked.
  def nda_page
    render "nda_page/nda_page"
  end
  
  #Action to create a new user. Called when "I agree" is clicked on NDA page.
  def new
    @user =         User.new
    @books =        Book.all
    @movies =       Movie.all
    @songs =        Song.all
    @games =        Game.all
    @foods =        Food.all
    @destinations = Destination.all
  end

  def show
    @user = User.find(params[:id])
    @recommendation = @user.recommendations.build if logged_in?
  end

  #Action to create the new user on the first signup page. Called when "Next" is clicked.
  def create
    @user = User.new(user_params)
    if @user.save
      # Handle a successful save.
      log_in @user
      flash[:success] = "Welcome to Telmi!"
      redirect_to @user
      #render 'signup2'
    else
      render 'new'
    end
  end

  #Action to create a list of all users stored to a session variable.
  def index
    @users = User.all
  end
  
  def signup1
  end

  def signup2
    @user = current_user
  end

  def recommendations
    @user = current_user
    @recommendations = @user.recommendations #.paginate(page: params[:page])
  end

  private

    #Method which defines which items are required and which are permitted when passing info on a user.
    def user_params
      params.require(:user).permit(:username, :firstName, :lastName, :email,
					                         :birthday, :password, :password_confirmation, 
					                         :location, :book_ids => [], :movie_ids => [], 
					                         :song_ids => [], :game_ids => [], 
					                         :food_ids => [], :destination_ids =>[])
    end
end
