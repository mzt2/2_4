=begin
*
**
***
****
*****
******
... (n個)
を返すメソッド(数を自由に変えれるように)
=end

def stars(n=0)
  if n == 0
    puts "1以上の整数を入力してください"
    return
  end
  n.times do |i|
    1.upto(i+1) {print("*")}
    print("\n")
  end
end

puts "整数を入力してください"
n = gets.to_i
stars(n)
