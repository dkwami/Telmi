class User < ActiveRecord::Base
  has_many :recommendations, dependent: :destroy
  #Commented out to test fields_for
  has_and_belongs_to_many :books
  #has_many :books_users
  #has_many :books, :through => :books_users
  has_and_belongs_to_many :movies
  has_and_belongs_to_many :songs
  has_and_belongs_to_many :games
  has_and_belongs_to_many :foods
  has_and_belongs_to_many :destinations
  accepts_nested_attributes_for :books
  accepts_nested_attributes_for :movies
  accepts_nested_attributes_for :songs
  accepts_nested_attributes_for :games
  accepts_nested_attributes_for :foods
  accepts_nested_attributes_for :destinations

  before_save {self.username = username.downcase}
  before_save {self.email    = email.downcase}

  # Username is required and must be unique; not case sensitive
  validates :username, presence: true, uniqueness: {case_sensitive: false}, 
                       length: {maximum: 30} 
  # First and last name are required; maximum of 20 characters
  validates :firstName, presence: true, length: {maximum: 20}
  validates :lastName, presence: true, length: {maximum: 20}
  validates :birthday, presence: true
  # Password is required; still needs to be encrypted
  validates :password_digest, presence: true, length: {minimum: 8}

  # Email address is required and must be unique; not case sensitive; must follow correct format
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255}, 
                    format: {with: VALID_EMAIL_REGEX }, 
                    uniqueness: {case_sensitive: false}

  has_secure_password
end
