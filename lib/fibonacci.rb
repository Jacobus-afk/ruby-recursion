# frozen_string_literal: true

def fibs_rec(val, rec_arr)
  # return val if val < 2

  rec_arr[val] = val < 2 ? val : fibs_rec(val - 1, rec_arr) + fibs_rec(val - 2, rec_arr)
end

def fibs(val)
  fib_arr = [0, 1]
  (0..val).each do |n|
    fib_arr << (fib_arr[n - 2] + fib_arr[n - 1]) if n > 1
  end
  fib_arr
end

rec_arr = []
fibs_rec(6, rec_arr)
print rec_arr
print fibs(6)
