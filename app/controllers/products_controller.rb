class ProductsController < ApplicationController
<<<<<<< HEAD
=======
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



>>>>>>> b353742aadacf158984d019bf8f041d64abf3fd4
end
