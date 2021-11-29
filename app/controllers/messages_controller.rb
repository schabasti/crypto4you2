class MessagesController < ApplicationController
  before_action do
    @user = User.find(params[:user_id])
    @conversation = helpers.find_or_create_conversation(current_user, @user)
  end

  def create
    @message = @conversation.messages.new(message_params)
    @message.user = current_user
    @message.save
    ConversationChannel.broadcast_to(
      @conversation,
      render_to_string(partial: "message", locals: { message: @message })
    )
    redirect_to user_path(@user)
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
