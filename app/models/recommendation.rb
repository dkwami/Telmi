class Recommendation < ActiveRecord::Base
  belongs_to :user
  validates :title, presence: true
  validates :category, presence: true
  validates :description, presence: true
end
