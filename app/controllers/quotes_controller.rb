class QuotesController < ApplicationController

  def index
    @quote = Quote.all.sample
  end

  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.create(quote_params)
    if @quote.invalid?
      flash[:error] = '<center><strong>Could Not Save</strong> <br />Please enter a valid quote and author</center>'
    end
    redirect_to root_path
  end

  def about

  end

  def quote_params
    params.require(:quote).permit(:saying, :author)
  end

end
