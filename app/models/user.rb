class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_many :questions, through: :likes, dependent: :destroy
  has_many :answers, through: :nices, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :nices, dependent: :destroy

  def already_liked?(question)
    self.likes.exists?(question_id: question.id)
  end

  def already_niced?(answer)
    self.nices.exists?(answer_id: answer.id)
  end

  with_options presence: true do
  validates :password, format: { with: /\A[a-z0-9]+\z/ , message: ' 半角英数字で入力してください' }
  validates :name
  end
end
