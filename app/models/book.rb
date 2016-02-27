class Book < ActiveRecord::Base
  
  #Commented out for testing the fields_for method
  has_and_belongs_to_many :users
  #has_many :books_users
  #has_many :users, :through => :books_users
end
