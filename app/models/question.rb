class Question < ApplicationRecord
  belongs_to :user
  has_many :answers, dependent: :destroy
  has_many :likes
  has_many :liked_users, through: :likes, source: :user
  
  validates :title, :text, presence: true
end
