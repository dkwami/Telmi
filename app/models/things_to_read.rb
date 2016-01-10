class ThingsToRead < ActiveRecord::Base
  validates :content, presence: true, length: { maximum: 255 }
end
