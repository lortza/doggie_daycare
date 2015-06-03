module CurrentCart
  extend ActiveSupport::Concern

  private #does not require a separate end statement

    def set_cart #method called set_cart
      @cart = Cart.find(session[:cart_id])
    rescue ActiveRecord::RecordNotFound #if there is no cart, make one
      @cart = Cart.create
      session[:cart_id] = @cart.id
    end #def

end #module