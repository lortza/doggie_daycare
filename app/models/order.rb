class Order < ActiveRecord::Base
  belongs_to :user
  has_many :line_items, dependent: :destroy
  validates :name, :address, :user_id, presence: true

  PAYMENT_TYPES = ["Credit Card", "PayPal", "BitCoin"]
  validates :pay_type, inclusion: PAYMENT_TYPES

  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil # sets the cart_id to nil to disassociate the item from the cart
      line_items << item #pushes each item to the 
    end# each do
  end #def

  def subtotal
    line_items.to_a.sum { |item| item.total_price }
  end #def

  def qty_total
    line_items.to_a.sum { |item| item.quantity }
  end #def

end
