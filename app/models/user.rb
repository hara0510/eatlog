class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :avatar
  has_many :posts
  has_many :comments
  has_many :user_favorites
  has_many :favorites, through: :user_favorites

  has_many :active_follows, class_name: 'Follow', foreign_key: :following_id
  has_many :followings, through: :active_follows, source: :follower

  has_many :passive_follows, class_name: 'Follow', foreign_key: :follower_id
  has_many :followers, through: :passive_follows, source: :following

  validates :nickname, presence: true

  def followed_by?(user)
    return false unless user.present?

    follow = passive_follows.find_by(following_id: user.id)
    follow.present?
  end
end
