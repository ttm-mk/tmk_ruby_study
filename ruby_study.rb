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

a = if true
  1
end

p a

a = 1 if true
p a
a = 2 if false
p 2