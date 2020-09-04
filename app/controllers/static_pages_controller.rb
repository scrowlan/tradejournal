class StaticPagesController < ApplicationController
  def home
  	@stocks = Stock.all
  end

  def help
  end

  def about
  end

end
