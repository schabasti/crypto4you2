class ProfilesController < ApplicationController
  def my_dashboard
    @trades = current_user.trades.order(created_at: :desc)
    @chart_data = {
      labels: ["Ethereum", "Bitcoin", "Solana", "Dogecoin", "Polkadot"],
      datasets: [{
        label: "My First Trades",
        backgroundColor: "transparent",
        borderColor: "#548E89",
        data: [53, 68, 78, 56, 65]
      }]
    }
  end

  def upload_csv
    @new_trades = current_user.trades.new
  end
end
