class Order < ActiveRecord::Base
  belongs_to :order_status
  belongs_to :customer, -> {includes :delivery_address}
  belongs_to :delivery_address, -> {includes :prefecture}
  has_many :order_items
  has_many :items, through: :order_items
end
