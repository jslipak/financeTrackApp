# NOTE: I need to add a api key , and dotenv to protect the api key https://iexcloud.io/ user email j28... 
class StocksController < ApplicationController

  def search
    StockQuote::Stock.new(api_key: ENV["API_KEY_STOCK"])
    if params[:stock].blank?
      flash.now[:danger] = "You have entered an empty search string"
    else
      @stock = Stock.new_from_lookup(params[:stock])
      flash.now[:danger] = "You have entered an incorrect symbol" unless @stock
    end
    respond_to do |format|
      format.js { render partial: 'users/result' }
    end
  end
end
 