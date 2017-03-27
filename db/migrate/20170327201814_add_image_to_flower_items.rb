class AddImageToFlowerItems < ActiveRecord::Migration[5.0]
  def change
    add_column :flower_items, :image, :string
  end
end
