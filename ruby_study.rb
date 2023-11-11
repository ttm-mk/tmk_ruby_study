# # UFO演算子

# puts 100 <=> 10

# puts 100 <=> 100

# p 10 <=> 100

# # 乗

# a = 100

# puts a **= 1

# # クラス
# # R3は１はINTEGERクラスになってる/確認

# p 1.class
# p 10000000000000000.class
# p 1.2.class
# p 1.class.superclass
# a = []
# p a.class.superclass
# p 42/10r
# p (42/10r).class
# p 42i.class

# メソッド

# def test(a=0, b=100)
#   a + b
# end

# p test

# def bar(a:, b: 100, **z)
#     p z
#     # ↑これがあるからハッシュが表示される
#     a + b
# end

# p bar(a: 2,b: 200, c: 100, d: 200)

# # 文法
# $foo = 1
# def bar
#   $foo
# end

# p bar
# p $baz

# p 0x10

# a = if true
#   1
# end

# p a

# a = 1 if true
# p a
# a = 2 if false
# p 2

# def func a, b
#   a + yield(b, 3)
# end

# p func(1, 2){|x, y| x + y }

# proc = Proc.new{|x| p x}
# proc.call(1)

# class Foo
#     def initialize(a)
#         @a = a
#     end

#     def method1
#         @a
#     end
# end

# class FooExt < Foo
#     def initialize(a, b)
#         @b = b
#         super a
#     end

#     def method2(c)
#         @a + @b  + c
#     end
# end

# foo1 = Foo.new(1)
# foo2 = Foo.new(2)

# p foo1.method1
# p foo2.method1

# p Foo.ancestors
# p foo2.instance_variables

# fooExt = FooExt.new(3, 4)
# p fooExt.method1
# p fooExt.method2(5)

# case 1
# when 1 then
#     p 1
# end

# a = 10
# b = case a
# when 1 then
#     1
# else
#     2
# end

# p b

# case 5
# when 1..5 then
#     p 1
# else
#     p 2
# end

# class Foo
#     def initialize
#         @hoge = 1
#     end
# end

# f = Foo.new
# p f.instance_variable_set(:@hoge, 2)
# p f.instance_variable_get(:@hoge)

# class Bar
#     def method_missing(name, *args)
#         puts name
#     end
# end

# b = Bar.new
# p b.hoge


# a = 1.2
# p a.to_s

# class Hoge
#     def initialize
#         @foo = "bar"
#     end
# end

# hoge = Hoge.new
# p hoge.to_s
# p hoge.inspect

# p 1.9.ceil #切り上げ
# p 1.9.floor #切り捨て
# p 1.4.round #四捨五入の数値をラインにして近い方の整数を表示
# p 2.1.truncate #小数点を切った数値の表示
# p -2.abs #絶対値

# 2.step(10, 3){|n| puts n } #なぜ最後に最初の数値がでるん？→ｐおいていたからだった、なかったら普通に出たわ

# sum = 0
# 10.times {|n| sum += n }
# p sum

# sum = 0
# 2.downto(0) {|n| sum += n }
# p sum

# p 5.pred

# p a = Rational(1, 2)

# p Rational(1, 2).divmod Rational(1, 3)
# p Rational(-4, 13).abs

# p Complex(1, 3).abs

# p Encoding.compatible?(Encoding::UTF_8, Encoding::Shift_JIS)

# a = "るびー"
# b = a.encode("EUS-JP")
# p a + b

# a = "abc"
# b = "あいう".encode("EUC-JP")
# p a.encoding
# p b.encoding
# p (a + b).encoding

# p "aa" < "b" #右が大きいとtrue
# p "b" <=> "aa" #左が大きいとtrue?

# a = "abc"
# b = a.encode("EUC-JP")
# p b.encoding
# p a == b

# a = "るびー"
# b = a.encode("EUC-JP")
# p b.encoding
# p a == b

# p 'abcd'[0]
# a = 'aria'
# p a.slice(2)
# p a

# a = 'abcdefg'
# p a.slice!(1..4)
# p a

