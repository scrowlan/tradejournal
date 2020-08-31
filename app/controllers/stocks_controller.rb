class StocksController < ApplicationController

  def new
  end

  def create
  	@stock = Stock.new(stock_params)

  	@stock.save
  	redirect_to @stock
  end

  def show
  	@stock = Stock.find(params[:id])
  end

  def index
  	@stocks = Stock.all
  end

private
  def stock_params
  	params.require(:stock).permit(:symbol, :target)
  end

end
