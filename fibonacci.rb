# Using iteration
# takes a number and return that 
# an array of many numbers from fib
require 'pry-byebug'

def fibs(n)
  arr = []
  for i in 0..n - 1
    arr.push(i) if i < 2
    arr.push((arr[i - 1]) + (arr[i - 2])) if i >= 2
  end
  arr
end

p fibs(5)

HASH = {}
def fibs_rec(n)
  HASH[n] = n < 2 ? n : fibs_rec(n - 1) + fibs_rec(n - 2)
end

fibs_rec(5)
p HASH.sort_by { |k, v| k }.to_h.values