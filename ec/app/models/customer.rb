class Customer < ActiveRecord::Base
  has_many :orders
  belongs_to :delivery_address
  belongs_to :customer_status
end
