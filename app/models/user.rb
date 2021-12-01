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
  validates :first_name, presence: true
  validates :last_name, presence: true

  def calculate_score
    new_score = Trade.where(user: self).sum do
      rand(30..49)
    end
    update(score: new_score)
  end

  def last_messages(count = 100)
    Message.joins(:conversation)
           .where("conversations.user1_id  =  :user1_id OR conversations.user2_id = :user1_id", user1_id: id)
           .order(created_at: :desc)
           .limit(count)
  end

  def last_chat_partners(count = 4)
    users = []
    last_messages.each do |message|
      user = message.conversation.other_user(self)
      users << user unless users.include?(user) || user.nil?
    end
    return users.first(count)
  end
end
