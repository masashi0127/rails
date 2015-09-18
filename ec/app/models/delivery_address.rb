class DeliveryAddress < ActiveRecord::Base
  has_many :orders
  has_many :customers
  belongs_to :prefecture
end
