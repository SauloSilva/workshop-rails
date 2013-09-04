#!/usr/bin/ruby
# encoding: utf-8
# métodos sempre letras minúcula
# nunca chamar o método antes de criar

# método simples
def user
  p 'saulo'
end

user

# método com parâmetro
def user(name)
  p name
end

user('saulo')

# método com valores padrão de parâmetro
def user(name='foo')
  p name
  return
end

user

# números indefinidos para parâmentros
def user(*args)
  for arg in args
    p "Parâmetro que chegou foi: #{ arg }"
  end
end

user('foo', 22, 'Birigui')

# métodos de classe
# métodos de classe não é método estático(instância um objeto para utilizar se do método)
# mas no ruby você consegue pegar um objeto de um classe sem instânciar

class People
  def user(name)
    p name
  end

  # maneira que você declara o objeto com self isso faz com que você não precise instânciar a class People
  def self.age(age)
    p age
  end

  # ou simplesmente adicionar o método de classe nela
  class << self
    def birthdate(date)
      p date
    end
  end
end

people = People.new
people.user('foo')

People.age(12)
People.age('04/06/1991')

# modulos empacotam os métodos

module Car
  # module_function permiti que estes métodos se tornem métodos acessíveis como métodos de classe
  module_function

  def model(model)
    p model
  end
end

Car.model('Honda')