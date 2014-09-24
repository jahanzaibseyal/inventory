class Category < ActiveRecord::Base
  has_many :products
  validates :category_type, presence: true, uniqueness: true

end
