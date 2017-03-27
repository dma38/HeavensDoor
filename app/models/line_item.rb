class LineItem < ApplicationRecord
  belongs_to :flower_item
  belongs_to :order
end
