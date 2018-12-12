def password_randomizer(len)
  symbols = ['a'..'z', 'A'..'Z', 0..9].map { |range| range.to_a }.flatten
  puts((0..len).map { symbols.sample }.shuffle.join)
end

print('Write password length or skip with Enter or 0 to default: ')
len = gets.to_i
if len == '' or len == 0
  password_randomizer(5)
else
  password_randomizer(len)
end