class RecommendationsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def create
    # uses the user_id that's passed to find a user and create a recommendation for that user
    @temp_id = recommendation_params["user_id"]
    @user = User.find(@temp_id)
    @recommendation = @user.recommendations.build(recommendation_params)
    if @recommendation.save
      flash[:success] = "Recommendation submitted!"
      redirect_to feed_url
    else
      redirect_to :back
    end
  end

  def destroy
  end

  private
  
    def recommendation_params
      params.require(:recommendation).permit(:title, :category, :description, :user_id)
    end
end
