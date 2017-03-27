class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.text :notes
      t.decimal :tax_rate
      t.references :status, foreign_key: true
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
