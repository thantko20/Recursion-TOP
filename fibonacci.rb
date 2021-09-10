# Using iteration
# takes a number and return that 
# an array of many numbers from fib
def fibs(n)
  arr = []
  for i in 0..n - 1
    arr.push(i) if i < 2
    arr.push((arr[i - 1]) + (arr[i - 2])) if i >= 2
  end
  arr
end

p fibs(5)

def fibs_rec(n)
  #TODO
  n < 2 ? n : fibs(n-1) + fibs (n+1)
end

fibs_rec(5)