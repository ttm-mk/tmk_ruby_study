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

# メソッド

def test(a=0, b=100)
  a + b
end

p test

def bar(a:, b: 100, **z)
    p z
    # ↑これがあるからハッシュが表示される
    a + b
end

p bar(a: 2,b: 200, c: 100, d: 200)