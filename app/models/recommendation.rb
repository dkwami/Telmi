class Recommendation < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true
  validates :category, presence: true
end
