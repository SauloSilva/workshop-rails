# A variável pode receber dois tipos de valores a qualquer momento
value = 123
puts value.class
#=> Fixnum

value = 'foo'
puts value.class
#=> String

# Porém o objeto é verificado antes de qualquer operação
number = 123
name = 'foo'

number + name
#=> retorna um TypeError