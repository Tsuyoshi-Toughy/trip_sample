puts <<~TEXT
旅行プランを選択して下さい。

1. 沖縄旅行(10000円)
2. 北海道旅行(20000円)
3. 九州旅行(15000円)
TEXT

while true
print "プランの番号を選択 >"
plan_num = gets.to_i
break if (1..3).include?(plan_num)
puts "1~3の番号を入力して下さい。"
end

case plan_num
when 1
place = "沖縄"
price = 10000
when 2
place = "北海道"
price = 20000
when 3
place = "九州"
price = 15000
end
puts "#{place}旅行ですね。"

puts "何名で予約されますか？"

while true
print "人数を入力 >"
numbers = gets.to_i
break if numbers > 0
puts "1以上の入力して下さい。"
end

puts "#{numbers}名ですね。"

total_price = price * numbers
discounted_total_price = (total_price * 0.9).floor

if numbers >= 5
  puts "5人以上なので10%割引になります。"
  puts "合計金額は#{discounted_total_price}円になります。"
else
  puts "合計金額は#{total_price}円になります。"
end
