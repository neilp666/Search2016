class AdvancedsearchesController < ApplicationController

  def new
    @search = Advancedsearch.new
    @category = Book.uniq.pluck(:category)
  end

  def create
    @search = Advancedsearch.create(search_params)
    redirect_to @search
  end

  def show 
    @search = Advancedsearch.find(params[:id])
  end

  private 

  def search_params
    params.require(:advancedsearch).permit(:keywords, :category, :min_price, :max_price, :isbn)
  end
  
end
