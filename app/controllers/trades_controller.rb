class TradesController < ApplicationController
  def index
    @trades = Trade.all
  end

  def show
    @trade = Trade.find(params[:id])
  end
end
