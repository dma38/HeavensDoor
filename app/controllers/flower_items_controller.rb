class FlowerItemsController < ApplicationController
  def index
    @flower_items = FlowerItem.all
  end

  def show
    @flower_item = FlowerItem.find(params[:id])
  end

end
