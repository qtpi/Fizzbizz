#!/usr/bin/env ruby -w

=begin

(
  ( n % 3 == 0 && n % 5 == 0 ) ? # multiple of 5 and 3
  "FizzBuzz"
  : # not a multiple of both
  ( # open new block
    ( n % 5 == 0 ) ? # multiple of 5?
    "Buzz" # true
    : # otherwise
    (
      # open a new block
      ( n % 3 == 0 ) ? # multiple of 3?
      "Fizz" # true
      : # otherwise
      n # return n
    )
    # return n
  )
  # return n
)

=end

(1..100).each do |n|
  $stdout.puts n % 3 == 0 && n % 5 == 0 ? "FizzBuzz" : ( ( n % 5 == 0 ) ? "Buzz" : ( ( n % 3 == 0 ) ? "Fizz" : n
end

