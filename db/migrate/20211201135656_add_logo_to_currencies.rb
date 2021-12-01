class AddLogoToCurrencies < ActiveRecord::Migration[6.1]
  def change
    add_column :currencies, :logo_url, :string, null: false, default: "https://s3.us-east-2.amazonaws.com/nomics-api/static/images/currencies/btc.svg"
  end
end
