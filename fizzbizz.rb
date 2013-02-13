f = ->(n) { (n % 3) == 0 ? [102, 105, 122, 122] : nil }
b = ->(n) { (n % 5) == 0 ? [98, 117, 122, 122] : nil }
s = ->(c) { c.kind_of?(Array) ? c.map(&:chr).join.to_s : c.to_s }
x = ->(n) { (f[n] and b[n]) ? f[n] + b[n] : (f[n] or b[n]) or n }

puts s[x[15]]
puts s[x[9]]
puts s[x[7]]
puts s[x[5]]
