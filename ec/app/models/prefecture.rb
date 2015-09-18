class Prefecture < ActiveRecord::Base
  has_many :delivery_addresses
end
