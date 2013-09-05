#!/bin/env ruby
# encoding: utf-8
# cria um array de 5 posições null
p Array.new(5)

# criar um array que utiliza bloco
p Array.new(5) { |i| i * 2 }

# criar array com elementos do tipo string
p %w(foo bar)

# acessando a internet
a = ['foo', 'bar']
p a[0]

# brincando mais com arrays
ary = %w(a b c d e f g h i j k l m)
p ary.shuffle
p ary.shift
p ary.pop
p ary.slice(1)
p ary.slice(1..4)
p ary.sort { |x, y| y <=> x }

p ary[1], ary.at(2), ary[-1]

p ary.push(%w(n o p q))
p ary.flatten
p ary.push(nil)
p ary.flatten.compact

p ary.include?('d')

ary.clear

p ary

<<-text
  ** Algoritmo de Trabb Pardo-Knuth **
  peça por 11 números para serem lidos em uma sequência S
  inverta a sequência S
  para cada item na sequência S
    faça uma operação
    se o resultado ultrapassar o limite
      alertar usuário
    senão
      imprimir resultado
text

p '========================='

# ** == expoente
# Math.sqrt == raiz quadrada

def operation(x)
  Math.sqrt(x) + 5 * x ** 3
end

Array.new(11, rand(99)).reverse.each do |x|
  result = operation(x).to_i
  rand_number = rand(99)
  puts(result > rand_number ? "Acima de #{ rand_number }: #{ result }" : "Abaixo de #{ rand_number }: #{ result }")
end