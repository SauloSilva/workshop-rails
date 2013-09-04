#!/bin/env ruby
# encoding: utf-8

<<-txt
  Challenge

  Sortear um nome aleatório em uma lista de nomes,
  mas antes os nomes devem ser embaralhados 3 vezes
  monstrando seu estado atual em cada interação,
  após embaralhar 3 vezes pegar o nome que ocupar a última posição dos impares.
txt

names = %w(a b c d e f g h i j k l)
p "Formação inicial: #{ names }"

3.times do
  names.shuffle!
  p names
end

index_odd = names.each_index.select(&:even?)
p "O sorteado foi: #{ names[index_odd.last] }"