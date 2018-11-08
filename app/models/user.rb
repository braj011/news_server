class User < ApplicationRecord

  has_many :categories, through: :users_category
end
