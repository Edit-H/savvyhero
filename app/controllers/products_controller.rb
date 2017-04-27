class ProductsController < ApplicationController
<<<<<<< HEAD
=======
  def index
    session[:item] ||=0
    @item = session[:item]
  end
  def show
    @products=Product.all
    redirect_to  "product"
  end

  def product
    render "products/index"
  end
<<<<<<< HEAD



>>>>>>> b353742aadacf158984d019bf8f041d64abf3fd4
=======
>>>>>>> adding to products
end
