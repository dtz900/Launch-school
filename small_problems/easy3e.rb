# Using multiply method from the last problem, write a method that computes the square of its 
# argument (the square is the result of multiplying a number by itself)

def multiply(num1, num2)
  num1 * num2
end

def square(num)
  multiply(num, num)
end

def power(num, n)
  if n == 0
    1
  elsif n == 1
    num
  elsif n == 2
    multiply(num)
  elsif n > 2
    num ** n
  end
end

puts power(4, 8)