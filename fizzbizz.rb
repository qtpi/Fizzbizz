f = ->(n) { (n % 3) == 0 ? [102, 105, 122, 122] : nil }
b = ->(n) { (n % 5) == 0 ? [98, 117, 122, 122] : nil }
x = ->(n) { (f[n] and b[n]) ? f[n] + b[n] : (f[n] or b[n]) or n }

(1..20).each do |n|
	p x[n]
end

#x[15].each do |c|
#  puts [c].pack('c')
#end

#(1..100).each do |n|
#  puts(( n % 15 ) == 0 ? "Fizzbuzz" : ( n % 5 ) == 0 ? "Buzz" : ( n % 3 ) == 0 ? "Fizz" : (n.to_s))
#end
