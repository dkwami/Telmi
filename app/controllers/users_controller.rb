class UsersController < ApplicationController
  before_action :logged_in_user, only: [:signup2, :recommendations]

  def new
    @user = User.new
    @books = Book.all
    @movies = Movie.all
    @songs = Song.all
    @games = Game.all
    @foods = Food.all
    @destinations = Destination.all
  end

  # show action
  # finds a given user based on the passed-in parameter
  # 
  def show
    @user = User.find(params[:id])
    @recommendation = @user.recommendations.build if logged_in?
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # Handle a successful save.
      # redirect_to 'static_pages#signup2'
      log_in @user
      flash[:success] = "Welcome to Telmi!"
      #redirect_to @user
      redirect_to signup_2_path
    else
      render 'new'
    end
  end

  def index
    @users = User.all
  end  

  def signup2
    @user = current_user
  end

  def recommendations
    @user = current_user
    @recommendations = @user.recommendations #.paginate(page: params[:page])
  end

  private

    def user_params
      params.require(:user).permit(:username, :firstName, :lastName, :email,
					:birthday, :password, :password_confirmation, :location, 
					:book_ids => [], :movie_ids => [], :song_ids => [], :game_ids => [], :food_ids => [], :destination_ids =>[])
    end
end
