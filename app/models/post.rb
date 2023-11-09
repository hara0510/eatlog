class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :meal_time
  has_one_attached :image

  validates :meal_time_id, numericality: {other_than: 1 }
end
