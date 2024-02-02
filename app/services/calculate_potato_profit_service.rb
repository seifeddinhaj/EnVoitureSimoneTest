class CalculatePotatoProfitService
  def initialize(date)
    @date = date
  end

  def call
    prices = PotatoPrice.where("DATE(time) = ?", @date).order(:time)
    return 0 if prices.empty?

    max_gain = 0
    best_buy_price = prices.first.value

    prices.each do |price|
      potential_gain = price.value - best_buy_price
      max_gain = [max_gain, potential_gain].max
      best_buy_price = [best_buy_price, price.value].min
    end

    max_gain * 100 # Assumption: 100 tonnes are traded.
  end
end
