class User < ApplicationRecord
  has_many :category_users
  has_many :categories, through: :category_users

  has_secure_password

  validates :username, presence: true, uniqueness: true 

  validates :password, presence: true


  
end
