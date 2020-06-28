# NOTE: I need to add a api key , and dotenv to protect the api key https://iexcloud.io/ user email j28... 
class StocksController < ApplicationController
  def search
    if params[:stock].present?
      # Dotenv::Railtie.load
      StockQuote::Stock.new(api_key: ENV["API_KEY_STOCK"])
      @stock = Stock.new_form_lookup(params[:stock])
      if @stock
        # NOTE: this to use AJAX 
        respond_to do |format|
          format.js {render partial: 'users/result'}
      end
      else
        flash[:danger] = "You have entered on empty search string"
        redirect_to my_portfolio_path
      end
    else 
      flash[:danger] = "You have entered on empty search string BBBBB:"
      redirect_to my_portfolio_path
    end
  end
end
 