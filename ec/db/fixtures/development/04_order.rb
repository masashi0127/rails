20.times do |i|
  Order.seed do |s|
    s.id = i + 1
    s.customer_id = Random.rand(1..20)
    s.delivery_address_id = Random.rand(1..20)
    s.order_status_id = Random.rand(1..5)
  end
end
