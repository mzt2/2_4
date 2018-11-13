array = [1,4,32,3,5,1,6,3,5,4,2,1,5,6,8,3]
# array = [1,0,2,3,4,5,6,7,8]
=begin
問題 19
整数の配列と整数を引数にとり、与えられた整数が配列の中に存在するかを確認して、
存在すればtrue、しなければfalseを返す関数を作れ
=end
def q19(array, n)
  value = false
  array.each {|i| value = true if n == i}
  return value
end
n=3
puts "Does n=#{n} exist in array = #{array}?: #{q19(array, n)}"
n=9
puts "Does n=#{n} exist in array = #{array}?: #{q19(array, n)}"

=begin
問題 20
数字の配列から最小値を見つける関数を作れ
=end
def q20(array)
  min = Float::INFINITY
  array.each{|i| min = i if i <= min}
  return min
end
puts "Minimum of elements in the array is #{q20(array)}"

=begin
問題 21
引数に配列をとって、配列の中に重複がないか確認する関数を作れ
=end
def q21(array)
  value = false
  cnt = 0
  array.each do |i|
    array[cnt]=[""]
    value = true if q19(array,i) == true
    array[cnt]=i
    cnt += 1
  end
  return value
end
puts "Is there any element duplicated?: #{q21(array)}"
=begin
問題 22
引数に配列をとって、重複している値を昇順の配列にして返す関数を作れ
=end
def q22(array)
  array2 = []
  cnt = 0
  array.each do |i|
    array[cnt]=[""]
    array2 << i if q19(array,i) == true && q19(array2,i)==false
    array[cnt]=i
    cnt += 1
  end
  return array2.sort
end
p q22(array)

=begin
問題 23
引数に配列をとり、「重複している要素の値をキー、重複した回数を値にもつハッシュ」を返す関数を作れ
=end
def q23(array)
  hash = {}
  q22(array).each do |i|
    cnt = 0
    array.each {|j| cnt += 1 if j == i}
    hash[i] = cnt - 1 if cnt >= 2
  end
  return hash
end
p q23(array)
