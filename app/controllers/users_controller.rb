class UsersController < ApplicationController
  def index
    @users = User.order(score: :desc)
  end

  def show
    @user = User.find(params[:id])
    setup_video_call_token
    @conversation = helpers.find_or_create_conversation(current_user, @user)
    @message = Message.new
    if @conversation.present?
      @messages = @conversation.messages
    else
      @messages = []
    end
  end

  private

  def setup_video_call_token
    # No chatting with yourself
    return if @user == current_user

    twilio = TwilioService.new
    twilio.generate_token(current_user, @user)
    @twilio_jwt = twilio.jwt
    @room_id = twilio.room_id
  end
end
