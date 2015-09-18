20.times do |i|
  DeliveryAddress.seed do |s|
    s.id = i + 1
    s.classification = 1
    s.zip = 1234567
    s.prefecture_id = Random.rand(1..47)
    s.address = (0...20).map{ ('A'..'Z').to_a[rand(26)] }.join
  end
end
