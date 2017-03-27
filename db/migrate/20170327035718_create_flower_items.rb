class CreateFlowerItems < ActiveRecord::Migration[5.0]
  def change
    create_table :flower_items do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.references :location, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
