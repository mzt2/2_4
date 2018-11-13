=begin
プログラムの中でaとbを定義し、aとbの値を入れ替えて出力するプログラム
=end

puts "aの値を入力してください"
a = gets
puts "bの値を入力してください"
b = gets
c = b
b = a
a = c
puts "a = #{a}, b = #{b}"
