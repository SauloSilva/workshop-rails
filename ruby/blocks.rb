#!/usr/bin/ruby
# encoding: utf-8
# bloco inline
3.times{ |index| p index  }

# bloco com várias linhas de instrução
100.times do |index|
  if index < 20
    p "#{ index } é menor que 20"
  elsif index > 20 && index < 50
    p "#{ index } é menor que 50"
  else
    p "#{ index } é menor que 100"
  end
end