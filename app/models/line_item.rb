class LineItem < ApplicationRecord
  validates :flower_item, :order, presence: true
  belongs_to :flower_item
  belongs_to :order
end
