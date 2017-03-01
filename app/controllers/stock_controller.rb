class StockController < ApplicationController
  def historical_data
    symbol = params[:symbol]

    # Fetch historical data
    yahoo_client = YahooFinance::Client.new
    data = yahoo_client.historical_quotes(symbol, {start_date: Time::now-(24*60*60*30), end_date: Time::now, period: :daily }) # 10 days worth of data

    # Simplify data
    data = data.map {|d| [d.trade_date.to_time, (d.open.to_f + d.close.to_f + d.high.to_f + d.low.to_f ) / 4]}

    render :json => data
  end
end
