=begin
数字0から100までのFizzBuzz問題を解け。
=end
101.times do |i|
  if i%3 == 0
    print("Fizz")
    print("Buzz") if i%5 == 0
  elsif i%5 == 0
    print("Buzz")
  else
    print(i)
  end
  print("\n")
end
