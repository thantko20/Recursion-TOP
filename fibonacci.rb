# Using iteration
# takes a number and return that 
# an array of many numbers from fib
require 'pry-byebug'

def fibs(n)
  arr = []
  for i in 0..n - 1
    i < 2 ? arr.push(i) : arr.push((arr[i - 1]) + (arr[i - 2]))
  end
  arr
end

p fibs(5)

ARR = []
def fibs_rec(n)
  #binding.pry
  return [0] if n.zero?
  return [0, 1] if n == 1

  array = fibs_rec(n - 1)
  array.push(array[-2] + array[-1])
end

p fibs_rec(5)
