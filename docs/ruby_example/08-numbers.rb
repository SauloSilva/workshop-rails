# fixnum
number = 1000

3.times do |i|
  number *= number
  p "#{ number.class } => #{ number }"
end

# float
number = 3.1234
p "#{ number.class } => #{ number }"

# bigdecimal
require 'bigdecimal'
number = BigDecimal('3.1')
p "#{ number.class } => #{ number }"