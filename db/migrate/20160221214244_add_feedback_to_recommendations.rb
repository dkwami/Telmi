class AddFeedbackToRecommendations < ActiveRecord::Migration
  def change
    add_column :recommendations, :feedback, :float
  end
end
