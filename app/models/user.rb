class User < ApplicationRecord
  has_many :conversations_as_user1, class_name: "Conversation", foreign_key: :user1_id, dependent: :destroy
  has_many :conversations_as_user2, class_name: "Conversation", foreign_key: :user2_id, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :trades, dependent: :destroy
  has_many :user_currencies, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :photo

  validates :username, presence: true, uniqueness: true
  #validates :first_name, presence: true
  #validates :last_name, presence: true

  def calculate_score
    new_score = Trade.where(user: self).sum do
      rand(30..49)
    end
    update(score: new_score)
  end
end
