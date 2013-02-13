# fizzbizz.rb
# Author: Brandon <branditoway@gmail.com>
# ---

# to_str
s = ->(c) { c.kind_of?(Array) ? c.map(&:chr).join : c }
# fizz
f = ->(n) { (n % 3) == 0 ? [102, 105, 122, 122] : nil }
# buzz
b = ->(n) { (n % 5) == 0 ? [98, 117, 122, 122] : nil }
# fizzbizz
x = ->(n) { (f[n] and b[n]) ? f[n] + b[n] : (f[n] or b[n]) or n }
# main iteration
m = ->(m) {
  (iter = ->(max, n=1, list=[]) { n <= max ? iter[max, n + 1, list << s[x[n]]] : list })[m]
}

# call it
puts m[100]
