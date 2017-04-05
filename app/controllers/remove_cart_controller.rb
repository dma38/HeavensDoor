class RemoveCartController < ApplicationController
  def remove_cart
    session[:items_in_cart].delete(params[:id])
    redirect_to "/cart/cart"
  end
end
