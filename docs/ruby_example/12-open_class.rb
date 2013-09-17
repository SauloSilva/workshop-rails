#!/bin/env ruby
# coding: utf-8

# podemos alterar métodos da classe mesmo depois de ser instânciada

class Animal
  def action
    p 'parado'
  end
end

animal = Animal.new
animal.action

class Animal
  def reopen
    p 'reabri a class e injetei um novo método'
  end
end

animal.reopen