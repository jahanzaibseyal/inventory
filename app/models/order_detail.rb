class OrderDetail < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  validates :order_id,:product_id,:quantity,:unit_price, presence: true
  validates :order_id, numericality: { only_integer: true }
  validates :product_id, numericality: { only_integer: true }


end
