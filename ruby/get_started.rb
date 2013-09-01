#!/bin/env ruby
# encoding: utf-8

puts 'Chamando um método atrávez de um objeto numérico'
puts 'estado inicial:', 5
puts 'estado final:', 5.next

p '--------------------------------------------'
puts 'Chamando de 1 a 100 de 2 em 2'
puts 'init...'
(2..100).step(2) do |x|
  p x
end

p '--------------------------------------------'
puts 'Operadores em ruby são apenas métodos'
puts "Exemplo: 10.*(2) + 10.+(10) = #{ 10.*(2) + 10.+(10) }"

p '--------------------------------------------'
puts 'Quase tudo pode ser alterado ou manipulado em tempo de execução'
puts "'foo '.repeat(3) = undefined method `repeat' for 'foo ':String"

class String
  def repeat(i)
    # self se refere ao objeto atual é igual o this do java ou $this do php
    self * i
  end
end
puts 'foo '.repeat(3)
puts 'Defini um método dentro da classe String do ruby e sendo estando disponível imediatamente em uma string.'

p '--------------------------------------------'
puts 'Pouco se ve usando while ou loops em ruby. Geralmente usamos coleções que possuem seus próprios interadores que você passa para blocos, que é executado elemento por elemento.'
a = "Bar "

[1, 2, 3].each do |num|
    puts a * num
end

p '--------------------------------------------'
puts "Formação original: [1, 2, 3, 4, 5]"
a = [1, 2, 3, 4, 5]
p a.reverse
p a
p a.reverse!
p a

p '-------------------------------------------'
user = 'saulo'
puts "Is user: #{ user }" if user
puts "Is user: #{ user }" unless user.nil?

if user
  puts 'Is user' + user
end

p '--------------------------------------------'
puts 'HINTS:'
puts 'não precisa de ; no final de frase'
puts 'não precisa cercar parametros com ()'
puts 'blocos estão constituídos entre do e end ou {}'
puts 'somente se utiliza {} quando o bloco possui apenas uma linha de comando'
puts 'variáveis que inicia com minúscula são variáveis locais'
puts 'variáveis que inicia com maiúsculo são variáveis globais'
puts 'variáveis de instância inicia com @. Significa que pode ser compartilhada em toda instância de sua classe.'
puts 'métodos que terminam com ! ou ? não é caracteres especiais, mas sim um convenção do Ruby. Na qual ? é usado para métodos que retorna um booleano, e ! para métodos destrutíveis.'

p '-------------------------------------------'
puts 'Nomes que começam com : é denominados como simbólos, é quase igual uma string. A única diferença é que símbolos não ocupa espaço em memória'
puts 'Símbolos é utilizado para indexar hash ou marcar estados de uma variável.'

puts "string".object_id, "string".object_id
puts :simbol.object_id, :simbol.object_id