class UsersController < ApplicationController
  def index
    @users = User.order(score: :desc)
  end

  def show
    @user = User.find(params[:id])
    @conversation = helpers.find_or_create_conversation(current_user, @user)
    @message = Message.new
    if @conversation.present?
      @messages = @conversation.messages
    else
      @messages = []
    end
  end
end
