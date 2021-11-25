class MessagesController < ApplicationController
  before_action do
    @user = User.find(params[:user_id])
    if Conversation.between(current_user, @user).first
      @conversation = Conversation.between(current_user, @user).first
    else
      @conversation = Conversation.create(user1: current_user, user2: @user)
    end
  end

  def create
    @message = @conversation.messages.new(message_params)
    @message.user = current_user
    if @message.save
      redirect_to user_path(@user)
    else
      redirect_to user_path(@user)
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
