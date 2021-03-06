# variável name que recebe uma string
name = 'foo'

# variável que tem string concatenando código de ruby
time = "Time: #{ Time.now }"
p "#{ time.class } => #{ time }"

# heredoc
heredoc = <<-text
  Fooo
  Baarr
text

p "#{ heredoc.class } => #{ heredoc }"

# consigo utilizar os operadores para manipular strings
foo = 'foo'
bar = 'bar'

foo << bar