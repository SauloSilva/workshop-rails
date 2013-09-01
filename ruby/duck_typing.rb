# Não preciso definir o objeto pelo seu tipo e sim pelo que ele vai fazer
class Bar
  def to_ary
    [6, 7, 8, 9, 10]
  end
end

# exige apenas que o metodo do lado direito da expressão implemente o método to_ary
p [1, 2, 3, 4, 5] + Bar.new

class Foo
  def to_hash
    {age: 22}
  end
end

# exige apenas que o metodo do lado direito da expressão implemente o método to_ary
hash = {name: 'saulo'}.merge(Foo.new)
p hash