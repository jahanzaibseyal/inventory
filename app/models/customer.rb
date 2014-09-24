class Customer < ActiveRecord::Base
  has_many :orders
  validates :name,:email,:phone,:address, presence: true
  validates :email,:phone, uniqueness: true
  validates_format_of :name, :with => /[A-Z a-z]/, message: 'Character Only'
  validates_format_of :phone, :with => /\d{4}\-\d{7}/, message: 'e.g 03xx-xxxxxxx'

end
