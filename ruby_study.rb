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

# p 2.step(10, 3){|n| puts n } #なぜ最後に最初の数値がでるん？

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

p Encoding.compatible?(Encoding::UTF_8, Encoding::Shift_JIS)

a = "るびー"
b = a.encode("EUS-JP")
p a + b