class Order < ActiveRecord::Base
  belongs_to :user
  has_many :line_items

  def subtotal
    line_items.collect { |li| li.valid? ? (li.qty_ordered * li.price) : 0 }.sum
  end
private
  def update_subtotal
    self[:subtotal] = subtotal
  end
end
