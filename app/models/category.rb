class Category < ApplicationRecord
  has_many :category_users
  has_and_belongs_to_many :users, through: :category_users
  
end
