class ConversationChannel < ApplicationCable::Channel
  before_action do
    @user = User.find(params[:user_id])
  end

  def subscribed
    if Conversation.between(current_user, @user).first
      @conversation = Conversation.between(current_user, @user).first
    else
      @conversation = Conversation.create(user1: current_user, user2: @user)
    end
    stream_for conversation
  end

  # def unsubscribed
  #   # Any cleanup needed when channel is unsubscribed
  # end
end
