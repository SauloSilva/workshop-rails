# Constantes
$NAME = 'saulo'
p $NAME

# Variáveis locais
name = 'saulo'
p name

# Variáveis de instância se refere a classe InstanceVar
class InstanceVar
  def set_foo(foo)
    @foo = foo
  end

  def set_bar(bar)
    @bar = bar
  end
end

instance = InstanceVar.new
instance.set_foo(1)
instance.set_bar(2)
p instance

# Definindo uma classe simples
class Foo
  def initialize(x, y)
    @x = x
    @y = y
  end

  @@class_var = 1

  ORIGIN = Foo.new(1, 2)
end

p Foo::ORIGIN.instance_variables
p Foo.class_variables
p Foo.constants