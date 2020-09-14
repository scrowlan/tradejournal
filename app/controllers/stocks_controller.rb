class StocksController < ApplicationController

  def new
    @stock = Stock.new
  end

  def edit
    @stock = Stock.find(params[:id])
  end

  def create
  	@stock = Stock.new(stock_params)
    @stock.user_id = current_user.id

  	@stock.save

  	redirect_to root_path
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

  def what_action
    @ticker = StockQuote::Stock.quote(stock.symbol)
    @stock = Stock.find(params[:id])

    if ticker.latest_price < stock.stop_loss
      Below Stop Loss
    else
      Buy
    end
  end

private
  def stock_params
  	params.require(:stock).permit(:symbol, :target_entry, :target_entry_high, :stop_loss, :target_exit_1, :target_exit_2, :target_exit_3, :date, :timeframe, :source, :risk, :notes, :user_id)
  end

end
