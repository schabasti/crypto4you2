module ConversationHelper
  def find_or_create_conversation(user1, user2)
    conversation = Conversation.between(user1, user2).first
    if conversation.nil?
      conversation = Conversation.create(user1: user1, user2: user2)
    end
    conversation
  end
end
