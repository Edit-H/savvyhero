class ProductsController < ApplicationController

  def show
    @products = Product.all
    @line_item = current_order.line_items.new
    render 'product'
  end

  def process_to_cart
  
    if session[:item] == nil
      session[:item] = 1
    else
      session[:item] = session[:item]+1
    end
    session[:cart] = params[:product]
    # Save success message to flash to show it once
    flash[:success] = " #{ session[:item] } item(s) added to your cart!"

    # To prevent submission of form with page reload
    redirect_to '/cart'
end

  def cart
      # Save the data to variable accessible in the views
      @cart = session[:cart]
  end
  # if params[:products] ==


end
