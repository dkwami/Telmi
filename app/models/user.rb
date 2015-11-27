class User < ActiveRecord::Base
  before_save {self.username = username.downcase,
		self.email = email.downcase}

  # Username is required and must be unique; not case sensitive
  validates :username, presence: true, uniqueness: {case_sensitive: false}, length: {maximum: 30} 
  # First and last name are required; maximum of 20 characters
  validates :firstName, presence: true, length: {maximum: 20}
  validates :lastName, presence: true, length: {maximum: 20}
  validates :birthday, presence: true
  # Password is required; still needs to be encrypted
  validates :password, presence: true

  # Email address is required and must be unique; not case sensitive; must follow correct format
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255}, format: {with: VALID_EMAIL_REGEX }, uniqueness: {case_sensitive: false}
end