# p 'abcdefg'[3, 0]

# a = "aria"
# # p a[1..3] = "lice"
# # p a
# a[1, 3] = "lice"
# p a

# a = 'abcde-abcdefg'
# p a.sub!('abc', 'aiu')
# p a
# p a.gsub!(/abc/, 'eok')
# p a

# a = 'abcdefg-abcdefg'
# p a.sub(/abc/) {|str| 'aiu'}

# a = 'aabbccddeeff'
# p a.tr_s!('a-c', 'A-C')
# p a.tr_s('d-f', 'D-F')

# a = 'aabbccddeeffgg'
# p a.delete('a-f', 'd-g')
# p a.squeeze('a-g')

# a = 'aria'
# p a.replace('alice')
# p a

# a = 'bump'
# p a.object_id
# p a += 'of'
# p a.object_id
# p a.concat('chicken')
# p a.object_id

# p a.capitalize!
# p a.upcase
# p a.upcase.downcase
# p a.swapcase

# a = "\vabcdef\n"
# p a.rstrip!
# p a.chop.reverse
# p a.count('a-d')
# p a.empty?
# p a.bytesize

# a = "BumpOfChicken"
# p a.center(21, "★")
# p a.center(21, "-")

# a = "abc\tdef\tghi\n"
# puts a.dump

# '440r440T4408'.unpack('m')
# a = '440r440T4408'.unpack('m').first
# p a
# p a.force_encoding('UTF-8')

# p 'abcdefg'.scan(/[c-g]/)

# "abc\ndef\nghi".each_line {|c| puts c}

# "abc".each_byte {|c| puts c}

# "ルビー".each_char {|c| puts c}

# p Array.new(4){|i| i * 2}
# a = [1, 2, 3]
# p a.concat [4, 5]
# p a.object_id
# p a.insert(0, -1, 0)
# p a.object_id
# p a.unshift(-2)
# p a.object_id
# b = a + [11]
# p b

# a = [1, 2, 3]
# a[0] = 0
# a[3..6] = [4, 5, 6] #こえても以降はnilにはならないんだね。指定が足りない場合はないことになっているね
# p a
# a[3..5] = [3, 3, 3]
# p a.fill("no")
# p a.fill("yes", 4) #範囲指定だとその範囲を、単数指定だとそれ以降の配列すべてを指定した値に変えるっぽい
# p a.fill(1..2){|index| index} #indexってなんけ…… #TODO

# p a.replace([1, 2]) #配列の数に関わらず、そのまま全部とっかえる感じだね。で、idは変わらないと。

# p a.at(4) #atは範囲指定はできないね。範囲を指定したい場合は[]でするしかない。単数はatメソッド
# p a.values_at(1..2) #配列で返すためか、values_atは複数参照できるね。

# p a.fetch(4){|n| "ERROR #{n}"}

# p a.first(2) #引数を指定すれば、最初から引数番目までの数を返すよ。lastは最後から引数番目までを返すよ。

# a = [[1, 2], [2, 3], [3, 4], [4, 5]]
# p a.assoc(4)
# p a.rassoc(3)

# a = [1, 2, 3, 4, 5]
# p a.include?(3)
# p a.delete_at(0) #この書き方だと、削除した対象の値が返るよ
# p a #再び指定することで、削除されたあとの中身を返すよ

# p a.delete_if{|n| n % 2 == 0} #nを2で割った余りが0であるものを除外するよって言ってる感じ
# p a.clear #全消し
# a.slice!(1,3)
# a.each{|n| puts n * 2}

# p [1, 2, 3].join(".")

# p [1, 4, 5, 6, 2, 3].sort{|a, b| a <=> b} #TODO確認！よくわからん！

# p [1, 2, 3, 4].uniq #uniq!は重複している値がなかったらnilを返すってことですな
# p [1, 2, nil, 4].compact! #上記同様
# p [[[1, 2], 3], [[4, 5], 6]].flatten
# p [1, 2, 3].collect{|n| n ** 2} #mapと書き方は一緒でよさそうだね
# p [1, 2, 3, 4].shuffle #まじでランダムに配列

