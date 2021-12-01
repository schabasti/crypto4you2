class ProfilesController < ApplicationController
  # const DATA_COUNT = 5
  # const NUMBER_CFG = { count: DATA_COUNT, min: 0, max: 100 }

  def my_dashboard
    @trades = current_user.trades.order(created_at: :desc)
    colors = ["#003F5C", "#EC6B56", "#64C2A6", "#58508D", "#EC6B56", "#BC5090", "#FFC154"]
    labels = current_user.user_currencies.map do |coins|
      coins.currency.name
    end
    datas = current_user.user_currencies.map do |uc|
      uc.amount * uc.currency.current_euro_value
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

    all_users = User.where.not(id: current_user.id)
    @displayed_users = all_users.select do |user|
      Conversation.between(current_user, user).first&.messages&.any?
    end
  end

  def upload_csv
    @new_trades = current_user.trades.new
  end
end
