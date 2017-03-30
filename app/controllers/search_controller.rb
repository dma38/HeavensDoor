class SearchController < ApplicationController
  def search_result
    category_id_param = params[:category_id]
    search_upper = params[:search].downcase
    if category_id_param != "Overall"
        @flower_items = Category.find(category_id_param).flowerItems.where('lower(name) LIKE :q OR description LIKE :q', q: "%#{search_upper}%")
    else
        @flower_items = FlowerItem.where('lower(name) LIKE :q OR description LIKE :q', q: "%#{search_upper}%")
    end

  end

  def search_show
  end
end
