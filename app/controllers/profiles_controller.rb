class ProfilesController < ApplicationController
  # const DATA_COUNT = 5
  # const NUMBER_CFG = { count: DATA_COUNT, min: 0, max: 100 }

  def my_dashboard
    @trades = current_user.trades.order(created_at: :desc)
    colors = ["#003F5C", "#EC6B56", "#64C2A6", "#58508D", "#FFA600", "#2D87BB", "#BC5090", "#FFC154", "#FF6361", "#E6F69D", "#AADEA7"]
    labels = current_user.user_currencies.map do |uc|
      uc.currency.name
    end
    datas = current_user.user_currencies.map do |uc|
      (uc.amount * uc.currency.current_euro_value).round(2)
    end
    @chart_data = {
      labels: labels,
      datasets: [{
        label: 'My First dataset',
        backgroundColor: colors,
        borderColor: '#878B93',
        data: datas
      }]
    }
    # @chart_options = {
    #   type: 'pie',
    #   data: data,
    # }
    @chart_options = {
      options: {
        responsive: true,
        plugins: {
          legend: {
            position: 'top'
          },
          title: {
            display: true,
            text: 'Chart.js Pie Chart'
          }
        }
      }
    }

    @displayed_users = current_user.last_chat_partners
  end

  def upload_csv
    @new_trades = current_user.trades.new
  end
end
