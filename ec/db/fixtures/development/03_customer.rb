20.times do |i|
  Customer.seed do |s|
    s.id = i + 1
    s.name = (0...8).map{ ('A'..'Z').to_a[rand(26)] }.join
    s.name_r = (0...8).map{ ('A'..'Z').to_a[rand(26)] }.join
    s.password = (0...8).map{ ('A'..'Z').to_a[rand(26)] }.join
    s.tel = '0123456789'
    s.mail = "#{(0...8).map{ ('A'..'Z').to_a[rand(26)] }.join}@email.com"
    s.customer_status_id = Random.rand(1..2)
    s.delivery_address_id = Random.rand(1..20)
  end
end
