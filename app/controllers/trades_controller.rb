class TradesController < ApplicationController
  def index
    @trades = Trade.where(user: current_user)
  end

  def show
    @trade = Trade.find(params[:id])
  end
end
