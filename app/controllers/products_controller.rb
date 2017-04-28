class ProductsController < ApplicationController

  def index
    session[:item] ||=0
    @item = session[:item]
  def show
    @products=Product.all
  end
  end

  def product
    render "products/index"
  end




end
