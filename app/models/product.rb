class Product < ActiveRecord::Base
  def index
    @products=Product.all
  end
  def method_name

  end
end
