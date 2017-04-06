class RemoveCityFromCustomer < ActiveRecord::Migration[5.0]
  def change
    remove_column :customers, :city, :string
  end
end
