class Animal
  def action
    p 'fazendo nada!'
  end

  # so pode ser chamado dentro de métodos da mesma instância
  private
  def which_class
    p self.class
  end

  # mesmo conceito do private so que pode ser chamdo em todas instâncias da classe
  protected
  def foo
    p 'sou definido como protegido'
  end
end

class Bird < Animal; end

class Dog < Animal
  def action
    p 'latindo'
  end
end

class Cat < Animal
  def initialize
    which_class
    foo
  end

  def action
    p 'miando'
  end
end

paquito = Bird.new.action
mimi = Cat.new.action
toto = Dog.new.action