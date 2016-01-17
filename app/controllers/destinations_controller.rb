class DestinationsController < ApplicationController
  def new
    @destination = Destination.new
    @users = User.all
  end

  private

  def params
    params.require(:destination).permit(:title, :user_ids => [])
  end
end
