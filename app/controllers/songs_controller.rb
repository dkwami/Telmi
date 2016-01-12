class SongsController < ApplicationController
  def new
    @song = Song.new
    @users = User.all
  end

  private
    def params
      params.require(:song).permit(:title, :user_ids => [])
    end
end
