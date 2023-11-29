class Favorite < ApplicationRecord
  belongs_to :post
  has_many :users, through: :user_favorites
end
