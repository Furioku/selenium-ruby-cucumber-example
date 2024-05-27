# frozen_string_literal: true
input = "[{(()}]"
char_arr = input.split("")
a = 0
b = 0
c = 0
d = 0
e = 0
f = 0
for i in char_arr do
  if i == "["
    a = a+1
  end

  if i == "{"
    b = b+1
  end

  if i == "("
    c = c+1
  end

  if i == "]"
    d = d+1
  end

  if i == "}"
    e = e+1
  end

  if i == ")"
    f = f+1
  end
end
puts "#{a},#{b},#{c},#{d},#{e},#{f}"