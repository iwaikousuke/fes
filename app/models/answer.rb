class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user
  has_many :nices, dependent: :destroy
  validates :text, presence: true
end
