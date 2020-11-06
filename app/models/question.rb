class Question < ApplicationRecord

  validates :title, :text, presence: true
  belongs_to :user
  has_many :answers
end
