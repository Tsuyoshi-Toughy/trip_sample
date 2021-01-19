plans = [
  {place: "沖縄", price: 10000},
  {place: "北海道", price: 20000},
  {place: "九州", price: 15000},
]

puts "旅行プランを選択してください。"
plans.each.with_index(1) do |plan, i|
puts "#{i}.#{plan[:place]}(#{plan[:price]}円)"
end

while true
print "プランの番号を選択 >"
plan_num = gets.to_i
break if (1..3).include?(plan_num)
puts "1~3の番号を選択して下さい。"
end

puts "#{place}旅行ですね"

while true
print "人数を入力 >"
people_num = gets.to_i
break if people_num >= 1
puts "1名以上選択して下さい。"
end

total_price = place * people_num