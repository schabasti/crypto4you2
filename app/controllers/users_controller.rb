class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @conversation = Conversation.between(current_user, @user).first
    @message = Message.new
    if @conversation.present?
      @messages = @conversation.messages
    else
      @messages = []
    end
  end
end
