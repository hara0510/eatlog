class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :mealtime
  has_one_attached :image
  has_many :posts

  validates :image, presence: true
  validates :mealtime_id, numericality: { other_than: 1 }
end
