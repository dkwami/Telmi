class MoviesController < ApplicationController
  def new
    @movie = Movie.new
    @users = User.all
  end

  def edit
    @users = User.all
  end

  private
    def movie_params
      params.require(:movie).permit(:title, :user_ids => [])
    end
end
