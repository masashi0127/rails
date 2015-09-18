20.times do |i|
  Item.seed do |s|
    s.id = i + 1
    s.name = (0...20).map{ ('A'..'Z').to_a[rand(26)] }.join
    s.category_id = Random.rand(1..18)
    s.price_without_tax = Random.rand(1000..10000)
    s.postage = Random.rand(100..1000)
  end
end
