class ProductsController < ApplicationController

  def index
    session[:item] ||=0
    @item = session[:item]
  end
  def show
    @products=Product.all
    redirect_to  "product"
  end

  

end
