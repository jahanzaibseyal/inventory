class Product < ActiveRecord::Base
  belongs_to :category
  has_many :order_details
  validates :name,:unit_price,:quantity,:ISBN,:category_id, presence: true
  validates :category_id, numericality: { only_integer: true }
  scope :high_price, ->{where('unit_price>=15000')}
  scope :low_price, -> {where('unit_price<15000')}
  scope :less_quantity,->{where('quantity<10')}
  scope :normal_quantity,->{where('quantity>=10 AND quantity<50')}
  scope :extra_quantity,->{where('quantity>=50')}
  # scope :sale, -> { joins(:order_details).where("order_detail.quantity <= ?", 7.days.ago).group("users.id")}
end
