require "rest-client"

class CurrencyService
  def initialize
    @nomics_key = ENV["NOMICS_KEY"]
  end

  def update_current_values
    symbols = all_symbols
    uri = "https://api.nomics.com/v1/currencies/ticker?key=#{@nomics_key}&ids=#{symbols}&interval=1h&convert=EUR&per-page=10&page=1"
    response = RestClient.get(uri)
    datas = JSON.parse(response.body)
    datas.each do |data|
      symbol = data["symbol"]
      value = data["price"]
      currency = Currency.find_by(symbol: symbol)
      currency&.update(current_euro_value: value)
    end
  end

  private

  def all_symbols
    Currency.all.map(&:symbol).join(",")
  end

end
