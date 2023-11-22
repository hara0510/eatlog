class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :mealtime
  has_one_attached :image
  belongs_to :user

  validates :image, presence: true
  validates :mealtime_id, numericality: { other_than: 1 }
end
