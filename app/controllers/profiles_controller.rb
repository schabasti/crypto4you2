class ProfilesController < ApplicationController

  def my_dashboard
    @trades = current_user.trades.order(created_at: :desc)
  end
end
