coin = 100
point = 0
use_coin = 0
get_coin = 0
get_point = 0
while coin > 0 do
  puts "---------------------"
  puts "コイン：#{coin}"
  puts "ポイント：#{point}"
  puts "なんまいコインをいれますか？"
  puts "（0でやめる)"
  puts "---------------------"
  use_coin = gets.to_i
  if use_coin == 0 then
    puts
    puts "そろそろでよう"
    puts
    break
  elsif use_coin > coin
    puts
    puts "くっきょうなおとこ：みのたけをかんがえてあそぶんだな"
    puts "-> みせをおいだされた"
    puts
    break
  end
  puts "---------------------"
  puts use_coin
  puts "ボタン(エンター)を３かい おしましょう！"
  puts
  puts "---------------------"
  gets
  a1 = rand(10)
  a2 = rand(10)
  a3 = rand(10)
  b1 = rand(10)
  b2 = rand(10)
  b3 = rand(10)
  c1 = rand(10)
  c2 = rand(10)
  c3 = rand(10)
  puts "--------------------"
  puts "|#{a1}|||"
  puts "|#{a2}|||"
  puts "|#{a3}|||"
  puts "--------------------"
  gets
  puts "--------------------"
  puts "|#{a1}|#{b1}||"
  puts "|#{a2}|#{b2}||"
  puts "|#{a3}|#{b3}||"
  puts "--------------------"
  gets
  puts "--------------------"
  puts "|#{a1}|#{b1}|#{c1}|"
  puts "|#{a2}|#{b2}|#{c2}|"
  puts "|#{a3}|#{b3}|#{c3}|"
  puts "--------------------"
  if a1 == b1 and a1 == c1 or a2 == b2 and a2 == c2 or a3 == b3 and a3 == c3 or a1 == b2 and a1 == c3 or c1 == b2 and c1 == a3
    get_coin = use_coin * 2
    get_point = use_coin * 2
    puts "おめでとう！すうじがそろいました！"
    puts "#{get_point}ポイントかくとく！"
    puts "#{get_coin}コインかくとく！"
  else
    get_coin = 0
    get_point = 0
    puts
    puts "はずれ"
    puts
  end
  coin = coin - use_coin + get_coin
  point = point + get_point
end
if coin == 0
puts
puts "コインがなくなってしまった"
puts "もうかえろう"
puts
end
