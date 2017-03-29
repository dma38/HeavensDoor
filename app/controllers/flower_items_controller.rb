class FlowerItemsController < ApplicationController
  def index
    @flower_items = FlowerItem.all.order(created_at: :desc)
  end

  def show
    @flower_item = FlowerItem.find(params[:id])
  end

end
