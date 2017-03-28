class CategoryController < ApplicationController
  def cat_index
      @categories = Category.all
  end

  def cat_show
    @category = Category.find(params[:id])
  end
end
