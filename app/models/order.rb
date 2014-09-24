class Order < ActiveRecord::Base
  belongs_to :customer
  has_many :order_details
  validates :customer_id,:date,presence: true
  validates :customer_id, numericality: { only_integer: true }
  scope :last_week, where('date>=?', 1.week.ago)


end
