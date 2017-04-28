class ProductsController < ApplicationController

  def index
    session[:item] ||=0
    @item = session[:item]
    redirect_to 'process_to_cart'
  end
  def show
    @products = Product.all
    @line_item = current_order.line_items.new
    render 'product'
  end

  def process_to_cart

    session[:items] = session[:item] + 1


    session[:cart] = params[:product]

    # Save success message to flash to show it once
    flash[:success] = " #{ session[:item] } item(s) added to your cart!"

    # To prevent submission of form with page reload
    redirect_to 'product'
end

  def cart
      # Save the data to variable accessible in the views
      @cart = session[:cart]
  end
  # if params[:products] ==


end
