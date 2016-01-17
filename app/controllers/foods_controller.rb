class FoodsController < ApplicationController
  def new
    @food = Food.new
    @users = User.all
  end

  private

  def params
    params.require(:food).permit(:title, :user_ids => [])
  end
end
