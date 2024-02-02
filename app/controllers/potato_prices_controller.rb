class PotatoPricesController < ApplicationController
  def index
    date = params[:date]
    @prices = PotatoPrice.where("DATE(time) = ?", date)
    render json: @prices
  end

  def best_gain
    date = params[:date]
    gain = CalculatePotatoProfitService.new(date).call
    render json: { gain: gain.to_s + " €" }
  end
end
