#!/usr/bin/env ruby -w

(1..100).each do |n|
  STDOUT.puts(( n % 15 ) == 0 ? "Fizzbuzz" : ( n % 5 ) == 0 ? "Buzz" : ( n % 3 ) == 0 ? "Fizz" : (n.to_s))
end
