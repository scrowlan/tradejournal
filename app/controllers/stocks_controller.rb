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

  def destroy
    @stock = Stock.find(params[:id])
    @stock.destroy

    redirect_to stocks_path
  end

private
  def stock_params
  	params.require(:stock).permit(:symbol, :target_entry, :stop_loss, :target_exit_1, :target_exit_2, :target_exit_3, :date, :timeframe, :source, :risk, :notes)
  end

end
