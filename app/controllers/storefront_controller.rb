class StorefrontController < ApplicationController
  def all_items
    if params[:cat_id]
      # TODO: add logic to handle when cat_id returns a category without products
      @category = Category.find(params[:cat_id])
      @products = Product.where(category_id: params[:cat_id])
    else
      @products = Product.all
    end #if
  end #def
end #class