# p [1, 2].product(["a", "b", "c"]) #文字列じゃないとエラーになるだわ
# p [1, 2].zip(["a", "b", "c"], [3, 4]) #インデックスごとにまとめられる、はみ出たものは無視
# p [1, 2] * 3 #きちんとスペースをあけること

# p ["ルビー"].pack("p") #TODO!パックよくわからないな……

# a = {"apple" => "fruit", "coffee" => "drink"}
# a = Hash["apple", "fruit", "coffee", "drink"]
# a.each do |name, name2|
#   p name
#   p name2
# end
# p a.class

# a = Hash.new
# p a["apple"]
# a = Hash.new("NONE")
# p a["apple"] #TODO!あまりよくわからないぞ……！？キーが存在しない場合の初期値は値の方ってことだよな？

# a = Hash.new{|hash, key| hash[key] = "NONE"}
# p a["apple"] #aがhashで、appleがkeyってことだよな？んで上記の条件で代入したのでnilになったと。
# p a.default = "Not exists"
# p a["coffee"]
# a.each do |name, name2|
#   p name
#   p name2
# end
#coffeeどこいったん！？！？！？ｗｗｗｗ

# p a["apple"]
# p a.keys
# p a.values

# p a.values_at("apple", "coffee")

# a = {1 => "a", 2 => "b", 3 => "c", 4 => "d"}
# p a.fetch(7, "NONE") #キーがなかったら、二番目の引数の値を返すと。
# p a.fetch(6){|key| key % 2 == 0}
# p a.select{|key, value| key % 3 == 0} #ブロック専用メソッドかな
# p a.find_all{|key, value| key % 3 == 0} #selectと返す値が違う、前者はハッシュ、これは配列で返すってよ。
# a[5] = "f"
# p a.delete(5)
# p a.reject{|key, value| value == "b"} #わすれそうだった、Alt上下で単品移動…！！
# p a
# p a.replace({10 => "a", 20 => "z"}) #指定した値にまるまる中身が入れ替わってしまうね！
# p a.shift
# p a

# a = {"apple" => "foods", "coffee" => "drink"}

# p a.merge({"orange" => "fruit", "tea" => "drink", "apple" => "fruit"}) #同じキーは上書きされて、違う子は追加ってことかな？統合、だもんね。
# p a.merge({"orange" => "fruit", "tea" => "drink"}){|key, self_val, other_val| p self_val}
# #key =>キーのこと、self_val =>もともと入っている自身の値のこと、other_val =>新しく指定された値のこと(ここではりんごがフルーツってやつ)
# #ブロックでself_valと指定しているから、統合後はもともとの値を参照してねってことになるんだと思われ。
# p a.update({"orange" => "fruit", "tea" => "drink", "apple" => "fruit"}) #updateは上書きだから完全に後者がのこるわけですね。
# p a.invert #反対にするかつ値が一緒のものは逆にしたときに最初になる方が残るっぽい
# p a.clear #さよならハッシュの中身。

# p a.has_key?("apple") #引数はひとつまでですなｗ
# p a.has_value?("drink")
# p a.value?("drink")

# a.each_pair{|key, value| puts "#{key} => #{value}"} #eachでもeach_pairでも結果は一緒だね。書き換えるだけ
# a.each_key{|key| puts "key: #{key}"} #keyとvalueは名前だけ変えれば返す値が変わるだけですな。

# a = {4 => "a", 3 => "b", 2 => "c", 1 => "d"}
# p a.sort #ソートは整列、並べ替えってことなんだな。たまにほんとに日本語訳必要…日本語にならんかね？？？
# p a.sort{|a, b| a[1] <=> b[1]} #TODO!ちょっとまって
# p a.to_a #array!!!!!!!!のa。

# #シンボルって、ゲームの主人公の名前（変更不可）の場合に使えそうだなって思う。

# p :foo.to_s

p File.open('README.md'){|file| file.mtime}