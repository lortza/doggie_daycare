class Cart < ActiveRecord::Base
  has_many :line_items, dependent: :destroy

  def subtotal
    line_items.to_a.sum { |item| item.total_price }
  end #def

  def qty_total
    line_items.to_a.sum { |item| item.quantity }
  end #def

  def add_product(product_id)
    current_item = line_items.find_by(product_id: product_id)
    if current_item
      current_item.quantity += 1
    else
      current_item = line_items.build(product_id: product_id)
    end #if
    current_item #this is the thing that is being returned by the method
  end #def

end #class
