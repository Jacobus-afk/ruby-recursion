# frozen_string_literal: true

def fibs_rec(val)
  return val if val.zero? || val == 1

  fibs_rec(val - 1) + fibs_rec(val - 2)
end

def fibs(val)
  fib_arr = [0, 1]
  (0..val).each do |n|
    fib_arr << (fib_arr[n - 2] + fib_arr[n - 1]) if n > 1
  end
  fib_arr[val]
end

puts fibs_rec(6)
puts fibs(6)
