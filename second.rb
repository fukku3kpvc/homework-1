str = 'user@profport.org;+888;info@profport.ru'
pattern = /\w+@/m
puts str.gsub(pattern, '')