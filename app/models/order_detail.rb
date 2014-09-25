class OrderDetail < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  validates :order_id,:product_id,:quantity,:unit_price, presence: true
  validates :order_id, numericality: { only_integer: true }
  validates :product_id, numericality: { only_integer: true }

  before_save :remove_from_stock
  def remove_from_stock
    # Product.find(self.product_id).quantity-=self.quantity
    # Product.save

  end


end
