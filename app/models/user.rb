#this is auto generated when runnig this in terminal:
#bin/rails generate model user first_name last_name email password_digest
class User < ApplicationRecord

  has_secure_password

  #check if password and password_confirmation matches
  validates :password, confirmation: true
  validates :password_confirmation, presence: true
  validates :first_name, presence: true
end
