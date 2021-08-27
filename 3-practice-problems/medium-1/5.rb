# Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator.
# A user passes in two numbers, and the calculator will keep computing the
# sequence until some limit is reached.

# Ben coded up this implementation but complained that as soon as he ran it, he
# got an error. Something about the limit variable. What's wrong with the code?

limit = 15

def fib(first_num, second_num)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

# Limit is not initialized or defined within the method. I would move the
# initialization of limit inside the method definition or pass it as an argument
# to fib()
