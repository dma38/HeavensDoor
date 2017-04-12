class AddPaymentAmountToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :payment_amount, :string
  end
end
