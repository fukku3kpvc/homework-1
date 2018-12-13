def password_randomizer(len = 6)
  symbols = ['a'..'z', 'A'..'Z', 0..9].map { |range| range.to_a }.flatten
  puts((0..len - 1).map { symbols.sample }.shuffle.join)
end

print('Write password length or skip with Enter to default: ')
len = gets.to_i
if len.zero?
  password_randomizer
else
  password_randomizer(len)
end