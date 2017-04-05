class FlowerItemsController < ApplicationController
  before_action :initialize_session
  def index
    @flower_items = FlowerItem.all.order(created_at: :desc)
  end

  def show
    @flower_item = FlowerItem.find(params[:id])
  end

  def add_to_cart
      id = params[:id].to_i
      session[:items_in_cart][id]=1
      #unless session[:items_in_cart].include?(id)
      redirect_to "/cart/add_to_cart_success"
  end
    private

  def initialize_session
      session[:items_in_cart] ||= Hash.new
  end
end
