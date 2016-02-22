class UsersController < ApplicationController
  
  # checks to make sure there is a logged in user before loading the page and
  #performs certain actions if there isn't
  before_action :logged_in_user, only: [:edit, :recommendations, :index, 
                                        :review]
                                        
  # checks to make sure the user view the page is the user which should be
  #viewing (in the case of multiple windows, etc)|
  #this isn't behaving currently. Not immediately clear why.
  #before_action :correct_user, only: [:edit, :recommendations]
  
  # checks to make sure the user's nda_agree is "true", or it redirects to nda
  before_action :nda_signed, only: [:edit, :recommendations, :index, :review]
  
  #Action to display the NDA page. Called when "Sign Up" is clicked.
  def nda_page
    render "nda_page/nda_page"
    @@nda_agree = false
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
    @@nda_agree = true
  end

  # Action to create the new user on the first signup page. Called when "Next" 
  #is clicked.
  def create
    @user = User.new(user_params)
    # Handle a successful save.
    if @user.save
      @user.update_attribute(:nda_agree, @@nda_agree)
      log_in @user
      @read_interest = @user.read_interest
      # Previously "signup2"
      render 'edit'
    else
      render 'new'
    end
    
  end
  
  # This method is called to augment newly created users with their interests.
  # (Previously "signup2")
  def augment
    @users = User.all
    @user = current_user
    if @user.update_attributes(user_params)
      flash[:success] = "Welcome to Telmi!"
      render 'index'
    else
      render 'nda_page'
      flash[:danger] = "Unable to create user. Please try again."
    end
  end

  # Action to create a list of all users stored to a session variable.
  def index
    @users = User.all
    @user = current_user
  end
  
  # finds a given user based on the passed-in parameter
  def show
    @user = User.find(params[:id])
    @recommendation = @user.recommendations.build if logged_in?
  end

  def review
    @user = current_user
    @recommendations = @user.recommendations #.paginate(page: params[:page])
  end

  private

    # Method which defines which items are required and which are permitted when 
    #passing info on a user.
    def user_params
      params.require(:user).permit(:username, :firstName, :lastName, :email,
					                         :birthday, :password, :password_confirmation, 
					                         :location, :nda_agree, :read_interest, 
					                         :watch_interest, :listen_interest, 
					                         :play_interest, :eat_interest, 
					                         :travel_interest, :other_interest, 
					                         :book_ids => [], :movie_ids => [], 
					                         :song_ids => [], :game_ids => [], 
					                         :food_ids => [], :destination_ids =>[])
    end
    
    # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
    
    # Confirms the correct user.
    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_url) unless current_user?(@user)
    end
    
    # Confirms the user has signed the NDA and redirects if they haven't.
    def nda_signed
      @user = current_user
      unless @user.nda_agree?
        flash[:danger] = "Please agree to NDA before proceeding"
        redirect_to nda_page_url
      end
    end
end
