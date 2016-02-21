class RecommendationsController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]

  def create
    # uses the user_id that's passed to find a user and create a recommendation for that user
    @temp_id = recommendation_params["user_id"]
    @user = User.find(@temp_id)
    @recommendation = @user.recommendations.build(recommendation_params)
    if @recommendation.save
      flash[:success] = "Recommendation submitted!"
      # maybe this should redirect to @user
      redirect_to feed_url
    else
      redirect_to :back
    end
  end

  def destroy
  end

  # this action gets called when a user is reviewing recommendations
  # once the change is made, the success message is shown and they are redirected to the review page
  def update
    @user = current_user
    @recommendation = Recommendation.find(params[:id])
    if @recommendation.update_attributes(recommendation_params)
      flash[:success] = "Recommendation feedback accepted"
      redirect_to :back
    else
      redirect_to :back
    end  
  end

  def show
    @recommendation = Recommendation.find(params[:id])  
    @user = current_user

    # add javascript template to allow recommendation to be shown in pop up window
    respond_to do |format|
      format.js 
      format.html 
    end
  end

  private
  
    def recommendation_params
      params.require(:recommendation).permit(:title, :category, :description, :user_id, :feedback)
    end
end
