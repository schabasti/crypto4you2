class ProfilesController < ApplicationController
  def my_dashboard
    @trades = current_user.trades.order(created_at: :desc)
  end

  def upload_csv
    @new_trades = current_user.trades.new
  end
end
