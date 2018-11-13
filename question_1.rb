=begin
10より大きければ'large'
10なら'eq'
10より小さければ'small'
と出力するプログラム
=end

puts "数字を入力してください"
size = gets.to_i
if size > 10
  puts "large"
elsif size == 10
  puts "eq"
else
  puts "small"
end
