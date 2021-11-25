class Conversation < ApplicationRecord
  has_many :messages, dependent: :destroy
  belongs_to :user1, class_name: "User"
  belongs_to :user2, class_name: "User"

  scope :between, -> (user1, user2) do
    find_by("(conversations.user1_id = :user1_id AND conversations.user2_id = :user2_id)
        OR (conversations.user1_id = :user2_id AND conversations.user2_id = :user1_id)",
            { user1_id: user1.id, user2_id: user2.id })
  end
end
