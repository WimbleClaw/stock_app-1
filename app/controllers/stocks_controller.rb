class StocksController < ApplicationController

  def index
    @stocks = Stock.all
  end

  def show
    @stock = Stock.find(params[:id])
    @stock = StockQuote::Stock.quote(@stock.symbol)
  end

end
