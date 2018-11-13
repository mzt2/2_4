=begin
問題 12
:key => 1, :key =>2, :key3 => 3というキーと値の組合せを持ったハッシュhashを作成。
=end

hash = {key1: 1, key2: 2, key3: 3}

=begin
問題 13
上記ハッシュhashから:key2を取り出す。
=end
p hash[:key2]

=begin
問題 14
上記ハッシュhashに:key4 => 4を追加。
=end
hash[:key4] = 4
p hash

=begin
問題15
上記ハッシュhashをeachでループして以下の出力を得よ。

"key1 is 1"
"key2 is 2"
"key3 is 3"
"key4 is 4"
=end
hash.each do |h|
  puts "#{h[0]} is #{h[1]}"
end

=begin
問題 16
上記ハッシュの値を全て2倍せよ。
=end
hash.transform_values! {|v| v*2}
p hash
