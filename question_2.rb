=begin
プログラムの中でaとbを定義し、aとbのうち小さい方を出力するプログラム
=end

puts "a の値を入力してください"
a = gets.to_f
puts "b の値を入力してください"
b = gets.to_f
array = [a,b]
small = array.min
puts "a = #{a} と b = #{b} で小さい方は" + " #{small}"
