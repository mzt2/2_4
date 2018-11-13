=begin
問題 8
arrayを作って、同じ値がすでにarrayに入ってたら追加せず、入ってなければ追加するプログラム
=end

def comment
  puts "数値を入力してください。（入力を終了する場合はqを入力）"
end

array = []
comment
_input = gets.chomp
while _input != "q" do
  _input = _input.to_i
  if ! array.any? { |e| e == _input }
    array << _input
  end
  p array
  comment
  _input = gets.chomp
end

=begin
問題 9
数字の配列を引数にとり合計を返す関数の作成（内部メソッドは使わない、each文を利用）
=end
def summation(array)
  sum = 0
  array.each {|i| sum += i}
  return sum
end
puts "summation of elements of the array is #{summation(array)}"

=begin
問題 10
数字の配列を引数にとり平均を返す関数の作成（内部メソッドは使わない、each文を利用）
=end

def average(array)
  ave = 0.0
  cnt = 0
  array.each{|i| ave += i; cnt += 1}
  return ave /= cnt
end
puts "average of elements of the array is #{average(array)}"

=begin
問題 11
数字の配列を引数にとり、0番目から足していって合計が15を超えたらそこまでの配列を返す関数。
each文を使う。
=end
def genNewArray(array)
  newarray = []
  array.each do |e|
    if summation(newarray) < 15
      newarray << e
    end
  end
  return newarray
end
p genNewArray(array)
