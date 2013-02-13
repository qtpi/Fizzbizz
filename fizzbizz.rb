def fizzy(iterations)
  f = ->(n) { (n % 3) == 0 ? "fizz" : nil }
  b = ->(n) { (n % 5) == 0 ? "buzz" : nil }
  x = ->(n) { (f[n] and b[n]) ? f[n] + b[n] : (f[n] or b[n]) or n }
end

fizzy(15)
fizzy(10)
fizzy(9)
fizzy(1)

#(1..100).each do |n|
#  puts(( n % 15 ) == 0 ? "Fizzbuzz" : ( n % 5 ) == 0 ? "Buzz" : ( n % 3 ) == 0 ? "Fizz" : (n.to_s))
#end
