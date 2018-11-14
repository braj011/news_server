class User < ApplicationRecord
  has_many :category_users
  has_many :categories, through: :category_users

  has_secure_password
  
end
