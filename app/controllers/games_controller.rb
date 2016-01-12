class GamesController < ApplicationController
  def new
    @game = Game.new
    @users = User.all
  end

  private
    def params
      params.require(:game).permit(:title, :user_ids => [])
    end
end
