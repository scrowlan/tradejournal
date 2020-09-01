class StocksController < ApplicationController

  def new
    @stock = Stock.new
  end

  def edit
    @stock = Stock.find(params[:id])
  end

  def create
  	@stock = Stock.new(stock_params)

  	@stock.save
  	redirect_to @stock
  end

  def update
    @stock = Stock.find(params[:id])

    if @stock.update(stock_params)
      redirect_to @stock
    else
      render 'edit'
    end
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
