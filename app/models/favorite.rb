class Favorite < ApplicationRecord
  has_many :users, through: :user_favorites
  belongs_to :post
end
