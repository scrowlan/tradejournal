class StaticPagesController < ApplicationController
  def home
  	@stocks = Stock.all
  	StockQuote::Stock.new(api_key: 'pk_8899f76bbfb54c6389a6009749732b69')
  end

  def help
  end

  def about
  end

end
