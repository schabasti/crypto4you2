class User < ApplicationRecord
  has_many :conversations
  has_many :messages
  has_many :trades
  has_many :user_currencies
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
