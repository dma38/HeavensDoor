class Order < ApplicationRecord
  validates :customer, :status, presence: true
  belongs_to :status
  belongs_to :customer
end
