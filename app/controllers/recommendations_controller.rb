class RecommendationsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def create
    #@user = User.find(params[:id])
    @recommendation = current_user.recommendations.build(recommendation_params)
    if @recommendation.save
      flash[:success] = "Recommendation submitted!"
      redirect_to feed_url
    else
      render @user.show
    end
  end

  def destroy
  end

  private
  
    def recommendation_params
      params.require(:recommendation).permit(:title, :category, :description)
    end
end
