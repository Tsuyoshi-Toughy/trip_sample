plans = [
  {place: "沖縄", price: 10000},
  {place: "北海道", price: 20000},
  {place: "九州", price: 15000},
]

puts "旅行プランを選択してくだい。"
plans.each.with_index(1) do |plan, i|
puts "#{i}.#{plan[:place]}(#{plan[:price]}円)"
end
