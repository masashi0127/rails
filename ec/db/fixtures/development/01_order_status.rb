OrderStatus.seed do |s|
  s.id = 1
  s.name = '未処理'
end

OrderStatus.seed do |s|
  s.id = 2
  s.name = '入金待ち'
end

OrderStatus.seed do |s|
  s.id = 3
  s.name = 'ステータス待ち'
end

OrderStatus.seed do |s|
  s.id = 4
  s.name = 'キャンセル'
end

OrderStatus.seed do |s|
  s.id = 5
  s.name = '処理済み'
end
