# definindo um hash
misc_hash = {
  string: 'foo',
  number: 456,
  boolean: false,
  array: [0, 1, 2]
}

p misc_hash[:string]

# interando em um hash e imprimindo suas chaves
misc_hash.each_key { |key| p key }
# interando em um hash e imprimindo seus valores
misc_hash.each_value { |value| p value }