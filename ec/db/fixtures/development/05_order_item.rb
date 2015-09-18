20.times do |i|
  OrderItem.seed do |s|
    s.id = i + 1
    s.order_id = Random.rand(1..20)
    s.item_id = Random.rand(1..20)
  end
end
